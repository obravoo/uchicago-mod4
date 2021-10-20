#include <stdio.h>
#include <stdlib.h>
#include "count.h"
#include "list.h"

int main(int argc, char** argv) {
    printf("Devops Modulo 3: Puede listar argumentos\n");

    int count = count_args(argv);
    printf("Total argumentos: %d\n", count);

	char* seq = list_args(argc, argv);
	if(NULL != seq) {
	    printf("%s", seq);
		free(seq);
	}
	
	return 0;
}

