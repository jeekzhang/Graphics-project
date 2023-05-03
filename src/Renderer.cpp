#include "Renderer.h"

#include "ArgParser.h"
#include "Camera.h"
#include "Image.h"
#include "Ray.h"
#include "VecUtils.h"

#include <limits>
#include <time.h>

Renderer::Renderer(const ArgParser &args) :
    _args(args),
    _scene(args.input_file)
{
}

void
Renderer::Render()
{
    int k = 1;
    if (_args.filter)
        k = 3;
    
    int w = _args.width;
    int h = _args.height;

    Image image(w, h);
    Image nimage(w, h);
    Image dimage(w, h);

    w *= k;
    h *= k;
    Image kimage(w, h);
    Image knimage(w, h);
    Image kdimage(w, h);

    // loop through all the pixels in the image
    // generate all the samples

    // This look generates camera rays and callse traceRay.
    // It also write to the color, normal, and depth images.
    // You should understand what this code does.
    Camera* cam = _scene.getCamera();
    float h_base = 2 / (h - 1.0f);
    float w_base = 2 / (w - 1.0f);
    for (int y = 0; y < h; ++y)
    {
        float ndcy = y * h_base - 1.0f;
        for (int x = 0; x < w; ++x)
        {
            float ndcx = x * w_base - 1.0f;
            // Use PerspectiveCamera to generate a ray.
            // You should understand what generateRay() does.

                srand(time(NULL));
                double random_x = (double)rand() / RAND_MAX;
                double random_y = (double)rand() / RAND_MAX;
                if (!_args.jitter)
                    random_x = random_y = 0.0;
                random_x = ndcx + random_x * w_base;
                random_y = ndcy + random_y * h_base;

                Ray r = cam->generateRay(Vector2f(random_x, random_y));

                Hit h;
                Vector3f color = traceRay(r, cam->getTMin(), _args.bounces, h);

                kimage.setPixel(x, y, color);
                knimage.setPixel(x, y, (h.getNormal() + 1.0f) / 2.0f);
                float range = (_args.depth_max - _args.depth_min);
                if (range)
                {
                    kdimage.setPixel(x, y, Vector3f((h.t - _args.depth_min) / range));
                }
            
        }
    }
    //只处理样例k=3的情况即可
    if (k == 3)
        for (int y = 0; y < h / k; ++y)
            for (int x = 0; x < w / k; ++x)
            {
                {
                    int center_x = x * k + 1;
                    int center_y = y * k + 1;
                    Vector3f color(0, 0, 0);
                    Vector3f normal(0, 0, 0);
                    Vector3f depth(0, 0, 0);
                    for (int i = -1; i <= 1; i++)
                        for (int j = -1; j <= 1; j++)
                        {
                            if (abs(i) + abs(j) == 2)
                            {
                                color += kimage.getPixel(center_x + i, center_y + j) / 16;
                                normal += knimage.getPixel(center_x + i, center_y + j) / 16;
                                depth += kdimage.getPixel(center_x + i, center_y + j) / 16;
                            }

                            if (abs(i) + abs(j) == 1)
                            {
                                color += kimage.getPixel(center_x + i, center_y + j) / 8;
                                normal += knimage.getPixel(center_x + i, center_y + j) / 8;
                                depth += kdimage.getPixel(center_x + i, center_y + j) / 8;
                            }
                            else
                            {
                                color += kimage.getPixel(center_x + i, center_y + j) / 4;
                                normal += knimage.getPixel(center_x + i, center_y + j) / 4;
                                depth += kdimage.getPixel(center_x + i, center_y + j) / 4;
                            }
                        }
                        image.setPixel(x,y,color);
                        nimage.setPixel(x,y,normal.normalized());
                        dimage.setPixel(x,y,depth);
                }
            }
    else if (k == 1)
    {
        image = kimage;
        dimage = kdimage;
        nimage = knimage;
    }
    // END SOLN

    // save the files 
    if (_args.output_file.size()) {
        image.savePNG(_args.output_file);
    }
    if (_args.depth_file.size()) {
        dimage.savePNG(_args.depth_file);
    }
    if (_args.normals_file.size()) {
        nimage.savePNG(_args.normals_file);
    }
}



Vector3f
Renderer::traceRay(const Ray &r,
    float tmin,
    int bounces,
    Hit &h) const
{
    // The starter code only implements basic drawing of sphere primitives.
    // You will implement phong shading, recursive ray tracing, and shadow rays.

    // TODO: IMPLEMENT 
    if (_scene.getGroup()->intersect(r, tmin, h)) {
        // return h.getMaterial()->getDiffuseColor();
        Vector3f color(0, 0, 0);
        color = _scene.getAmbientLight() * h.getMaterial()->getDiffuseColor();
        for (int i = 0; i < _scene.lights.size(); i++)
        {
            
            Vector3f dirToLight;
            Vector3f lightIntensity;
            float distToLight;
            _scene.lights[i]->getIllumination(r.pointAtParameter(h.getT()), dirToLight, lightIntensity, distToLight);

            // 生成阴影
            if (_args.shadows)
            {
                // 以光打到的点作为光源，计算阴影覆盖的区域
                Vector3f shadowRayOrigin = r.pointAtParameter(h.getT()) + 0.01 * dirToLight;
                Ray shadowRay(shadowRayOrigin, dirToLight);
                Hit shadowHit = Hit();
                Vector3f shadowTrace = traceRay(shadowRay, 0.0f, 0.0f, shadowHit);
                // 阴影是否与物体相交
                bool is_shadowIntersectedSth = shadowHit.getT() < std::numeric_limits<float>::max();
                // 阴影与该物体相交的区域
                float distToIntersection = (shadowRay.pointAtParameter(shadowHit.getT()) - shadowRayOrigin).abs();
                // 如果光线被遮挡则直接跳过，不进行颜色的叠加
                if (is_shadowIntersectedSth && distToIntersection < distToLight)
                    continue;
            }

            color += h.getMaterial()->shade(r, h, dirToLight, lightIntensity);
        }

        // 递归调用traceRay()
        if (bounces > 0)
        {
            Vector3f V = r.getDirection();
            Vector3f N = h.getNormal().normalized();
            Vector3f R = (V - (2 * Vector3f::dot(V, N) * N)).normalized();
            Hit reflectHit = Hit();
            // 避免噪声
            Ray reflectRay(r.pointAtParameter(h.getT()) + 0.01 * R, R);
            color += (h.getMaterial()->getSpecularColor()) * traceRay(reflectRay, 0.0f, bounces - 1, reflectHit);
        }

        return color;
    } else {
        return _scene.getBackgroundColor(r.getDirection());
    };
}

