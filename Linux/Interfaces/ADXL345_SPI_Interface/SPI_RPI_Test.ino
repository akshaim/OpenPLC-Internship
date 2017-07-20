
void setup() {
  // put your setup code here, to run once:
pinMode(MOSI, OUTPUT);
SPCR |= _BV(SPE);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
        if(SPSR)
        {
          Serial.println(SPDR);
        }
}
