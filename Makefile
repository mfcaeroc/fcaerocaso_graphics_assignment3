#-------------------------------------------------
# sample Makefile for OpenGL
#-------------------------------------------------

# define OpenGL libraries
ifeq ($(shell uname),Darwin)
LIB = -DMAC -framework OPENGL -framework GLUT
else
LIB = -lGL -lGLU -lglut
endif

# define compiler options
CC = g++ -std=c++11 -Wall -Wno-deprecated-declarations -O3

project: Main.cpp
	$(CC) -o project Main.cpp $(LIB)