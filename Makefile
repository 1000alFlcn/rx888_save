
all:
	cc rx888_save.c ezusb.c -o rx888_save -g -O0 -fstack-protector-all `pkg-config --cflags --libs libusb-1.0`

clean:
	rm rx888_save
