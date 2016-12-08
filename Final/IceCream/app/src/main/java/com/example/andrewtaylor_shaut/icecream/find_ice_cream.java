package com.example.andrewtaylor_shaut.icecream;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;

public class find_ice_cream extends AppCompatActivity {

    private ice_cream_shop myIceCreamShop = new ice_cream_shop();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_ice_cream);
        //get button
        final Button button = (Button) findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findDessert(view);
            }
        };
        //add listener to the button
        button.setOnClickListener(onclick);
    }
    public void findDessert(View view) {
        EditText desert = (EditText) findViewById(R.id.editText);
        String desertValue = desert.getText().toString();

        //switch
        String dairy_string = "";
        Switch dairy_switch = (Switch) findViewById(R.id.switch1);
        boolean dairy = dairy_switch.isChecked();
        if (dairy) {
            dairy_string = "dairy-free ";
        }

        //spinner
        Spinner flavorSpinner = (Spinner) findViewById(R.id.spinner);
        String flavorValue = String.valueOf(flavorSpinner.getSelectedItem());
        ImageView flavorImage = (ImageView) findViewById(R.id.imageView);
        switch (flavorValue) {
            case "salted caramel":
                flavorImage.setImageResource(R.drawable.caramel);
                break;
            case "chocolate chocolate chocolate":
                flavorImage.setImageResource(R.drawable.chocolate);
                break;
            case "oreos in vanilla":
                flavorImage.setImageResource(R.drawable.cookiescream);
                break;
        }

        //toggle button
        ToggleButton toggle = (ToggleButton) findViewById(R.id.toggleButton);
        boolean container = toggle.isChecked();
        String containerString;
        if (container) {
            containerString = " cup ";
        } else {
            containerString = " cone ";
        }

        //radio
        RadioGroup iceCreamKind = (RadioGroup) findViewById(R.id.kindRadioGroup);
        String kind = "";
        int kind_id = iceCreamKind.getCheckedRadioButtonId();
        switch (kind_id) {
            case R.id.radioButton:
                kind = " creamed ice ";
                break;
            case R.id.radioButton2:
                kind = " frozen yo ";
                break;
            case  R.id.radioButton3:
                kind = " gelato ";
                break;
            default:
                kind = "no";
        }

        //check boxes
        String toppings_string = "";
        CheckBox check1 = (CheckBox) findViewById(R.id.checkBox);
        boolean checked1 = check1.isChecked();
        if (checked1) {
            toppings_string += " jimmie's,";
        }
        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        boolean checked2 = check2.isChecked();
        if (checked2) {
            toppings_string += " choco drizzle,";
        }
        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);
        boolean checked3 = check3.isChecked();
        if (checked3) {
            toppings_string += " legumes,";
        }

        //text view
        TextView dessert = (TextView) findViewById(R.id.textView2);
        dessert.setText("My " + desertValue + " is a " + dairy_string + flavorValue + kind + containerString + "with" + toppings_string + " and a cherry on top.");

        //get spinner item array position
        Integer spin = flavorSpinner.getSelectedItemPosition();

        //set the ice cream shop
        myIceCreamShop.setIceCreamShop(spin);
        //get suggested ice ceram shop
        String suggestedIceCreamShop = myIceCreamShop.getIceCreamShop();
        //get URL of suggested ice cream shop
        String suggestedIceCreamShopURL = myIceCreamShop.getIceCreamShopURL();
        System.out.println(suggestedIceCreamShop);
        System.out.println(suggestedIceCreamShopURL);

        //create an intent
        Intent intent = new Intent(this, receive_desert.class);

        //pass data
        intent.putExtra("coffeeShopName", suggestedIceCreamShop);
        intent.putExtra("coffeeShopURL", suggestedIceCreamShopURL);

        //start the intent
        startActivity(intent);
    }


}
