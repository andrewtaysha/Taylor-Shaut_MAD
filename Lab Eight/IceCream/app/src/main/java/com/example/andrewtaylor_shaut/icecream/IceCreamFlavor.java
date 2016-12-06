package com.example.andrewtaylor_shaut.icecream;

/**
 * Created by andrewtaylor-shaut on 12/6/16.
 */

public class IceCreamFlavor {
    private String iceCreamFlavor;
}
private void setIceCreamFlavor(Integer personality){
    switch (personality){
        case 0: //adventurous
            iceCreamFlavor="Rocky Road";
            break;
        case 1: //quircky
            iceCreamFlavor="Rainbow Sherbert";
            break;
        case 2: //relaxed
            iceCreamFlavor="Mint Chocolate Chip";
            break;
        case 3: //average
            iceCreamFlavor="Vanilla";
            break;
        case 4: //not average
            iceCreamFlavor="Chocolate";
            break;
        default:
            iceCreamFlavor="none";
    }
}

public void setIceCreamFlavor(Integer personality){
    setIceCreamFlavor(personality);
}

public String getIceCreamFlavor(){
    return IceCreamFlavor;
}