int ledpin = 3;
int ldrpin = A0;
int ldr_min = 0;
int ldr_max = 50;
int led_min = 0;
int led_max = 255;
int value = 0;

void setup()
{
  Serial.begin(9600);
}
void loop()
{
  value = analogRead(ldrpin);
  value = constrain(value, ldr_min, ldr_max);
  value = map(value, ldr_min, ldr_max, led_max, led_min);
  Serial.print("LDR=");
  Serial.print(analogRead(ldrpin));
  Serial.print(", PWM=");
  Serial.println(value);
  analogWrite(ledpin, value);
  delay(300);
}

