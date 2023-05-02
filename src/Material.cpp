#include "Material.h"
#include <math.h>
Vector3f Material::shade(const Ray &ray,
    const Hit &hit,
    const Vector3f &dirToLight,
    const Vector3f &lightIntensity)
{
    // TODO implement Diffuse and Specular phong terms
    //dirToLight是L，ray.getDirection()是-E
    float clamp_LN = Vector3f::dot(dirToLight, hit.getNormal());
    if (clamp_LN < 0)
        clamp_LN = 0;
    Vector3f diffuse = clamp_LN * lightIntensity * _diffuseColor;

    float clamp_LR = Vector3f::dot(dirToLight, 2.0 * Vector3f::dot(-ray.getDirection(), hit.getNormal()) * hit.getNormal() + ray.getDirection());
    if (clamp_LR < 0)
        clamp_LR = 0;
    Vector3f specular = pow(clamp_LR, _shininess) * lightIntensity * _specularColor;
    return diffuse + specular;
}
