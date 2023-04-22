# This is the script we will test your submission with.

SIZE="800 800"
BIN="sample_solution/athena/a2"

${BIN} -size ${SIZE} -input data/scene01_plane.txt  -output sample_out/a01.png -normals sample_out/a01n.png -depth 8 18 sample_out/a01d.png
${BIN} -size ${SIZE} -input data/scene02_cube.txt   -output sample_out/a02.png -normals sample_out/a02n.png -depth 8 18 sample_out/a02d.png
${BIN} -size ${SIZE} -input data/scene03_sphere.txt -output sample_out/a03.png -normals sample_out/a03n.png -depth 8 18 sample_out/a03d.png
${BIN} -size ${SIZE} -input data/scene04_axes.txt   -output sample_out/a04.png -normals sample_out/a04n.png -depth 8 18 sample_out/a04d.png
${BIN} -size ${SIZE} -input data/scene05_bunny_200.txt -output sample_out/a05.png -normals sample_out/a05n.png -depth 0.8 1.0 sample_out/a05d.png
${BIN} -size ${SIZE} -input data/scene06_bunny_1k.txt -bounces 4 -output sample_out/a06.png -normals sample_out/a06n.png -depth 8 18 sample_out/a06d.png
${BIN} -size ${SIZE} -input data/scene07_arch.txt -bounces 4 -shadows -output sample_out/a07.png -normals sample_out/a07n.png -depth 8 18 sample_out/a07d.png
