SRC := $(wildcard src/*.c)
OBJ := ${SRC:.c=.o}

# inlining hacks are now disabled by default because:
# - compilers are much better than they used to be.
# - computers are much faster than they used to be.
CPPFLAGS ?= -DNO_INLINE -D__USE_MINGW_ANSI_STDIO
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

