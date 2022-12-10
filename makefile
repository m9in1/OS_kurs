all: clean
	gcc led_blinker_VKY.c -o lb
	gcc color_sense_VKY.c -o cs -lrt
	


clean:
