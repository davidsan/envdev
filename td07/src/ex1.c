#include<time.h>
#include<stdlib.h>
#include<stdio.h>
int main() {
	time_t heure=time(NULL);
	struct tm *loctime=localtime(&heure);
	if (loctime->tm_hour>19)
		puts("bonsoir\n");
	else
		printf("bonjour\n");
}
