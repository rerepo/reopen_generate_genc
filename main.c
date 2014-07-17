/*
 ============================================================================
 Name        : c-complie.c
 Author      : tmc9031@gmail.com
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#include "func.h"

int main(void) {

	func();

#if (DEBUG==1)
//#ifdef DEBUG
	puts("!!!DEBUG!!!");
#endif

	puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */
	return EXIT_SUCCESS;
}
