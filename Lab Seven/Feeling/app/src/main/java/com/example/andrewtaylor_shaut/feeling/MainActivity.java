package com.example.andrewtaylor_shaut.feeling;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;

import com.google.android.gms.appindexing.AppIndex;
import com.google.android.gms.common.api.GoogleApiClient;

import static com.example.andrewtaylor_shaut.feeling.R.id.imageView;

public class MainActivity extends AppCompatActivity {

    /**
     * ATTENTION: This was auto-generated to implement the App Indexing API.
     * See https://g.co/AppIndexing/AndroidStudio for more information.
     */
    private GoogleApiClient client;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        client = new GoogleApiClient.Builder(this).addApi(AppIndex.API).build();
    }

    public void findMood(View view) {
        EditText name = (EditText) findViewById(R.id.nameEditText);
        String nameValue = name.getText().toString();

        //spinner
        Spinner moodSpinner = (Spinner) findViewById(R.id.spinner);
        String moodValue = String.valueOf(moodSpinner.getSelectedItem());

        //image view
        ImageView emotionImage = (ImageView) findViewById(imageView);

        /*set the image based on the spinner value
        switch(moodValue){
            case "happy":
                emotionImage.setImageResource(R.drawable.happy);
                break;
            case "sad":
                emotionImage.setImageResource(R.drawable.sad);
                break;
            case "mad":
                emotionImage.setImageResource(R.drawable.mad);
                break;
            case "excited":
                emotionImage.setImageResource(R.drawable.excited);
                break;
            default:
                break;
        }*/

        if(moodValue.equals("happy")){
            emotionImage.setImageResource(R.drawable.happy);
        } else if(moodValue.equals("sad")){
            emotionImage.setImageResource(R.drawable.sad);
        } else if(moodValue.equals("mad")){
            emotionImage.setImageResource(R.drawable.mad);
        } else if(moodValue.equals("excited")){
            emotionImage.setImageResource(R.drawable.excited);
        }

        //toggle button
        ToggleButton toggle = (ToggleButton) findViewById(R.id.energyToggleButton);
        boolean energy = toggle.isChecked();
        String energyString;
        if (energy) {
            energyString = "positive";
        } else {
            energyString = "negative";
        }

        //switch
        String meditate_string = "";
        Switch meditate_switch = (Switch) findViewById(R.id.switch1);
        boolean meditate = meditate_switch.isChecked();
        if (meditate) {
            meditate_string = " that meditates on ";
        }

        //radio
        RadioGroup story = (RadioGroup) findViewById(R.id.yogaRadioGroup);
        String storytype = "";
        int story_id = story.getCheckedRadioButtonId();
        switch (story_id) {
            case -1:
                storytype = "no";
                break;
            case R.id.radioButton1:
                storytype = "Hatha";
                break;
            case R.id.radioButton2:
                storytype = "Bikram";
                break;
            case R.id.radioButton3:
                storytype = "Prana";
                break;
            default:
                storytype = "no";
        }

        //check boxes
        String checkbox_string = "";
        CheckBox check1 = (CheckBox) findViewById(R.id.checkBox1);
        boolean checked1 = check1.isChecked();
        if (checked1) {
            checkbox_string += " sarcastic";
        }
        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        boolean checked2 = check2.isChecked();
        if (checked2) {
            checkbox_string += " conservative";
        }
        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);
        boolean checked3 = check3.isChecked();
        if (checked3) {
            checkbox_string += " secretive";
        }
        CheckBox check4 = (CheckBox) findViewById(R.id.checkBox4);
        boolean checked4 = check4.isChecked();
        if (checked4) {
            checkbox_string += " enlightened";
        }

        //text view
        TextView feeling = (TextView) findViewById(R.id.feelingTextView);
        feeling.setText(nameValue + " is a " + moodValue + ", " + energyString + ", and " + checkbox_string
                + " person, " + meditate_string + "trying to change the world! Also, they love to do "
                + storytype + " yoga.");
    }

}