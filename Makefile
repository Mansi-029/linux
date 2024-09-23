obj-m += hello_module.o  # This tells the make system to build hello_module.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules  # Compile the module using the current kernel version

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean  # Clean up the compiled files
