package com.example.andrewtaylor_shaut.icecream;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndex;
import com.google.android.gms.appindexing.Thing;
import com.google.android.gms.common.api.GoogleApiClient;

public class FindIceCreamActivity extends AppCompatActivity {

    /**
     * ATTENTION: This was auto-generated to implement the App Indexing API.
     * See https://g.co/AppIndexing/AndroidStudio for more information.
     */
    private GoogleApiClient client;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_ice_cream);
        //get button
        final Button button = (Button) findViewById(R.id.button);
        View.OnClickListener onclick = new View.OnClickListener() {
            public void onClick(View view) {
                findIceCream(view);
            }
        };
        //add listener to the button
        button.setOnClickListener(onclick);
        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        client = new GoogleApiClient.Builder(this).addApi(AppIndex.API).build();
    }


    private IceCreamFlavor myIceCreamFlavor = new IceCreamFlavor();

    public void findIceCream(View view) {
        //get spinner
        Spinner personalitySpinner = (Spinner) findViewById(R.id.spinner);
        //get spinner item array position
        Integer personality = personalitySpinner.getSelectedItemPosition();
        //set the coffee shop
        myIceCreamFlavor.setIceCreamFlavor(personality);
        //get suggested coffee shop
        Intent intent = new Intent(this, ReceiveIceCreamActivity.class);
        //start the intent
        startActivity(intent);
        //pass data
        String suggestedIceCream = myIceCreamFlavor.getIceCreamFlavor();
        intent.putExtra("iceCreamFlavor", suggestedIceCream);
        //start the intent
        startActivity(intent);
    /*String suggestedIceCreamFlavor = myIceCreamFlavor.getIceCreamFlavor();
    System.out.println(suggestedIceCreamFlavor);*/
    }

    /**
     * ATTENTION: This was auto-generated to implement the App Indexing API.
     * See https://g.co/AppIndexing/AndroidStudio for more information.
     */
    public Action getIndexApiAction() {
        Thing object = new Thing.Builder()
                .setName("FindIceCream Page") // TODO: Define a title for the content shown.
                // TODO: Make sure this auto-generated URL is correct.
                .setUrl(Uri.parse("http://[ENTER-YOUR-URL-HERE]"))
                .build();
        return new Action.Builder(Action.TYPE_VIEW)
                .setObject(object)
                .setActionStatus(Action.STATUS_TYPE_COMPLETED)
                .build();
    }

    @Override
    public void onStart() {
        super.onStart();

        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        client.connect();
        AppIndex.AppIndexApi.start(client, getIndexApiAction());
    }

    @Override
    public void onStop() {
        super.onStop();

        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        AppIndex.AppIndexApi.end(client, getIndexApiAction());
        client.disconnect();
    }
}
