################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src\SD.cpp \
C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src\sd_diskio.cpp 

C_SRCS += \
C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src\sd_diskio_crc.c 

C_DEPS += \
.\libraries\SD\src\sd_diskio_crc.c.d 

LINK_OBJ += \
.\libraries\SD\src\SD.cpp.o \
.\libraries\SD\src\sd_diskio.cpp.o \
.\libraries\SD\src\sd_diskio_crc.c.o 

CPP_DEPS += \
.\libraries\SD\src\SD.cpp.d \
.\libraries\SD\src\sd_diskio.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\SD\src\SD.cpp.o: C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src\SD.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:/dev/ESP_libs/arduino-esp32-surface/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/config" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bluedroid" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/app_trace" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/app_update" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bootloader_support" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bt" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/driver" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/esp32" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/esp_adc_cal" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/ethernet" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/fatfs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/freertos" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/heap" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/jsmn" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/log" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mdns" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mbedtls" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mbedtls_port" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/newlib" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/nvs_flash" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/openssl" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/spi_flash" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/sdmmc" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/spiffs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/tcpip_adapter" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/ulp" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/vfs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/wear_levelling" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/xtensa-debug-module" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/coap" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/console" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/expat" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/json" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/lwip" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/newlib" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/nghttp" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/soc" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/wpa_supplicant" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_NodeMCU_32S -DARDUINO_ARCH_ARDUINO-ESP32-SURFACE "-DARDUINO_BOARD=\"NodeMCU_32S\"" "-DARDUINO_VARIANT=\"nodemcu-32s\"" -DESP32 -DCORE_DEBUG_LEVEL=0  -I"C:\dev\ESP_libs\arduino-esp32-surface\cores\esp32" -I"C:\dev\ESP_libs\arduino-esp32-surface\variants\nodemcu-32s" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\Wire\src" -I"C:\dev\ESP_libs\OLED_SSD1306" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\Wire" -I"C:\dev\ESP_libs\Other_DHT22" -I"C:\dev\sloeber_ESP32_Workspace_Surface\ESP32_LackEnclosure" -I"C:\dev\ESP_libs\async-mqtt-client-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFi\src" -I"C:\dev\ESP_libs\ArduinoJson-master\src" -I"C:\dev\ESP_libs\AsyncTCP-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\FS\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPI\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\HTTPClient\src" -I"C:\dev\ESP_libs\ESPAsyncWebServer-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\ESPmDNS\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFiClientSecure\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPIFFS\src" -I"C:\dev\ESP_libs\ArduinoJson-master" -I"C:\dev\ESP_libs\async-mqtt-client-master" -I"C:\dev\ESP_libs\AsyncTCP-master" -I"C:\dev\ESP_libs\ESPAsyncWebServer-master" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFi" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\ESPmDNS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\FS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\HTTPClient" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPI" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPIFFS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFiClientSecure" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"  -Wno-error=switch -Wno-error=maybe-uninitialized -Wno-error=implicit-function-declaration -Wno-error=format= -Wno-error=array-bounds -Wno-error=format-extra-args
	@echo 'Finished building: $<'
	@echo ' '

