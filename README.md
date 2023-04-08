# Graphics-project
Computer Graphics Course (COMP130018.01) Project of Fudan University.

## Project1--曲线和曲面造型技术
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
```bash
build/a1 ./swp/weirder.swp
```
