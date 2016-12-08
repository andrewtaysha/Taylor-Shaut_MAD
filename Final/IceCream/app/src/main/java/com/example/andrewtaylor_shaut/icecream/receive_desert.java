package com.example.andrewtaylor_shaut.icecream;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

import static com.example.andrewtaylor_shaut.icecream.R.array.flavor_spinner;

public class receive_desert extends AppCompatActivity {

    private String iceCreamShop;
    private String iceCreamShopURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_desert);
        //get intent
        Intent intent = getIntent();
        iceCreamShop = intent.getStringExtra("iceCreamShopName");
        iceCreamShopURL = intent.getStringExtra("iceCreamShopURL");
        System.out.println(iceCreamShop);
        System.out.println(iceCreamShopURL);

        //update text view
        TextView messageView = (TextView) findViewById(R.id.textView2);
        messageView.setText("You should check out " + flavor_spinner);

        //get image button
        final ImageButton imageButton = (ImageButton) findViewById(R.id.imageButton);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                loadWebSite(view);
            }
        };
        //add listener to the button
        imageButton.setOnClickListener(onclick);
    }

    public void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(iceCreamShopURL));
        startActivity(intent);
    }
}
