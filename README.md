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
sample_solution/athena/a2 data/scene07_arch.txt -output sample_out/07.png -size 300 300 -shadows -bounces 4
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
build/a1 ./swp/core.swp
```

### Part2--光线投射
测试：
```bash
build/a1 ./swp/wineglass.swp
```
```bash
build/a1 ./swp/weird.swp
```
###  Part3--光线追踪与阴影投射



### Expansion-- 抗锯齿的问题

测试：
```bash
build/a1 ./swp/weirder.swp
```
