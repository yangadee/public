CC:= g++
CFLAGS+= -I. `pkg-config --cflags opencv`
LDFLAGS+= `pkg-config --libs opencv`
TARGET= opencv
OBJS = opencv.o

.PHONY: all
all: ${TARGET} clean
 ${TARGET}: $(OBJS)
	$(CC) -g -o $(TARGET) $(OBJS) $(LDFLAGS)
 %.o: %.cpp
	$(CC) -c $^ -o $@ $(CFLAGS)
	
.PHONY: clean
clean:
	rm -rf *.o
