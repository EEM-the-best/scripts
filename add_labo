#!/bin/bash

if [ -z "$1" ]
then
  echo "Enter a filename..."
fi

if ! [ -z "$1" ]
then
  #Create dir
  mkdir $1

  #Go in dir
  cd $1

  #Create file.c
  touch $1.c

  #Put text in file.c
  printf '/**
  \\file     %s.c
  \\brief
  \\author   Leo Vaucher
  \\version  1.0
  \\date     ' $1 >> $1.c
  date +"%Y-%m-%d" >> $1.c
printf '  \\details
**/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{

  return 0;
}' >> $1.c

  #Create makefile
  touch Makefile
  echo '#
# Makefile
#

# set the executable name
EXEC=app

CC=gcc
CFLAGS+= -std=c99 -Wall
CFLAGS+= -Iinclude
LDLIBS:= -lm

ODIR:=obj

SRC := $(wildcard *.c)
OBJS = $(patsubst %,$(ODIR)/%,$(SRC:.c=.o))

all: clean $(EXEC)

-include $(ODIR)/*.d

$(EXEC): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS) $(LDLIBS)

$(ODIR)/%.o: %.c | $(ODIR)
	$(CC) $(CFLAGS) -c $< -o $@ -MMD -MF $(@:.o=.d)

$(ODIR):
	mkdir $@

clean:
	$(RM) $(EXEC)
	$(RM) -rf $(ODIR)

note:
	@.tools/notation.py

.PHONY:	clean all
.DEFAULT: all
  ' >> Makefile

  echo "Done..."
fi
