################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\libraries\EEPROM\EEPROM.cpp 

LINK_OBJ += \
.\libraries\EEPROM\EEPROM.cpp.o 

CPP_DEPS += \
.\libraries\EEPROM\EEPROM.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\EEPROM\EEPROM.cpp.o: ..\libraries\EEPROM\EEPROM.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"E:/Dev/ESP_libs/arduino-esp32/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/config" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/bluedroid" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/app_trace" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/app_update" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/bootloader_support" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/bt" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/driver" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/esp32" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/esp_adc_cal" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/ethernet" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/fatfs" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/freertos" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/heap" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/jsmn" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/log" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/mdns" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/mbedtls" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/mbedtls_port" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/newlib" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/nvs_flash" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/openssl" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/spi_flash" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/sdmmc" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/spiffs" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/tcpip_adapter" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/ulp" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/vfs" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/wear_levelling" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/xtensa-debug-module" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/coap" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/console" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/expat" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/json" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/lwip" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/newlib" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/nghttp" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/soc" "-IE:/Dev/ESP_libs/arduino-esp32/tools/sdk/include/wpa_supplicant" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_NodeMCU_32S -DARDUINO_ARCH_ARDUINO-ESP32 "-DARDUINO_BOARD=\"NodeMCU_32S\"" "-DARDUINO_VARIANT=\"nodemcu-32s\"" -DESP32 -DCORE_DEBUG_LEVEL=0  -I"E:\Dev\ESP_libs\arduino-esp32\cores\esp32" -I"E:\Dev\ESP_libs\arduino-esp32\variants\nodemcu-32s" -I"E:\Dev\Sloeber_ESP32_Workspace\ESP32_LackEnclosure\libraries\Wire\src" -I"E:\Dev\Sloeber_ESP32_Workspace\ESP32_LackEnclosure\libraries\OLED_SSD1306" -I"E:\Dev\Sloeber_ESP32_Workspace\ESP32_LackEnclosure\libraries\WiFi\src" -I"E:\Dev\Sloeber_ESP32_Workspace\ESP32_LackEnclosure\libraries\FS\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"  -Wno-error=switch -Wno-error=maybe-uninitialized -Wno-error=implicit-function-declaration -Wno-error=format= -Wno-error=array-bounds -Wno-error=format-extra-args
	@echo 'Finished building: $<'
	@echo ' '


