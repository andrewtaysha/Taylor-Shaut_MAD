package com.example.andrewtaylor_shaut.icecream;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class ReceiveIceCreamActivity extends AppCompatActivity {

    private String iceCreamFlavor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_ice_cream);

        //get intent
        Intent intent = getIntent();
        iceCreamFlavor = intent.getStringExtra("iceCreamFlavor");
        System.out.println(iceCreamFlavor);

        //update text view
        TextView messageView = (TextView) findViewById(R.id.iceCreamFlavorTextView);
        messageView.setText("Your flavor is " + iceCreamFlavor);
    }
}
