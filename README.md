# Graphics-project
Computer Graphics Course (COMP130018.01) Project of Fudan University.

## Project--2 光照模型与光线追踪

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



### Expansion-- 抗锯齿的问题

测试：
```bash

```
