
// LIBRARY ALAT
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
/*
  // #include <RTClib.h>
  // #include <Servo.h>
  // #include <HX711.h>
*/

// lcd
LiquidCrystal_I2C lcd(0x27, 20, 4);

/*
  // rtc
  RTC_DS3231 rtc;
  char dataHari[7][12] = {"Minggu", "Senin", " Selasa", "Rabu"," Kamis", "Jum'at", " Sabtu"};
  int tanggal, bulan, tahun, jam, menit, detik;
  String hari;

  // loadcell tabung
  #define LOADCELL_TABUNG_DOUT_PIN 2
  #define LOADCELL_TABUNG_SCK_PIN 3
  HX711 lcTabung;
  float calibration_factor_tabung = 27.5;
  float beratTabung;

  // loadcell wadah
  #define LOADCELL_WADAH_DOUT_PIN  4
  #define LOADCELL_WADAH_SCK_PIN 5
  HX711 lcWadah;
  float calibration_factor_wadah = 30.5;
  float beratWadah;
*/

// ultrasonic tabung
#define trigPinTabung 6
#define echoPinTabung 7
float durasiTabung, tinggiAirTabung;
// jarak antara sensor ke tabung = 17 cm

// relay
#define relayPin 8

/*
  // servo
  // Servo myservo;
  // #define servoPin 9
*/

// ultrasonic wadah
#define trigPinWadah 10
#define echoPinWadah 11
float durasiWadah, tinggiAirWadah;
// jarak antara sensor ke wadah = 12.2

void initLCD(){
  lcd.setCursor(1,0);
  lcd.print("TUGAS AKHIR");
  lcd.setCursor(2,0);
  lcd.print("INTERNET OF THINGS");
  delay(1000);
  lcd.clear();
  lcd.setCursor(1,0);
  lcd.print("Oleh : ");
  lcd.setCursor(2,0);
  lcd.print("M.Aswin.Sigit");
  delay(1000);
  lcd.clear();
  lcd.setCursor(1,0);
  lcd.print("MULAI PROGRAM");
  lcd.setCursor(2,0);
  lcd.print("AUTOMATIC CAT FEEDER");
}

//loadcell config
/*
  void LCTabung(){
    DateTime now = rtc.now();
    tanggal = now.day();
    bulan = now.month();
    tahun = now.year();
    detik = now.second();
    jam = now.hour();
    menit = now.minute();
    hari = dataHari[now.dayOfTheWeek()];
  }

  void LCWadah(){
    // koding disini
  }
*/

