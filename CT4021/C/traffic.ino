int val = 0;
void setup() {
  // put your setup code here, to run once:
pinMode(2, OUTPUT); //green
pinMode(3, OUTPUT); // yellow
pinMode(4, OUTPUT); // red
pinMode(5, INPUT);// button
pinMode(6, OUTPUT);// blue
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(4, HIGH);
  digitalWrite(6, LOW);
  delay(500);
  digitalWrite(4, LOW);
  digitalWrite(6, HIGH);
 //val = digitalRead(5);
  //if(val == LOW) {
    //digitalWrite(2, HIGH);
    //digitalWrite(3, LOW);
    //digitalWrite(4, LOW);
    //digitalWrite(6, LOW);
  //}
  //else{
    //delay(2000);
    //digitalWrite(2, LOW);
    //digitalWrite(3, HIGH);
    //delay(2000);
    //digitalWrite(4, HIGH);
    //digitalWrite(2, LOW);
    //digitalWrite(3, LOW);
    //delay(3000);
    //digitalWrite(6, HIGH);
    //delay(8000);
    //digitalWrite(6, LOW);
    //delay(3000);
    //digitalWrite(2, LOW);
    //digitalWrite(3, HIGH);
    //delay(2000);
    //digitalWrite(4, LOW);
    //digitalWrite(2, HIGH);
    //digitalWrite(3, LOW);
  //}
}
