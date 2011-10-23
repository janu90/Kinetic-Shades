// Controlling a servo position using a potentiometer (variable resistor) 
// by Michal Rinott <http://people.interaction-ivrea.it/m.rinott> 

#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
Servo mysecondservo;
Servo mythirdservo;

int potpin = 0;  // analog pin used to connect the potentiometer
int val;    // variable to read the value from the analog pin 
 
void setup() 
{ 
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
  mysecondservo.attach(10);
  mythirdservo.attach(11);
} 
 
void loop() 
{ 
  val = analogRead(potpin);            // reads the value of the potentiometer (value between 0 and 1023) 
  val = map(val, 0, 923, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo.write(val);       // sets the servo position according to the scaled value 
  mysecondservo.write(val);
  mythirdservo.write(val);
  delay(15);             // waits for the servo to get there 
  Serial.print(val);
} 
