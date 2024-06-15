# Define the compiler
CC = i686-w64-mingw32-gcc

# Define the target executables
TARGET1 = DS_FPS_Mouse_Fix.exe
TARGET2 = Fix_Mouse.exe

# Define the source files
SRCS1 = DS_MOUSE_UI.c
SRCS2 = Fix_Mouse.c

# Define the libraries to link against
LIBS = -lgdi32

# Default target
all: $(TARGET1) $(TARGET2)

# Rule to build the first target executable
$(TARGET1): $(SRCS1)
	$(CC) -o $(TARGET1) $(SRCS1) $(LIBS)

# Rule to build the second target executable
$(TARGET2): $(SRCS2)
	$(CC) -o $(TARGET2) $(SRCS2) $(LIBS)

# Clean rule to remove the executables
clean:
	rm -f $(TARGET1) $(TARGET2)
