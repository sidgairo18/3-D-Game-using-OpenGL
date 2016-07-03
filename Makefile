CC = g++
CFLAGS = -Wall -g
PROG = exe

SRCS = game.cpp
LIBS = glad.c -I /usr/local/include/GLFW -I/usr/include/irrklang -lGL  -lglfw -lX11 -lXxf86vm -lXrandr  -lXi -ldl -pthread ikpMP3.so  libIrrKlang.so

all: $(PROG)

$(PROG):	$(SRCS)
	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)

clean:
	rm -f $(PROG)
