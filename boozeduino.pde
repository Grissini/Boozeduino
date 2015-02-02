/*

@ Code for interfacing Alcohol Gas Sensor MQ-3 with Arduino
@ Code by Daniel Spillere Andrade and Daniel Amato Zabotti
@ daniel@danielandrade.net / danielzabotti@gmail.com
@ www.DanielAndrade.net

*/


const int analogPin = 0; // the pin that the sensor wire is attached to
const int ledCount = 32; // the number of LEDs in the bar graph

int ledPins[] = {
  53,52,51,50,49,48,47,46,46,45,44,43,42,41,40,39,38,37,36,
  35,34,33,32,31,30,29,28,27,26,25,24,23,22};
// Here we have the number of LEDs to use in the BarGraph   53 is green 22 is red


void setup() {

for (int thisLed = 0; thisLed < ledCount; thisLed++) {
pinMode(ledPins[thisLed], OUTPUT);
}}

void loop() {
//This is the code to light up LED's
int sensorReading = analogRead(analogPin);

int ledLevel = map(sensorReading, 500, 1023, 0, ledCount);


for (int thisLed = 0; thisLed < ledCount; thisLed++) {

if (thisLed < ledLevel) {
digitalWrite(ledPins[thisLed], HIGH);
}

else {
digitalWrite(ledPins[thisLed], LOW);
} }} 
