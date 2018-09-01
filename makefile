ALL_DEPENDENCIES = $^
FIRST_DEPENDENCY = $<
TARGET_NAME = $@
TARGET_STEM = $*

CC = gcc
CFLAGS = --std=c99 -ggdb -Wall
SOURCE = jenkins-test.c
MODULE = $(SOURCE:.c=)

.PHONY: build

build: $(MODULE)

%: %.c
	$(CC) $(CFLAGS) $(FIRST_DEPENDENCY) -o $(TARGET_NAME)

test:
	./$(MODULE)

clean:
	rm -f $(MODULE)

clobber: clean