void USTabung(){
  lcd.clear();
  digitalWrite(trigPinTabung, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPinTabung, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPinTabung, LOW);

  durasiTabung = pulseIn(echoPinTabung, HIGH);
  tinggiAirTabung = durasiTabung*0.034/2;

  lcd.setCursor(0, 0);
  lcd.print("TINGGI AIR TABUNG : ");
  lcd.setCursor(0, 1);
  lcd.print("PUMP : ");
  delay(10);

  if(tinggiAirTabung >= 17.00){
    digitalWrite(relayPin, HIGH);
    lcd.setCursor(7,0);
    lcd.print("LOW");
    lcd.setCursor(7,1);
    lcd.print("ON");
    Serial.print("TINGGI AIR TABUNG: ");
    Serial.print(tinggiAirTabung);
    Serial.println();
    Serial.print("PUMP : MENYALA");
    Serial.println();
    delay(1000);
  }

  else if (tinggiAirTabung < 8.5 && tinggiAirTabung > 4.25) {
    boolean pumpState = digitalRead(relayPin);
    if(pumpState == HIGH){
      lcd.setCursor(7,0);
      lcd.print("HIGH");
      lcd.setCursor(7,1);
      lcd.print("ON");
      Serial.print("TINGGI AIR TABUNG: ");
      Serial.print(tinggiAirTabung);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
    else{
      lcd.setCursor(7,0);
      lcd.print("HIGH");
      lcd.setCursor(7,1);
      lcd.print("OFF");
      Serial.print("TINGGI AIR TABUNG: ");
      Serial.print(tinggiAirTabung);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
  }

  else if (tinggiAirTabung < 7.00 && tinggiAirTabung > 8.5) {
    boolean pumpState = digitalRead(relayPin);
    if(pumpState == HIGH){
      lcd.setCursor(7,0);
      lcd.print("MEDIUM");
      lcd.setCursor(7,1);
      lcd.print("ON");
      Serial.print("TINGGI AIR TABUNG: ");
      Serial.print(tinggiAirTabung);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
    else{
      lcd.setCursor(7,0);
      lcd.print("MEDIUM");
      lcd.setCursor(7,1);
      lcd.print("OFF");
      Serial.print("TINGGI AIR TABUNG: ");
      Serial.print(tinggiAirTabung);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
  }

  else if (tinggiAirTabung <= 4.25) {
    digitalWrite(relayPin, LOW);
    lcd.setCursor(7,0);
    lcd.print("FULL");
    lcd.setCursor(7,1);
    lcd.print("OFF");
    Serial.print("TINGGI AIR TABUNG: ");
    Serial.print(tinggiAirTabung);
    Serial.println();
    Serial.print("PUMP : MATI");
    Serial.println();
    delay(1000);
  }

  delay(1000);
}

void USWadah(){
  lcd.clear();
  digitalWrite(trigPinWadah, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPinWadah, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPinWadah, LOW);

  durasiWadah = pulseIn(echoPinWadah, HIGH);
  tinggiAirWadah = durasiWadah*0.034/2;

  lcd.setCursor(0, 0);
  lcd.print("TINGGI AIR WADAH : ");
  lcd.setCursor(0, 1);
  lcd.print("PUMP : ");
  delay(10);

  if(tinggiAirWadah >= 12.20){
    digitalWrite(relayPin, HIGH);
    lcd.setCursor(7,0);
    lcd.print("LOW");
    lcd.setCursor(7,1);
    lcd.print("ON");
    Serial.print("TINGGI AIR WADAH : ");
    Serial.print(tinggiAirWadah);
    Serial.println();
    Serial.print("PUMP : MENYALA");
    Serial.println();
    delay(1000);
  }

  else if (tinggiAirWadah < 6.10 && tinggiAirWadah > 3.05) {
    boolean pumpState = digitalRead(relayPin);
    if(pumpState == HIGH){
      lcd.setCursor(7,0);
      lcd.print("HIGH");
      lcd.setCursor(7,1);
      lcd.print("ON");
      Serial.println("TINGGI AIR WADAH : ");
      Serial.print(tinggiAirWadah);
      Serial.println("PUMP : ");
      Serial.print(pumpState);
      delay(1000);
    }
    else{
      lcd.setCursor(7,0);
      lcd.print("HIGH");
      lcd.setCursor(7,1);
      lcd.print("OFF");
      Serial.print("TINGGI AIR WADAH : ");
      Serial.print(tinggiAirWadah);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
  }

  else if (tinggiAirWadah < 12.20 && tinggiAirWadah > 6.10) {
    boolean pumpState = digitalRead(relayPin);
    if(pumpState == HIGH){
      lcd.setCursor(7,0);
      lcd.print("MEDIUM");
      lcd.setCursor(7,1);
      lcd.print("ON");
      Serial.print("TINGGI AIR WADAH : ");
      Serial.print(tinggiAirWadah);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
    else{
      lcd.setCursor(7,0);
      lcd.print("MEDIUM");
      lcd.setCursor(7,1);
      lcd.print("OFF");
      Serial.print("TINGGI AIR WADAH : ");
      Serial.print(tinggiAirWadah);
      Serial.println();
      Serial.print("PUMP : ");
      Serial.print(pumpState);
      Serial.println();
      delay(1000);
    }
  }

  else if (tinggiAirWadah <= 3.05) {
    digitalWrite(relayPin, LOW);
    lcd.setCursor(7,0);
    lcd.print("FULL");
    lcd.setCursor(7,1);
    lcd.print("OFF");
    Serial.print("TINGGI AIR WADAH : ");
    Serial.print(tinggiAirWadah);
    Serial.println();
    Serial.print("PUMP : MATI");
    Serial.println();
    delay(1000);
  }
  delay(1000);
}

// 5. method servo
// void bukaServo (int jumlah){
//   for (int i=1; i<= jumlah; i++){
//     for(int posisi=0; posisi <=180; posisi++){
//       myServo.write(posisi);
//       delay(10);
//     }
//     for(int posisi = 180; posisi >= 0; posisi--){
//       myServo.write(posisi);
//       delay(10);
//     }
// }

void setup() {

  Serial.begin(9600);

  Serial.println("Insialisasi Wire");
  Wire.begin();

/*
  Serial.println("Inisialisasi RTC");
  if (! rtc.begin()) {
    Serial.println("RTC Tidak Ditemukan");
    Serial.flush();
    abort();
  }
  // Atur Waktu, upload untuk set waktu, kemudian beri komentar lalu upload kembali
  // rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  // atur secara manual
  // rtc.adjust(DateTime(2022,5,01,13,57,0));

  Serial.println("Inisialisasi Loadcell Tabung");
  // lcTabung.begin(LOADCELL_TABUNG_DOUT_PIN, LOADCELL_TABUNG_SCK_PIN);
  // lcTabung.set_scale(calibration_factor_tabung);

  // loadcell wadah setup
  Serial.println("Inisialisasi Loadcell Wadah");
  lcWadah.begin(LOADCELL_WADAH_DOUT_PIN, LOADCELL_WADAH_SCK_PIN);
  lcWadah.set_scale(calibration_factor_wadah);
*/

  Serial.println("Inisialisasi Ultrasonic Tabung");
  pinMode(echoPinTabung, INPUT);
  pinMode(trigPinTabung, OUTPUT);

  Serial.println("Inisialisasi Ultrasonic Wadah");
  pinMode(echoPinWadah, INPUT);
  pinMode(trigPinWadah, OUTPUT);

/*
  // servo setup tabung
  Serial.println("Inisialisasi Servo");
  myServo.attach(servoPin);
  myServo.write(0);
*/
  Serial.println("Inisialisasi Relay");
  pinMode(relayPin, OUTPUT);

  Serial.println("Inisialisasi LCD 20x4 I2C");
  lcd.init();
  lcd.init();
  lcd.backlight();
  initLCD();

  Serial.println();
  Serial.println("MULAI PROGRAM");
}

void loop() {
  readSensor();
}

void readSensor(){
  // LCTabung();
  // LCWadah();
  USTabung();
  USWadah();
}

// catatan kabel
/*
  //   1. main voltage :
  //      putih - orange    = ground
  //      orange - kuning   = 5.0v

  //   2. loadcell :

  //     a. Grounding
  //        Hijau (merah-kuning)  = GROUND  (-)
  //        Biru  (putih-hitam)   = POSITIF (+)

  //     b. loadcell tabung :
  //       kabel load cell tabung :
  //        hx711 :
  //        merah   -  kuning     = E+
  //        hitam   -  orange     = E-
  //        putih   -  biru       = A-
  //        hijau   -  hijau.     = A+

  //        Sensor :
  //        abu             = DT   (2)
  //        coklat - putih  = SCK  (3)

  //     c. loadcell wadah :
  //        Sensor:
  //        Biru    = DT  (4)
  //        Kuning  = SCK (5)

  //   3. ultrasonic

  //      kabel gnd-vcc ultrasonik tabung dan wadah:
  //      biru       = positif (+)
  //      orange     = negatif (-)

  //      kabel trig - echo ultrasonic tabung :
  //      abu.       = trig (6)
  //      putih      = echo (7)

  //      kabel trig-echo ultrasonic wadah :
  //      hijau      = trig (10)
  //      kuning     = echo (11)

  //   4. relay
  //      hitam   = ground
  //      putih  = vcc
  //      ungu    = input (8)

  //   5. rtc
  //      ungu     = ground
  //      merah    = vcc
  //      kuning   = SDA ANALOG PIN (4)
  //      abu      = SCL ANALOG PIN (5)

  //   6. lcd
  //      Orange  = SDA
  //      Kuning  = SCL
  //      Coklat  = Positif (+)
  //      ungu    = Negatif (-)
*/

