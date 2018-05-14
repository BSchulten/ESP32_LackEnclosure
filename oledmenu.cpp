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
    layerwrapper wrap;
}

bool oledmenu::addmLayer(int ID)
    {
	wrap.addmLayer(ID);
    }
void oledmenu::show(void){
	menudisplay->clear();
	menudisplay->drawString(0,0,"Test!!");
	menudisplay->display();
    }

// layerwrapper Functions
bool layerwrapper::addmLayer(int ID){
    if (menulayers[ID].filled == false){
	menulayers[ID].filled = true;
	return true;
    }
    else{
	return false;
    }
}


// menulayer Functions
bool menulayer::addmItem(String titel){
    mitems[1].setItemTitel(titel);
return true;
}

//menuItem Functions

void menuitem::setItemTitel(String titel){
    this->titel = titel;
}

String menuitem::getItemTitel(void){
    return this->titel;
}


