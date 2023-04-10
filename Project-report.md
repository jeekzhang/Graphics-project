<font face="宋体">

&nbsp;
**<font size=12><p align="center">计算机图形学项目报告</p></font>**
&nbsp;
<font size=6><p align="center">Project1 【曲线和曲面造型技术】 </p></font>
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
日&ensp;&ensp;期：<u>2023/04/xx</u>
</center>

</font>

<div STYLE="page-break-after: always;"></div>

<font size=5>一、曲线的绘制：</font>

<font size=5>二、曲面的绘制：</font>

### makeSurfRev()函数实现：
该函数需要实现旋转表面的生成。具体功能是根据传参所给的在xy平面中的曲线，生成该曲线绕y轴旋转一周得到的曲面。  
首先，根据profile中的纵断面上的控制点，我们通过均匀采样的旋转值复制这些控制点，从而生成整个曲面上的控制点。在复制控制点的同时，还要复制生成法向量，法向量的变换矩阵应当是控制点变换矩阵的逆的转置，根据计算，这里的变换矩阵是正交阵，满足逆的转置是它本身；同时，需要注意的是，法向量的方向决定了最终图像中的抛光面，这里需要取负值使得最终生成曲面的抛光面在外侧。
``` c++
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
```
在上述均匀添加控制点之后，需要再复制一遍前n个控制点和法向量，这是为了保证最后绘制出来的曲面是闭合的。
``` c++
    for (int j = 0; j < n; j++)
        {
            surface.VV.push_back(surface.VV[j]);
            surface.VN.push_back(surface.VN[j]);
        }
```
最后，需要根据这些控制点生成三角形面。在具体实现的过程中，我们定义了addTriangle()函数，方便后续函数复用。在该函数中，按照顺序遍历除最后一组重复的控制点，获得三角形顶点的编号组。至此，获得生成平面所需要的控制点，法向量和三角面。
``` c++
void addTriangle(Surface &surface, const int &n)
{
    int k = 0;
    int m = surface.VV.size();
    while (k < m - n)
    {
        if ((k + 1) % n != 0)
        {
            surface.VF.push_back(Tup3u(k, k + 1, k + n));
            surface.VF.push_back(Tup3u(k + n, k + 1, k + n + 1));
        }
        k++;
    }
}
```
### 旋转曲面生成效果展示：

norm:  
<div align=center><img width = '400' height ='400' src ="./img/norm.jpg"/></div>

wineglass:  
<div align=center><img width = '400' height ='400' src ="./img/wineglass.jpg"/></div>

### makeGenCyl()函数实现：
该函数需要实现广义圆柱体的生成。和旋转平面生成不同的是，广义圆柱体的生成是由profile中定义的曲线围绕sweep定义的曲线扫掠而成。和旋转平面生成的逻辑一样，需要生成控制点、法向量和三角面。控制点的生成需要遍历扫掠曲线中的控制点，根据这些控制点的NBTV向量进行矩阵变换生成广义圆柱体的控制点；法向量的生成和控制点类似，但是需要取负控制抛光面在外侧。
``` c++
    for (int i = 0; i < m - flag; i++)
        {

            Matrix4f nbtv_mat(Vector4f(sweep[i].N, 0), Vector4f(sweep[i].B, 0), Vector4f(sweep[i].T, 0), Vector4f(sweep[i].V, 1));
            Matrix3f nbt_mat = nbtv_mat.getSubmatrix3x3(0, 0);

            for (int j = 0; j < n; j++)
            {

                surface.VV.push_back((nbtv_mat * Vector4f(profile[j].V, 1)).xyz());
                surface.VN.push_back(-1 * nbt_mat * profile[j].N);
            }
        }
```
最后是三角面的生成，这里直接复用上述的addTriangle()函数即可。

### 广义圆柱体生成效果展示：

tor:
<div align=center><img width = '400' height ='400' src ="./img/tor.jpg"/></div>

flircle:
<div align=center><img width = '400' height ='400' src ="./img/flircle.jpg"/></div>

florus:
<div align=center><img width = '400' height ='400' src ="./img/florus.jpg"/></div>

gentorus:
<div align=center><img width = '400' height ='400' src ="./img/gentorus.jpg"/></div>

weird:
<div align=center><img width = '400' height ='400' src ="./img/weird.jpg"/></div>

<font size=5>三、解决闭合问题：</font>



</font>