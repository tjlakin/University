#include <Servo.h> // importing the servo motor library
#include <Keypad.h>// importing the keypad library

Servo motor;
const int rpin = 11; // The red pin from the RGB LED is assigned to digital pin 11
const int bpin = 12; // The blue pin from the RGB LED is assigned to digital pin 12
const int gpin = 13; // The green pin from the RGB LED is assigned to digital pin 13
String pass = "6852"; // The password to unlock the servo motor lock, change for different password
String userpass = ""; // A string so that the user can enter their password attempt

// Configure the keypad so the user can enter their password
const byte ROWS = 4;
const byte COLS = 4;
char keys[ROWS][COLS] = {
{'1','2','3','A'},
{'4','5','6','B'},
{'7','8','9','C'},
{'*','0','#','D'}
};
byte rowPins[ROWS] = { 9, 8, 7, 6 };
byte colPins[COLS] = { 5, 4, 3, 2 };
Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void setup()
  //setup code, runs only once
{
motor.attach(10); // Servo motor attached to digital pin 10
motor.write(0); // Set the servo motor to its locked position
pinMode (rpin, OUTPUT); // Set the pin mode for the rpin as output
pinMode (bpin, OUTPUT); // Set the pin mode for the bpin as output
pinMode (gpin, OUTPUT); // Set the pin mode for the gpin as output
Serial.begin(9600);
Serial.println("ENTER PASSWORD"); // Print to serial monitor "ENTER PASSWORD"
}

void loop()
  //main code for the lock, runs repeatedly:
{

analogWrite(rpin, 255); analogWrite(bpin, 0); analogWrite(gpin, 0); // Set the RGB LED to the colour Red
userpass = ""; // reset the string userpass so the user can enter a new password

// for loop to allow the user to enter the 4-digit password
for (int i = 0; i<4; i++){
  char key = keypad.getKey(); // gets the key that has been pressed on the keypad
  if (key != NO_KEY)
  {
    userpass += key; // add the key pressed to the string userpass
  }
}

if (userpass == pass) // if the password entered by the user equals the password for the system start the unlock process.
{
  Serial.println("UNLOCKING");
  // RGB LED flashes orange to signal correct password.
  analogWrite(rpin, 255); analogWrite(bpin, 0); analogWrite(gpin, 165);
  delay(1000);
  analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
  delay(1000);
  analogWrite(rpin, 255); analogWrite(bpin, 0); analogWrite(gpin, 165);
  delay(1000);
  analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
  delay(1000);
  analogWrite(rpin, 255); analogWrite(bpin, 0); analogWrite(gpin, 165);
  delay(1000);
  analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
  delay(1000);
  analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 255); // Set the RGB LED back to the colour Green

  Serial.println("UNLOCKED");//Print to serial monitor "UNLOCKED"
  motor.write(90); // Set the motor's position to the unlock mode
  delay(10000); // Wait 10 seconds
  motor.write(0);// Relock the system
  analogWrite(rpin, 255); analogWrite(bpin, 0); analogWrite(gpin, 0); // Set the RGB LED back to the colour Red
  Serial.println("LOCKED");//Print to serial monitor "LOCKED"
}
if (userpass != pass) //if the password entered by the user does not match the password then run the invalid password process.
{
 Serial.println("INCORRECT PASSWORD");//Print to serial monitor "INCORRECT PASSWORD"
   
 //RGB LED flashes blue and red to signal that the user has entered the wrong password.
 analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
 delay(250);
 analogWrite(rpin, 65); analogWrite(bpin, 225); analogWrite(gpin, 105); 
 delay(250);
 analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
 delay(250);
 analogWrite(rpin, 255 ); analogWrite(bpin, 0); analogWrite(gpin, 0);
 delay(250);
 analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
 delay(250);
 analogWrite(rpin, 65); analogWrite(bpin, 225); analogWrite(gpin, 105); 
 delay(250);
 analogWrite(rpin, 0); analogWrite(bpin, 0); analogWrite(gpin, 0);
 delay(250);
 analogWrite(rpin, 255 ); analogWrite(bpin, 0); analogWrite(gpin, 0);
}
}
