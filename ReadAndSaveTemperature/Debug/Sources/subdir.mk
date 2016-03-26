################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/common_dht_read.c \
../Sources/main.c \
../Sources/pi_dht_read.c \
../Sources/pi_mmio.c 

OBJS += \
./Sources/common_dht_read.o \
./Sources/main.o \
./Sources/pi_dht_read.o \
./Sources/pi_mmio.o 

C_DEPS += \
./Sources/common_dht_read.d \
./Sources/main.d \
./Sources/pi_dht_read.d \
./Sources/pi_mmio.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/%.o: ../Sources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabihf-gcc -I"../Includes" -O0 -g3 -Wall -c -fmessage-length=0  -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


