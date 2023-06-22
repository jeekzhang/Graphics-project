# Graphics-project
Computer Graphics Course (COMP130018.01, 2023 Spring) Project of Fudan University.  
复旦大学2023年春《计算机图形学》课程项目
A copy of MIT 6.837, including Curves-surfaces(assn1) and Ray-casting-tracing(assn4, assn5).
## Project1--曲线和曲面造型技术
分支切换

```bash
git checkout Curves-surfaces
```

环境搭建（linux）

```bash
sudo apt-get install build-essential cmake
sudo apt-get install freeglut3-dev xorg-dev libxrandr-dev libsdl2-de
```
编译运行
```bash
mkdir build
cd build
cmake ..
```
```bash
make
cd ..
build/a1 ./swp/circles.swp
```
样例结果查看
```bash
chmod a+x sample_solution/athena/a1
sample_solution/athena/a1 swp/core.swp
```
### Part1--曲线的绘制
测试：
```bash
build/a1 ./swp/core.swp
```

### Part2--曲面的绘制
测试：
```bash
build/a1 ./swp/wineglass.swp
```
```bash
build/a1 ./swp/weird.swp
```
### Expansion--曲面的闭合问题
测试：
```bash
build/a1 ./swp/weirder.swp
```


## Project--2 光照模型与光线追踪

分支切换

```bash
git checkout Ray-casting-tracing
```

环境搭建（linux）

```bash
sudo apt-get install build-essential cmake
sudo apt-get install freeglut3-dev xorg-dev libxrandr-dev libsdl2-de
```
编译运行
```bash
mkdir build
cd build
cmake ..
```
```bash
make
cd ..
//结果图片将保存到`test_out`文件夹下
build/a2 -input data/scene01_plane.txt -output test_out/01.png -size 200 200
```
样例结果查看（结果图片将保存到`sample_out`文件夹下）
```bash
chmod u+x sample_solution/athena/a2
sample_solution/athena/a2 -input data/scene01_plane.txt -output sample_out/01.png -size 200 200
sample_solution/athena/a2 -input data/scene06_bunny_1k.txt -output sample_out/06.png -size 300 300 -bounces 4
sample_solution/athena/a2 -input data/scene07_arch.txt -output sample_out/07.png -size 300 300 -shadows -bounces 4
```
批量生成图片并测试

```bash
chmod +x generate_images.sh
./generate_images.sh
```

```bash
chmod +x test_cases.sh
./test_cases.sh
```



### Part1--Phong光照模型

测试：
```bash
build/a2 -size 800 800 -input data/scene01_plane.txt  -output test_out/a01.png -normals test_out/a01n.png -depth 8 18 test_out/a01d.png
```

### Part2--光线投射
测试：
```bash
build/a2 -size 800 800 -input data/scene01_plane.txt  -output test_out/b01.png -normals test_out/b01n.png -depth 8 18 test_out/b01d.png
```
```bash
build/a2 -size 800 800 -input data/scene02_cube.txt   -output test_out/a02.png -normals test_out/a02n.png -depth 8 18 test_out/a02d.png
```
```bash
build/a2 -size 800 800 -input data/scene03_sphere.txt -output test_out/a03.png -normals test_out/a03n.png -depth 8 18 test_out/a03d.png
build/a2 -size 800 800 -input data/scene04_axes.txt   -output test_out/a04.png -normals test_out/a04n.png -depth 8 18 test_out/a04d.png
build/a2 -size 800 800 -input data/scene05_bunny_200.txt -output test_out/a05.png -normals test_out/a05n.png -depth 0.8 1.0 test_out/a05d.png
```
###  Part3--光线追踪与阴影投射
```bash
build/a2 -size 800 800 -input data/scene02_cube.txt   -output test_out/b02.png -normals test_out/b02n.png -depth 8 18 test_out/b02d.png
build/a2 -size 800 800 -input data/scene05_bunny_200.txt -output test_out/b05.png -normals test_out/b05n.png -depth 0.8 1.0 test_out/b05d.png
```
```bash
build/a2 -size 800 800 -input data/scene06_bunny_1k.txt -bounces 4 -output test_out/a06.png -normals test_out/a06n.png -depth 8 18 test_out/a06d.png
build/a2 -size 800 800 -input data/scene07_arch.txt -bounces 4 -shadows -output test_out/a07.png -normals test_out/a07n.png -depth 8 18 test_out/a07d.png
```


### Expansion-- 抗锯齿的问题

测试：
```bash
build/a2 -size 200 200 -input data/scene01_plane.txt  -output test_out/c01.png -normals test_out/c01n.png -depth 8 18 test_out/c01d.png -jitter -filter
```



——具体内容详见各分支的README中的实验报告部分