libraries\SD\src\sd_diskio.cpp.o: C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src\sd_diskio.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:/dev/ESP_libs/arduino-esp32-surface/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/config" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bluedroid" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/app_trace" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/app_update" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bootloader_support" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bt" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/driver" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/esp32" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/esp_adc_cal" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/ethernet" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/fatfs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/freertos" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/heap" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/jsmn" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/log" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mdns" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mbedtls" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mbedtls_port" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/newlib" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/nvs_flash" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/openssl" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/spi_flash" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/sdmmc" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/spiffs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/tcpip_adapter" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/ulp" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/vfs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/wear_levelling" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/xtensa-debug-module" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/coap" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/console" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/expat" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/json" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/lwip" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/newlib" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/nghttp" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/soc" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/wpa_supplicant" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_NodeMCU_32S -DARDUINO_ARCH_ARDUINO-ESP32-SURFACE "-DARDUINO_BOARD=\"NodeMCU_32S\"" "-DARDUINO_VARIANT=\"nodemcu-32s\"" -DESP32 -DCORE_DEBUG_LEVEL=0  -I"C:\dev\ESP_libs\arduino-esp32-surface\cores\esp32" -I"C:\dev\ESP_libs\arduino-esp32-surface\variants\nodemcu-32s" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\Wire\src" -I"C:\dev\ESP_libs\OLED_SSD1306" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\Wire" -I"C:\dev\ESP_libs\Other_DHT22" -I"C:\dev\sloeber_ESP32_Workspace_Surface\ESP32_LackEnclosure" -I"C:\dev\ESP_libs\async-mqtt-client-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFi\src" -I"C:\dev\ESP_libs\ArduinoJson-master\src" -I"C:\dev\ESP_libs\AsyncTCP-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\FS\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPI\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\HTTPClient\src" -I"C:\dev\ESP_libs\ESPAsyncWebServer-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\ESPmDNS\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFiClientSecure\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPIFFS\src" -I"C:\dev\ESP_libs\ArduinoJson-master" -I"C:\dev\ESP_libs\async-mqtt-client-master" -I"C:\dev\ESP_libs\AsyncTCP-master" -I"C:\dev\ESP_libs\ESPAsyncWebServer-master" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFi" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\ESPmDNS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\FS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\HTTPClient" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPI" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPIFFS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFiClientSecure" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"  -Wno-error=switch -Wno-error=maybe-uninitialized -Wno-error=implicit-function-declaration -Wno-error=format= -Wno-error=array-bounds -Wno-error=format-extra-args
	@echo 'Finished building: $<'
	@echo ' '

libraries\SD\src\sd_diskio_crc.c.o: C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src\sd_diskio_crc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:/dev/ESP_libs/arduino-esp32-surface/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc" -DESP_PLATFORM "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/config" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bluedroid" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/app_trace" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/app_update" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bootloader_support" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/bt" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/driver" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/esp32" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/esp_adc_cal" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/ethernet" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/fatfs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/freertos" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/heap" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/jsmn" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/log" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mdns" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mbedtls" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/mbedtls_port" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/newlib" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/nvs_flash" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/openssl" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/spi_flash" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/sdmmc" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/spiffs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/tcpip_adapter" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/ulp" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/vfs" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/wear_levelling" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/xtensa-debug-module" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/coap" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/console" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/expat" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/json" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/lwip" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/newlib" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/nghttp" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/soc" "-IC:/dev/ESP_libs/arduino-esp32-surface/tools/sdk/include/wpa_supplicant" -std=gnu99 -Os -g3 -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wpointer-arith -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -Wno-old-style-declaration -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_NodeMCU_32S -DARDUINO_ARCH_ARDUINO-ESP32-SURFACE "-DARDUINO_BOARD=\"NodeMCU_32S\"" "-DARDUINO_VARIANT=\"nodemcu-32s\"" -DESP32 -DCORE_DEBUG_LEVEL=0  -I"C:\dev\ESP_libs\arduino-esp32-surface\cores\esp32" -I"C:\dev\ESP_libs\arduino-esp32-surface\variants\nodemcu-32s" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\Wire\src" -I"C:\dev\ESP_libs\OLED_SSD1306" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\Wire" -I"C:\dev\ESP_libs\Other_DHT22" -I"C:\dev\sloeber_ESP32_Workspace_Surface\ESP32_LackEnclosure" -I"C:\dev\ESP_libs\async-mqtt-client-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFi\src" -I"C:\dev\ESP_libs\ArduinoJson-master\src" -I"C:\dev\ESP_libs\AsyncTCP-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\FS\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPI\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\HTTPClient\src" -I"C:\dev\ESP_libs\ESPAsyncWebServer-master\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\ESPmDNS\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFiClientSecure\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPIFFS\src" -I"C:\dev\ESP_libs\ArduinoJson-master" -I"C:\dev\ESP_libs\async-mqtt-client-master" -I"C:\dev\ESP_libs\AsyncTCP-master" -I"C:\dev\ESP_libs\ESPAsyncWebServer-master" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SD\src" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFi" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\ESPmDNS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\FS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\HTTPClient" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPI" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\SPIFFS" -I"C:\dev\ESP_libs\arduino-esp32-surface\libraries\WiFiClientSecure" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"  -Wno-error=switch -Wno-error=maybe-uninitialized -Wno-error=implicit-function-declaration -Wno-error=format= -Wno-error=array-bounds -Wno-error=format-extra-args
	@echo 'Finished building: $<'
	@echo ' '


