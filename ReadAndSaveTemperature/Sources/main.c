#include "pi_dht_read.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>

#define TEMP_PIN 23


float measureTemperature(void);

int main(void)
{

	char temp[30];

	float temperature;

	int fd;

	fd = open("test",O_CREAT | O_WRONLY,0644);

	if(fd < 0)
	{
		perror("open");
		return 1;
	}

	while(1)
	{
		temperature = measureTemperature();

		if(temperature > 0)
		{
			sprintf(temp,"Temperature: %f\n",temperature);
			write(fd,temp, strlen(temp));
			sleep(2);
		}
	}
	close(fd);
	return 0;
}

float measureTemperature(void)
{
	int i;
	int result = -1;

	float humidity, temperature;

	for(i = 0; i<15; i++)
	{
		result = pi_dht_read(DHT11, TEMP_PIN, &humidity, &temperature);
		if(result >= 0)
			break;
	}


	if(result < 0)
	{
		printf("Error code while read: %d\n", result);
		return -1.0;
	}

	printf("Temperature:%f \t Humidity:%f\n", temperature, humidity);
	return temperature;
}
