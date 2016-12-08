package com.example.andrewtaylor_shaut.icecream;

/**
 * Created by andrewtaylor-shaut on 12/8/16.
 */

public class ice_cream_shop {
    private String iceCreamShop;
    private String iceCreamShopURL;

    private void setIceCreamShopInfo(Integer iceCreamFlavor){
        switch (iceCreamFlavor){
            case 0: //caramel
                iceCreamShop="Fior di Latte";
                iceCreamShopURL="http://fiordiattegelato.com/";
                break;
            case 1: //chocolate
                iceCreamShop="Glacier";
                iceCreamShopURL="http://glaciericecream.com/";
                break;
            case 2: //oreo
                iceCreamShop="Sweet Cow";
                iceCreamShopURL="http://sweetcowicecreamcom/";
                break;
            default:
                iceCreamShop="none";
                iceCreamShopURL="https://www.google.com/search?q=boulder+ice+cream+shops&ie=utf-8&oe=utf-8";
        }
    }
    public void setIceCreamShop(Integer iceCreamFlavor){
        setIceCreamShopInfo(iceCreamFlavor);
    }
    public void setIceCreamShopURL(Integer iceCreamFlavor){
        setIceCreamShopInfo(iceCreamFlavor);
    }
    public String getIceCreamShop(){
        return iceCreamShop;
    }
    public String getIceCreamShopURL(){
        return iceCreamShopURL;
    }
}

