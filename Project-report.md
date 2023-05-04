<font face="宋体">

&nbsp;
**<font size=12><p align="center">计算机图形学项目报告</p></font>**
&nbsp;
<font size=6><p align="center">Project2 【光照模型与光线追踪】 </p></font>
&nbsp;&nbsp;
&nbsp;&nbsp;

<div align=center><img width = '200' height ='200' src ="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.huawenku.cn%2Fuploads%2F150601%2Fxiaohui.jpg&refer=http%3A%2F%2Fwww.huawenku.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617160664&t=761914188dd5b3da1e91e3a495453919"/></div>

&nbsp;&nbsp;&nbsp;&nbsp;
<font size=5>

&nbsp;
<center>
学生姓名：<u>叶兴松</u> 
    &nbsp&nbsp
学生姓名：<u>秦铮</u> 
</center>

&nbsp;
<center>
学&ensp;号：<u>20307130227</u> &ensp;
学&ensp;号：<u>20307130169</u> &ensp;
</center>

&nbsp;
<center>
专&ensp;业：<u>计算机科学与技术</u> &ensp;
专&ensp;业：<u>计算机科学与技术</u> &ensp;
</center>

&nbsp;
<center>
日&ensp;&ensp;期：<u>2023/05/xx</u>
</center>



</font>

<div STYLE="page-break-after: always;"></div>

## 一、Phong光照模型：

#### 实现PointLight::getIllumination()

参照`DirectionalLight::getIllumination`的实现，可知需要为三个值赋值，即tolight、intensity、distToLight，这三个值的具体含义分别是：

- tolight：从场景中一个点（着色点）指向到光源的单位方向矢量
- intensity：照明强度（RGB）
- distToLight：着色点与光源之间的距离

在`PointLight::getIllumination`的实现中，`_position`为点光源，`p`为着色点，`_color`是光源的颜色，`_falloff`是光强衰减因子。

`tolight`则是由`p`指向`_position`的单位方向矢量。

```c++
tolight = (_position - p).normalized();
```

`distToLight`则是`p`到`_position`的距离。

```c++
distToLight = (_position - p).abs();
```

`intensity`用公式表示为：$L=\frac{I}{\alpha d^2}$（$I$为`_color`，$\alpha$为`_falloff`，$d$为`distToLight`）。

```C++
intensity = _color / (distToLight * distToLight * _falloff);
```



#### 实现Material::shade()

即是分别实现漫反射（diffuse）和镜面反射（specular）着色器，再将二者求和。

Phong光照模型的示意图如下：

<div align=left><img width = '400' height ='200' src ="./img/Phong.png"/></div>

各个方向表示的含义：

- N是hit处切表面的法线方向
- E是指向相机的方向
- L是指向光源的方向
- R是E关于N的对称方向，也叫完美反射矢量

计算漫反射阴影的公式表达为：

$ clamp(L,N)=Max(0\ ,\  L\cdot N)$

结合漫反射材料的反射率$k_{diffuse}$和光强Li​，漫反射的光照强度为：

$I_{diffuse} = clamp(L,N)*Li*k_{diffuse})$

在代码中，`dirToLight`对应着L，N则由`hit.getNormal()`获得，Li是`lightIntensity`，$k_{diffuse}$是`_diffuseColor`。

漫反射的代码计算如下：

```C++
float clamp_LN = std::max(0.0f , Vector3f::dot(dirToLight, hit.getNormal()));
Vector3f diffuse = clamp_LN * lightIntensity * _diffuseColor;
```



接着实现镜面反射着色器，如Phong光照模型的示意图所示

结合镜面反射材料的反射率$k_{specular}$和光强Li以及光泽度s，漫反射的光照强度为镜面反射项的公式可表示为：

$I_{specular} = clamp(L,R)^s*Li*k_{specular})$

在代码中，`ray.getDirection()`对应着E的反方向，即-E，$k_{specular}$是`_specularColor`，s是`_shininess`。

R未直接给出，需要计算得到

如上示意图，E和R关于N对称，且均为单位矢量。则E和R的和矢量与N重合，长度为E和R分别在N上的投影之和（2倍E在N上投影）。故可得R的公式：$ R=(2*E\cdot N)*N-E$

镜面反射的代码计算如下：

```c++
float clamp_LR = std::max(0.0f, Vector3f::dot(dirToLight, 2.0 * Vector3f::dot(-ray.getDirection(), hit.getNormal()) * hit.getNormal() + ray.getDirection()));
Vector3f specular = pow(clamp_LR, _shininess) * lightIntensity * _specularColor;
```

最后，`shade`函数返回$I_{diffuse}+I_{specular}$即可。



#### 完成Phong光照模型的计算

Phong光照模型的计算由环境光与各个光源的漫反射和镜面反射（即`shade`返回值）求和可得，公式表示为：

$I=I_{ambient}+\sum I_{shade}$

