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

#define DHT22_PIN 16
#define scdDHT22_PIN 17
#define BTNleft_PIN 1
#define BTNright_PIN 2
#define frametime 5000

dht DHT;
dht DHT2;
SSD1306 display(0x3c, 21, 22);
AsyncWebServer server(80);
AsyncWebSocket ws("/");

portMUX_TYPE mux = portMUX_INITIALIZER_UNLOCKED;
oledmenu menu;

const char* ssid = "";
const char* password = "";

int btninterruptCounter = 0;
float temphistory[129];
unsigned long lastmillis = 0;

void setupDisplay(void);
void IRAM_ATTR handleInterrupt();
void drawgraph(float temps[]);
float scale(float value, float max, float min);



void handleMessage(AsyncWebSocketClient * client, uint8_t *rawdata, String msg);
void setupWifi();
void setupServer();
void setupSPIFFS();

void setup()
{
setupDisplay();
pinMode(BTNleft_PIN, INPUT_PULLUP);
attachInterrupt(digitalPinToInterrupt(BTNleft_PIN), handleInterrupt, FALLING);


display.clear();
display.drawString(0, 0, "Initialized!");
display.display();
setupWifi();
setupSPIFFS();
setupServer();
}


void loop()
    {
    btninterruptCounter = 0;
    if (lastmillis + frametime < millis())
	{
	lastmillis = millis();
	display.clear();
	DHT.read22(DHT22_PIN);
	float t = DHT.temperature;

	display.drawString(90, 0, (String) DHT.humidity + "%");
	delay(10);
	DHT2.read22(scdDHT22_PIN);
	float t2 = DHT2.temperature;
	//display.drawString(0, 12, "T 2: " + (String) t2 + "°C");
	float delta = t2 - t;
	display.drawString(0, 0,(String) t + "°C" + " / " + (String) delta + "°C");
	//display.drawString(76, 12, "dT: " + (String) delta + "°C");

	if (temphistory[128] == 0)
	    {
	    for (int i = 0; i < 128; i++)
		{
		temphistory[128] = 1;
		temphistory[i] = t;
		}
	    }
	for (int i = 127; i > 0; i--)
	    {
	    temphistory[i] = temphistory[i - 1];
	    }
	if (t > 0 && t < 100)
	    {
	    temphistory[0] = t;
	    }

	drawgraph(temphistory);
	display.display();
	}
    }


void setupDisplay(void)
{
	display.init();
	display.flipScreenVertically();
	display.setFont(ArialMT_Plain_10);
	display.setColor(WHITE);
	display.setTextAlignment(TEXT_ALIGN_LEFT);
}

void IRAM_ATTR handleInterrupt() {
  portENTER_CRITICAL_ISR(&mux);
  btninterruptCounter++;
  portEXIT_CRITICAL_ISR(&mux);
}

void drawgraph(float temps[])
    {
    float min = temps[1];
    float max = temps[1];
    for (int i = 0; i < 128; i++)
	{
	    if (temps[i] > max) max = temps[i];
	    if (temps[i] < min) min = temps[i];
	}
    for (int i = 0; i < 128; i++)
	{
	int percent = scale(temps[i], max, min) * 100;
	display.drawString(0, 12, "Max: " + (String) max + "C Min: " + (String) min +"C" );
	display.setPixel(128 - i, 50 - (percent * 0.2));
	/*display.drawLine(128 - i, 64, 128 - i, 50 - (percent * 0.2));*/
	}
    }

float scale(float value, float max, float min){
    float percentage;
    float spread = max - min;
    if (spread < 0.6) spread = 0.6;
    percentage = (value - min ) / spread;
    if (value == min){
	percentage = 0;
    }
    return  percentage;
}


void setupWifi()
{
	WiFi.begin(ssid, password);
	display.clear();
	display.drawString(0, 0, "Connecting to:");
	display.drawString(0, 15, (String) ssid);
	display.drawString(0, 30, "PWD:");
	display.drawString(0, 45, (String) password);
	display.display();

	int i = 0;
	String dots = ".";

	while (WiFi.status() != WL_CONNECTED)
	{
		delay(1000);
		Serial.println("Connecting to WiFi..");
		display.drawString(80, 0, dots);
		i++;
		dots = dots + ".";
		display.display();
	}
	display.clear();
	display.drawString(0, 0, "Connected to Wifi");
	display.drawString(0, 36, WiFi.localIP().toString());
	display.display();
	delay(2000);
}

void setupServer()
{
	server.on("/", HTTP_GET, [](AsyncWebServerRequest *request)
	{
		request->send(SPIFFS, "/site.html");
	});
	server.serveStatic("/stylesheet.css", SPIFFS, "/stylesheet.css");
	server.serveStatic("/script.js", SPIFFS, "/script.js");
	server.serveStatic("/jscolor.js", SPIFFS, "/jscolor.js");
	server.serveStatic("/js/bootstrap.min.js", SPIFFS, "/js/bootstrap.min.js");
	server.serveStatic("/css/bootstrap.min.css", SPIFFS, "css/bootstrap.min.css");
	//server.serveStatic("/", SPIFFS, "/");
	server.begin();
}

void setupSPIFFS(){
    if (!SPIFFS.begin(0, "/spiffs", 10))
    	{
    		Serial.println("SPIFFS Mount Failed");
    		return;
    	}
    	else
    	{
    		Serial.println("SPIFFS Mounted");
    	}
}
