#include "surf.h"
#include "vertexrecorder.h"
using namespace std;

const float c_pi = 3.14159265358979323846f;

namespace
{

    // We're only implenting swept surfaces where the profile curve is
    // flat on the xy-plane.  This is a check function.
    static bool checkFlat(const Curve &profile)
    {
        for (unsigned i = 0; i < profile.size(); i++)
            if (profile[i].V[2] != 0.0 ||
                profile[i].T[2] != 0.0 ||
                profile[i].N[2] != 0.0)
                return false;

        return true;
    }
}

// DEBUG HELPER
Surface quad()
{
    Surface ret;
    ret.VV.push_back(Vector3f(-1, -1, 0));
    ret.VV.push_back(Vector3f(+1, -1, 0));
    ret.VV.push_back(Vector3f(+1, +1, 0));
    ret.VV.push_back(Vector3f(-1, +1, 0));

    ret.VN.push_back(Vector3f(0, 0, 1));
    ret.VN.push_back(Vector3f(0, 0, 1));
    ret.VN.push_back(Vector3f(0, 0, 1));
    ret.VN.push_back(Vector3f(0, 0, 1));

    ret.VF.push_back(Tup3u(0, 1, 2));
    ret.VF.push_back(Tup3u(0, 2, 3));
    return ret;
}

void addTriangle(Surface &surface, const int &n)
{
    int k = 0;
    int m = surface.VV.size();
    while (k < m)
    {
        if ((k + 1) % n != 0)
        {
            surface.VF.push_back(Tup3u(k, k + 1, (k + n) % m));
            surface.VF.push_back(Tup3u((k + n) % m, k + 1, (k + n + 1) % m));
        }
        k++;
    }
}

Surface makeSurfRev(const Curve &profile, unsigned steps)
{
    Surface surface;
    // surface = quad();

    if (!checkFlat(profile))
    {
        cerr << "surfRev profile curve must be flat on xy plane." << endl;
        exit(0);
    }

    // TODO: Here you should build the surface.  See surf.h for details.

    // cerr << "\t>>> makeSurfRev called (but not implemented).\n\t>>> Returning empty surface." << endl;
    int n = profile.size();
    for (int i = 0; i < steps; i++)
    {
        float t = 2.0f * c_pi * float(i) / steps;
        float ct = cos(t);
        float st = sin(t);
        for (int j = 0; j < n; j++)
        {
            surface.VV.push_back(Vector3f(ct * profile[j].V[0] + st * profile[j].V[2], profile[j].V[1], -st * profile[j].V[0] + ct * profile[j].V[2]));
            surface.VN.push_back(Vector3f(-ct * profile[j].N[0] - st * profile[j].N[2], -profile[j].N[1], st * profile[j].N[0] - ct * profile[j].N[2]));
        }
    }
    addTriangle(surface, n);
    return surface;
}

Surface makeGenCyl(const Curve &profile, const Curve &sweep)
{
    Surface surface;
    // surface = quad();

    if (!checkFlat(profile))
    {
        cerr << "genCyl profile curve must be flat on xy plane." << endl;
        exit(0);
    }

    // TODO: Here you should build the surface.  See surf.h for details.

    // cerr << "\t>>> makeGenCyl called (but not implemented).\n\t>>> Returning empty surface." << endl;

    int n = profile.size();
    for (int i = 0; i < sweep.size(); i++)
    {
        Matrix4f nbtv_mat(Vector4f(sweep[i].N, 0), Vector4f(sweep[i].B, 0), Vector4f(sweep[i].T, 0), Vector4f(sweep[i].V, 1));
        Matrix3f nbt_mat = nbtv_mat.getSubmatrix3x3(0, 0);
        for (int j = 0; j < n; j++)
        {

            surface.VV.push_back((nbtv_mat * Vector4f(profile[j].V, 1)).xyz());
            surface.VN.push_back(-1 * mat * profile[j].N);
        }
    }
    addTriangle(surface, n);
    return surface;
}

void recordSurface(const Surface &surface, VertexRecorder *recorder)
{
    const Vector3f WIRECOLOR(0.4f, 0.4f, 0.4f);
    for (int i = 0; i < (int)surface.VF.size(); i++)
    {
        recorder->record(surface.VV[surface.VF[i][0]], surface.VN[surface.VF[i][0]], WIRECOLOR);
        recorder->record(surface.VV[surface.VF[i][1]], surface.VN[surface.VF[i][1]], WIRECOLOR);
        recorder->record(surface.VV[surface.VF[i][2]], surface.VN[surface.VF[i][2]], WIRECOLOR);
    }
}

void recordNormals(const Surface &surface, VertexRecorder *recorder, float len)
{
    const Vector3f NORMALCOLOR(0, 1, 1);
    for (int i = 0; i < (int)surface.VV.size(); i++)
    {
        recorder->record_poscolor(surface.VV[i], NORMALCOLOR);
        recorder->record_poscolor(surface.VV[i] + surface.VN[i] * len, NORMALCOLOR);
    }
}

void outputObjFile(ostream &out, const Surface &surface)
{

    for (int i = 0; i < (int)surface.VV.size(); i++)
        out << "v  "
            << surface.VV[i][0] << " "
            << surface.VV[i][1] << " "
            << surface.VV[i][2] << endl;

    for (int i = 0; i < (int)surface.VN.size(); i++)
        out << "vn "
            << surface.VN[i][0] << " "
            << surface.VN[i][1] << " "
            << surface.VN[i][2] << endl;

    out << "vt  0 0 0" << endl;

    for (int i = 0; i < (int)surface.VF.size(); i++)
    {
        out << "f  ";
        for (unsigned j = 0; j < 3; j++)
        {
            unsigned a = surface.VF[i][j] + 1;
            out << a << "/"
                << "1"
                << "/" << a << " ";
        }
        out << endl;
    }
}
