INCLUDE_DIR=include
SRC_DIR=src
BUILD_DIR=build
COMPILE_FLAGS=-I$(INCLUDE_DIR) # just says to include the include dir when searching for libraries to compile with

all: test

clean:
	rm $(BUILD_DIR)/*.o
	rm test

# main executable
test: $(BUILD_DIR)/test.o $(BUILD_DIR)/dummy.o
	gcc -o $@ $(COMPILE_FLAGS) $(BUILD_DIR)/test.o $(BUILD_DIR)/dummy.o

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c  # each .o file depends on the corresponding .c file in the source directory
	gcc -o $@ $(COMPILE_FLAGS) -c $^
