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

#### 

图片样例：

<div align=center><img width = '800' height ='400' src ="./img/bsp.jpg"/></div>

$$
左图为代码生成，右图为样例生成，上曲线未闭合，下曲线闭合
$$



## 二、光线投射：



## 三、光线追踪与阴影投射：
### 光线追踪
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
### 光线追踪效果展示
<div align=center><img width = '800' height ='400' src ="./test_out/a06.png"/></div>

### 阴影投射
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
### 阴影投射效果展示
<div align=center><img width = '800' height ='400' src ="./test_out/a07.png"/></div>

## 四、抗锯齿的问题



## 参考





</font>