在代码中，原始`traceRay`函数先判断相交，若相交则直接返回了材质的漫反射颜色。

为实现上述公式，$I_{ambient}$由`_scene.getAmbientLight()`得到；同时遍历`_scene.lights`并通过`shade`获取各个各个光源的漫反射和镜面反射之和，所需的参数值由`getIllumination`计算得到。

具体的代码实现：

```c++
Vector3f color(0, 0, 0);
for (int i = 0; i < _scene.lights.size(); i++)
        {
            Vector3f dirToLight;
            Vector3f lightIntensity;
            float distToLight;
            _scene.lights[i]->getIllumination(r.pointAtParameter(h.getT()), dirToLight, lightIntensity, distToLight);
            color += h.getMaterial()->shade(r, h, dirToLight, lightIntensity);
        }
color += _scene.getAmbientLight();
return color;
```



#### 效果展示

<div style="display:flex;">
  <img src="test_out/a01.png" style="width:33%;">
  <img src="test_out/a01d.png" style="width:33%;">
  <img src="test_out/a01n.png" style="width:33%;">
</div>



## 二、光线投射：

#### 理解Sphere::intersect

这个抽象为数学问题就是，已知球的球心和半径、投射点的位置和方向，求该点与球是否有交点，若有则求沿光线
相交范围内的最近交点。

以球心为原点O（0，0，0），设投射点为P（x，y，z）、投射方向为N（i，j，k）。

则交点的参数化表达可为P+tN=（x+it，y+jt，z+kt），且在球上，其坐标满足方程：$x^2+y^2+z^2=R^2$

联立可得关于t一元二次方程$ax^2+bx+c=0$。

其中，$a=N^2,\ b=2*N\cdot P,\  c=P^2-R^2$

再利用求根公式得出无解或具体解，取满足相交范围（>tmin）的最小t值作为解。

最后返回hit的所需参数分别是t，材质和球心指向交点的方向。

## 三、光线追踪与阴影投射：

#### 光线追踪
光线追踪需要完成的任务是在光线投射以后，递归地调用traceRay()函数，渲染出光线多次反射后的结果。具体实现中，我们可以将当前光线击中的物体表面的点作为反射光的光源，根据向量推导计算出反射光线的方向，以这些数据递归进入traceRay()函数就可以完成一次光线反射追踪。我们根据参数bounces进行一定次数的递归，将每次taceRay()返回的颜色参数乘以镜面材料反射率，叠加到当前的颜色中，即可完成所有的光线追踪。关键代码如下：
``` c++
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
```
这里需要注意的是，在反射光源设定的时候需要好将其稍微远离物体表面，这里是做了$ + 0.01 * R$ 的操作，这样做的目的是为了减小表面噪声的干扰，从而达到更好的渲染效果。
#### 光线追踪效果展示
<div style="display:flex;">
  <img src="test_out/a06.png" style="width:33%;">
  <img src="test_out/a06d.png" style="width:33%;">
  <img src="test_out/a06n.png" style="width:33%;">
</div>

#### 阴影投射
阴影投射的实现同样需要调用traceRay()函数，将光线击中的物体表面的点作为阴影光源，原来光线的方向就是阴影光线的方向。调用traceRay()函数即可获得阴影光线击中的点。对于这些点要进行是否与物体相交以及相交区域是否小于当前光线照亮区域的判断，如果满足则跳过后续由当前光线造成的颜色的叠加。关键代码如下：
``` c++
        if (_args.shadows)
            {
                // 以光打到的点作为光源，计算阴影覆盖的区域
                Vector3f shadowRayOrigin = r.pointAtParameter(h.getT()) + 0.01 * dirToLight;
                Ray shadowRay(shadowRayOrigin, dirToLight);
                Hit shadowHit = Hit();
                Vector3f shadowTrace = traceRay(shadowRay, 0.0f, 0, shadowHit);
                // 阴影是否与物体相交
                bool is_shadowIntersectedSth = shadowHit.getT() < std::numeric_limits<float>::max();
                // 阴影与该物体相交的区域
                float distToIntersection = (shadowRay.pointAtParameter(shadowHit.getT()) - shadowRayOrigin).abs();
                // 如果光线被遮挡则直接跳过，不进行颜色的叠加
                if (is_shadowIntersectedSth && distToIntersection < distToLight)
                    continue;
            }

            color += h.getMaterial()->shade(r, h, dirToLight, lightIntensity);
```
根据PPT中的提示，和光线追踪一样，要让阴影光源稍微远离物体表面，这样渲染效果会更好，这里的远离操作和光线追踪时的实现一样。
#### 阴影投射效果展示
<div style="display:flex;">
  <img src="test_out/a07.png" style="width:33%;">
  <img src="test_out/a07d.png" style="width:33%;">
  <img src="test_out/a07n.png" style="width:33%;">
</div>

## 四、抗锯齿的问题



## 参考





</font>

