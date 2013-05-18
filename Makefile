LINUXDIR=
TARGET_DIR=

obj-m += etzkx.o

all:
	make -C $(LINUXDIR) modules SUBDIRS=$(shell pwd)

install:
	cp *.ko $(TARGET_DIR)

clean:
	make -C $(LINUXDIR) modules SUBDIRS=$(shell pwd) clean
