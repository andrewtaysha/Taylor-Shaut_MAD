package com.example.andrewtaylor_shaut.storybuilder;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void rewritePoem(View view) {
        EditText name=(EditText)findViewById(R.id.nameEditText);
        String nameValue=name.getText().toString();

        EditText name_1=(EditText)findViewById(R.id.editText);
        String name1=name_1.getText().toString();

        EditText name_2=(EditText)findViewById(R.id.editText2);
        String name2=name_2.getText().toString();

        EditText name_3=(EditText)findViewById(R.id.editText3);
        String name3=name_3.getText().toString();

        EditText name_4=(EditText)findViewById(R.id.editText4);
        String name4=name_4.getText().toString();


        //check boxes
        String checkbox_string="";
        CheckBox check1=(CheckBox)findViewById(R.id.checkbox1);
        boolean checked1 = check1.isChecked();
        if(checked1){
            TextView summer=(TextView)findViewById(R.id.summerTextView);
            summer.setText("The " + name1 + " is " + name2 + ", the sun's ablaze, " +
                    "it is a time of carefree days; " +
                    "and bees abuzz that chance to " + name3 + " " +
                    "may see me snoozing in the " + name4 + ". " +
                    "- Cecil Frances Alexander, edited by " + nameValue);
        }
        CheckBox check2=(CheckBox)findViewById(R.id.checkbox2);
        boolean checked2 = check2.isChecked();
        if(checked2){
            TextView fall=(TextView)findViewById(R.id.fallTextView);
            fall.setText("The " + name1 + "s are " + name2 + ", " +
                    "a shower " + name3 + "s softly down; " +
                    "the air is fragrant, crisp, and cool, " +
                    "and once again I'm stuck in a" + name4 + ". " +
                    "- Cecil Frances Alexander, edited by " + nameValue);
        }
        CheckBox check3=(CheckBox)findViewById(R.id.checkbox3);
        boolean checked3 = check3.isChecked();
        if(checked3) {
            TextView winter=(TextView)findViewById(R.id.winterTextView);
            winter.setText("The " + name1 + "s are gone, the world is " + name2 + ", " +
                    "the winds are wild, they " + name3 + " and bite; " +
                    "the ground is thick with slush and sleet, " +
                    "and I can barely feel the " + name4 + ". " +
                    "- Cecil Frances Alexander, edited by " + nameValue);
        }
        CheckBox check4=(CheckBox)findViewById(R.id.checkbox4);
        boolean checked4 = check4.isChecked();
        if(checked4){
            TextView spring=(TextView)findViewById(R.id.springTextView);
            spring.setText("The " + name1 + "s are " + name2 + " with daffodils, " +
                    "a coat of clover cloaks the hills, " +
                    "and I must " + name3 + ", and I must sing " +
                    "to see the beauty of the " + name4 + ". " +
                    "- Cecil Frances Alexander, edited by " + nameValue);
        }
    }
}
