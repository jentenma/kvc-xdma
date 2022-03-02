
buildprep:
	# elfutils-libelf-devel is needed on EL8 systems
	sudo yum install -y gcc kernel-{core,devel,modules}-$(KVER) elfutils-libelf-devel

kvcall:
	@echo $(PWD)
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules

kvcinstall:
	sudo install -v -m 755 -d /lib/modules/$(KVER)/
	sudo install -v -m 644 xdma.ko  /lib/modules/$(KVER)/xdma.ko
	depmod -a

