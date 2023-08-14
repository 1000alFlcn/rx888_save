

all:
	cc rx888_save.c ezusb.c -o rx888_save -ggdb3 -O3 -march=native -Wall -Werror -Wpedantic 
all-clang:
	clang rx888_save.c ezusb.c -o rx888_save -ggdb3 -O3 -march=native -Wall -Werror -Wpedantic -fstack-protector-all `pkg-config --cflags --libs libusb-1.0`

clean:
	rm rx888_stream

original:
	cc rx888_save.c ezusb.c -o rx888_save -ggdb3 -O3 -march=native -Wall -Werror -Wpedantic -fstack-protector-all `pkg-config --cflags --libs libusb-1.0`
