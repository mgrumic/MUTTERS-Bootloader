
volatile int x = 0xEC11EC11;


int fw_main() {
	while(x);
	return 1;
}
