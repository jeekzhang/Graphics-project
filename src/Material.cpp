#include "Material.h"
#include <math.h>
Vector3f Material::shade(const Ray &ray,
    const Hit &hit,
    const Vector3f &dirToLight,
    const Vector3f &lightIntensity)
{
    // TODO implement Diffuse and Specular phong terms
    //这里各向量与图中的对应我还不好说，我估计dirToLight是L，ray.getDirection()是-E
    float clamp_LN = Vector3f::dot(dirToLight.normalized(), hit.getNormal());
    if (clamp_LN < 0)
        clamp_LN = 0;
    Vector3f diffuse = clamp_LN * lightIntensity * _diffuseColor;

    float clamp_LR = cos(acos(Vector3f::dot(ray.getDirection(), hit.getNormal().normalized())) - 2 * asin(Vector3f::dot(-ray.getDirection(), hit.getNormal().normalized()))) * hit.getNormal().abs();
    if (clamp_LR < 0)
        clamp_LR = 0;
    Vector3f specular = pow(clamp_LR, _shininess) * lightIntensity * _specularColor;
    return diffuse+specular;
}
