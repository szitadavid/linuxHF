################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../DHT11/common_dht_read.c \
../DHT11/pi_dht_read.c \
../DHT11/pi_mmio.c 

OBJS += \
./DHT11/common_dht_read.o \
./DHT11/pi_dht_read.o \
./DHT11/pi_mmio.o 

C_DEPS += \
./DHT11/common_dht_read.d \
./DHT11/pi_dht_read.d \
./DHT11/pi_mmio.d 


# Each subdirectory must supply rules for building sources it contributes
DHT11/%.o: ../DHT11/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabihf-gcc -I"/home/szitadavid/workspace/ReadAndSaveTemperature/Includes" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


