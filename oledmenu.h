/*
 * oledmenu.h
 *
 *  Created on: 02.05.2018
 *      Author: bened
 */

#ifndef OLEDMENU_H_
#define OLEDMENU_H_
#include <Wire.h>
#include "SSD1306.h"

#define maxItemsperLayer 10
#define maxLayers 16

class menulayer;
class menuitem;
class oledmenu;

class oledmenu
    {
public:
    SSD1306* menudisplay;

    void drawMenu(void);
    void show(void);
    oledmenu(void);
    bool addmLayer(int ID);
    };


class menuitem: public oledmenu
    {
public:
    void setItemTitel(String titel);
    String getItemTitel(void);

private:
    String titel;
    bool filled;
    };

class menulayer: public oledmenu
    {
public:
    bool addmItem(String titel);
    bool filled;
private:
    menuitem mitems[maxItemsperLayer];
    };


class layerwrapper
    {
public:
    bool addmLayer(int ID);
private:
    menulayer menulayers[maxLayers];
    };



#endif /* OLEDMENU_H_ */
