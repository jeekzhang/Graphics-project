#!/bin/sh

SIZE="800 800"
BIN=build/a2

${BIN} -size ${SIZE} -input data/scene01_plane.txt  -output result_out/01.png -normals result_out/01n.png -depth 8 18 result_out/01d.png
${BIN} -size ${SIZE} -input data/scene02_cube.txt   -output result_out/02.png -normals result_out/02n.png -depth 8 18 result_out/02d.png
${BIN} -size ${SIZE} -input data/scene03_sphere.txt -output result_out/03.png -normals result_out/03n.png -depth 8 18 result_out/03d.png
${BIN} -size ${SIZE} -input data/scene04_axes.txt   -output result_out/04.png -normals result_out/04n.png -depth 8 18 result_out/04d.png
${BIN} -size ${SIZE} -input data/scene05_bunny_200.txt -output result_out/05.png -normals result_out/05n.png -depth 0.8 1.0 result_out/05d.png
${BIN} -size ${SIZE} -input data/scene06_bunny_1k.txt -bounces 4 -output result_out/06.png -normals result_out/06n.png -depth 8 18 result_out/06d.png
${BIN} -size ${SIZE} -input data/scene07_arch.txt -bounces 4 -shadows -output result_out/07.png -normals result_out/07n.png -depth 8 18 result_out/07d.png
