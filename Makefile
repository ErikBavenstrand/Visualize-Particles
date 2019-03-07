SOURCE = src
BINARIES = bin

Visualize: $(SOURCE)/Visualize.cpp
	mkdir -p $(BINARIES)
	g++ $^ -o $(BINARIES)/$@ -lGLFW -framework OpenGL

sample: $(SOURCE)/Visualize.cpp
	mkdir -p $(BINARIES)
	g++ $^ -o $(BINARIES)/Visualize -lGLFW -framework OpenGL
	./bin/Visualize ./sample.out