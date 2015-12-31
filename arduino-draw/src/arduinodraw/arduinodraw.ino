#include <Servo.h>

//import AFMotor.h after installing

Servo servo //declare servo

//declare  steppers and initialize

String gcode = "";


void setup(){ //begin Serial, begin to read in gcode
  Serial.begin(9600);
  servo.attach(9);
}

void loop(){
  if(Serial.available()){
    gcode = Serial.read().toString();
  }

}

gcodeProcess(){ //will handle converting gcode into whatever actual motor move instructions that the arduino will nedd.

}
