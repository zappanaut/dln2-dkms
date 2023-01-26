obj-m += dln2.o
obj-m += gpio-dln2.o
obj-m += spi-dln2.o
obj-m += i2c-dln2.o
obj-m += dln2-adc.o

KERNELDIR  := /lib/modules/$(shell uname -r)/build
PWD        := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
