SRC := $(wildcard src/*.c)
OBJ := ${SRC:.c=.o}

CPPFLAGS ?= -D__USE_MINGW_ANSI_STDIO
CFLAGS ?= -Wall -Wno-misleading-indentation -O3 -s

TARGETDIR := bin
TARGET := $(TARGETDIR)/espresso

all: prepare $(TARGET)

prepare:
	mkdir -p $(TARGETDIR)

$(TARGET): $(OBJ)
	$(LINK.c) $(OBJ) -o $(TARGET)

clean: 
	@- $(RM) -r $(TARGETDIR)
	@- $(RM) $(OBJ)

