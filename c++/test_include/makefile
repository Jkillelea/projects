COMPILER=arm-linux-gnueabihf-gcc
INCLUDE_DIR=include
SRC_DIR=src
BUILD_DIR=build
COMPILE_FLAGS=-I$(INCLUDE_DIR) # just says to include the include dir when searching for libraries to compile with

all : test

clean : cleanup # calls cleanup first
	if [ -e test ]; \
		then rm test; \
	fi

# main executable
test : $(BUILD_DIR)/test.o $(BUILD_DIR)/dummy.o
	$(COMPILER) -o $@ $(COMPILE_FLAGS) $(BUILD_DIR)/test.o $(BUILD_DIR)/dummy.o

$(BUILD_DIR)/%.o : $(SRC_DIR)/%.c  | $(BUILD_DIR) # each .o file in the build directory depends on the corresponding .c file in the source directory
	$(COMPILER) -o $@ $(COMPILE_FLAGS) -c $^                # in addition, it depends on the build directory exsiting (see the next rule down)
                                                  # however, if the modification time of the build directory changes, that won't cause all objects to be recompiled
$(BUILD_DIR) :
	mkdir $@

cleanup :
	if [ -d $(BUILD_DIR) ]; \
		then rm -r $(BUILD_DIR); \
	fi
