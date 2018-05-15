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

#define maxItemsperLayer 16
#define maxLayers 16

class menulayer;
class menuitem;
class oledmenu;

class menuitem
    {
public:
    menuitem(void){
	filled = false;
    }
    void setItemTitel(String titel);
    String getItemTitel(void);
    bool filled;
private:
    int ID;
    String titel;

    };

class menulayer
    {
public:
    bool filled;
    bool addmItem(int itemID, String titel);
    menuitem menuitems[maxItemsperLayer];
private:
    };

class oledmenu
    {
public:
    SSD1306* menudisplay;
    menulayer menulayers[maxLayers];

    int activeLayer;
    int activeItem;


    void drawMenu(void);
    void show(void);
    void showSpec(int layer, int item);
    oledmenu(void);
    bool addmLayer(int ID)
	{
	menulayers[ID].filled = true;
	return true;
	}
    ;
    bool addItemtoLayer(int layerID, int itemID, String itemTitel)
	{
	    menulayers[layerID].menuitems[itemID].setItemTitel(itemTitel);
	    return true;
	}
    ;

    void setvertSpacing(int spacing){
	vertSpacing = spacing;
    }

private:
	int vertSpacing;
	int textSize;
    };











#endif /* OLEDMENU_H_ */
