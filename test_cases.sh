#!/bin/sh

SIZE="800 800"
BIN=build/a2

${BIN} -size ${SIZE} -input data/scene01_plane.txt  -output test_out/a01.png -normals test_out/a01n.png -depth 8 18 test_out/a01d.png
${BIN} -size ${SIZE} -input data/scene02_cube.txt   -output test_out/a02.png -normals test_out/a02n.png -depth 8 18 test_out/a02d.png
${BIN} -size ${SIZE} -input data/scene03_sphere.txt -output test_out/a03.png -normals test_out/a03n.png -depth 8 18 test_out/a03d.png
${BIN} -size ${SIZE} -input data/scene04_axes.txt   -output test_out/a04.png -normals test_out/a04n.png -depth 8 18 test_out/a04d.png
${BIN} -size ${SIZE} -input data/scene05_bunny_200.txt -output test_out/a05.png -normals test_out/a05n.png -depth 0.8 1.0 test_out/a05d.png
${BIN} -size ${SIZE} -input data/scene06_bunny_1k.txt -bounces 4 -output test_out/a06.png -normals test_out/a06n.png -depth 8 18 test_out/a06d.png
${BIN} -size ${SIZE} -input data/scene07_arch.txt -bounces 4 -shadows -output test_out/a07.png -normals test_out/a07n.png -depth 8 18 test_out/a07d.png