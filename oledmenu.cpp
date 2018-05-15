/*
 * oledmenu.cpp
 *
 *  Created on: 02.05.2018
 *      Author: bened
 */
#include <oledmenu.h>
// oledmenu Functions

//Oledmenu Constructor
oledmenu::oledmenu(void){
    activeItem = 1;
    vertSpacing = 3;
}

void oledmenu::show(void){
	menudisplay->clear();
	int i = 0;
	int x = 6;
	int y = vertSpacing;
	while(menulayers[activeLayer].menuitems[i].filled){
	    String itemTitel = menulayers[activeLayer].menuitems[i].getItemTitel();
	    menudisplay->drawString(x,y,itemTitel);
	    if (i == activeItem){
		menudisplay->fillCircle(3, y+6, 2);
	    }
	    i++;
	    y = y + (10 + (vertSpacing));
	}

	//menudisplay->drawString(30,30,"Test");
	menudisplay->display();
    }


// menulayer Functions

//menuItem Functions

void menuitem::setItemTitel(String titel){
    filled = true;
    this->titel = titel;
}

String menuitem::getItemTitel(void){
    return this->titel;
}


