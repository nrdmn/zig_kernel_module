obj-m+=my_module.o
my_module-objs := src/stub.o src/my_module.o

all:
	make -C src
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules

clean:
	make -C src clean
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
