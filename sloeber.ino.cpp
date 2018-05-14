#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2018-05-13 16:05:23

#include "Arduino.h"
#include <Wire.h>
#include <WiFi.h>
#include "SSD1306.h"
#include <dht.h>
#include <oledmenu.h>
#include "FS.h"
#include <ESPmDNS.h>
#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include "SPIFFS.h"
#include <SPIFFSEditor.h>

void setup() ;
void loop()     ;
void setupDisplay(void) ;
void IRAM_ATTR handleInterrupt() ;
void drawgraph(float temps[])     ;
float scale(float value, float max, float min);
void setupWifi() ;
void setupServer() ;
void setupSPIFFS();

#include "ESP32_LackEnclosure.ino"


#endif
