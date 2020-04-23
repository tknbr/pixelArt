CC = g++

SRCS := $(wildcard *.cpp)
BINS := $(SRCS:%.cpp=%)

LINKERFLAG = -L lib -l SDL2-2.0.0
INCLUDES = -I include
OBJECTS = game.o

all: game main

main:
	@echo "Building main..."
	${CC} main.cpp -o my_game ${OBJECTS} ${INCLUDES} ${LINKERFLAG}

game:
	@echo "Building game..."
	${CC} -c game.cpp ${INCLUDES} ${LINKERFLAG}

clean:
	@echo "Cleaning up..."
	rm -rvf *.o game.o my_game