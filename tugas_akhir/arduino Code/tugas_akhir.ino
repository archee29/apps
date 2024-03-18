// add library alat esp, arduino and database

// #include <Arduino.h>
// #if defined (ESP32)
// #elif defined (ESP8266)
// #endif

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <WiFi.h>
#include <WiFiManager.h>
#include <Firebase_ESP_Client.h>

#include "addons/TokenHelper.h"
#include "addons/RTDBHelper.h"

// library alat sensor
#include <Wire.h>
#include <Servo.h>
#include <LiquidCrystal_I2C.h>
#include "HX711.h"
#include <RTClib.h>

// define wifi dan koneksi ke database
// #define WIFI_SSID "Tugasakhir"
// #define WIFI_PASSWORD "wifisigit"
#define API_KEY "AIzaSyD9cMliTs9G41vgRLcjS2VacvtMWWR1doQ"
#define DATABASE_URL "tugas-akhir-3c0d9-default-rtdb.asia-southeast1.firebasedatabase.app/"
// #define DATABASE_AUTH "pTwKOZa4sifddtLnt0kFt8NJVHh3VXf1gDWdgUnh"
#define USER_EMAIL "mhsigit01@gmail.com"
#define USER_PASSWORD "muhammadsigit292001"

// Firebase config
FirebaseData firebaseData;
FirebaseAuth auth;
FirebaseConfig config;
FirebaseJson jadwalPagiJson;
FirebaseJson jadwalSoreJson;

// Timer variables (send new reading every three minutes)
unsigned long sendDataPrevMillis = 0 ;
unsigned long timerDelay = 180000;

// variable user uid
String uid;

// Database main path and parent path
String databasePath;

String jadwalPagiNode;
String jadwalSoreNode;

// pump and servo status
String pumpStatus;
String servoStatus;

String status;


// wifi setup variable
bool res;
bool mode;

// String status = "on";

// RTC
RTC_DS3231 rtc;
char dataHari[7][12] = {"Minggu", "Senin", " Selasa", "Rabu"," Kamis", "Jum'at", " Sabtu"};
int tanggal, bulan, tahun, jam, menit, detik;
String hari;

// lcd
LiquidCrystal_I2C lcd(0x27, 20, 4);

// Program LoadCell tabung
#define LOADCELL_TABUNG_DOUT_PIN 2
#define LOADCELL_TABUNG_SCK_PIN 3
HX711 lcTabung;
float calibration_factor_tabung = 27.5;
float beratTabung;

// program loadcell wadah
#define LOADCELL_WADAH_DOUT_PIN  4
#define LOADCELL_WADAH_SCK_PIN 5
HX711 lcWadah;
float calibration_factor_wadah = 30.5;
float beratWadah;

// Ultrasonic tabung
#define echoPinTabung 6
#define trigPinTabung 7
long durasiTabung;
int jarakTabung, tinggiAirTabung;
int tinggiSensorTabung = 17; // belum ditambah tabung baru (hitungan masih 1 tabung)

// relay
#define relayPin 8

// Servo
#define servoPin 9
Servo myServo;

//  ultrasonic wadah
#define echoPinWadah 10
#define trigPinWadah 11
long durasiWadah;
int jarakWadah, tinggiAirWadah;
float tinggiSensorWadah = 12.2;

// inisialisasi wifi
void initWiFi(){
    // WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
    // Serial.print("Membuat Koneksi ke WIFI");
    // while(WiFi.status() != WL_CONNECTED){
    //   Serial.print(".");
    //   delay(300);
    // }
    // Serial.println();
    // Serial.print("Koneksi ke Internet dengan IP : ");
    // Serial.println(WiFi.localIP());
    // Serial.println();
    WiFiManager wifiConfig;
    WiFi.mode(WIFI_STA);
    res = wifiConfig.autoConnect("Auto_CAF", "tugasakhir");
    if(!res) {
      Serial.println("Koneksi Gagal");
      lcd.setCursor(0,0);
      lcd.print("Status Offline");
      mode = false;
    }
    else {
        delay(1000);
        Serial.println("Koneksi Berhasil");
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Status Online");
        String WIFI_SSID = wifiConfig.getWiFiSSID();
        String WIFI_PASSWORD = wifiConfig.getWiFiPass();
        WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
        mode = true;
    }
}

// inisialisasi LCD
void initLCD(){
  lcd.clear();
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

// inisialisasi firebase RTDB
void initFirebase(){
  // config koneksi ke firebase
  config.api_key = API_KEY;
  config.database_url = DATABASE_URL;

  // calling auth email and password user
  auth.user.email = USER_EMAIL;
  auth.user.password = USER_PASSWORD;

  Firebase.reconnectWiFi(true);

  firebaseData.setReadTimeout(firebaseData, 1000 * 60);
  firebaseData.setwriteSizeLimit(firebaseData, "tiny");

  // Assign the callback function for the long running token generation task  and see addons/TokenHelper.h
  config.token_status_callback = tokenStatusCallback;

  // Assign the maximum retry of token generation
  config.max_token_generation_retry = 5;

  // Initialize the library with the Firebase authen and config
  Firebase.begin(&config, &auth);

  delay(2000);

  // Getting the user UID might take a few seconds
  Serial.println("Mendapatkan User UID");
  while((auth.token.uid) == ""){
    Serial.print(".");
    delay(1000);
  }

  // Print user UID
  uid = auth.token.uid.c_str();
  Serial.print("User UID : ");
  Serial.print(uid);

  // Update database path
  databasePath = "/UsersData" + uid + "/";
}

// function sensor loadcell tabung
void LCTabung(){

  DateTime now = rtc.now();
  now = rtc.now();
  jam = now.hour(), DEC;
  menit = now.minute(), DEC;
  detik = now.second(), DEC;
  tanggal = now.day(), DEC;
  bulan = now.month(), DEC;
  tahun = now.year(), DEC;
  hari = dataHari[now.dayOfTheWeek()];

  beratTabung = lcTabung.get_units(25);

  // set jadwal pagi
  if(jam == 8 & menit == 0 & detik == 0){

    if(beratTabung < 0){
     beratTabung = 0.0;
    }

    else if(beratTabung < 1000){
      // lcd
      // lcd.clear();
      // lcd.setCursor(0,0);
      // lcd.print("Silahkan Timbang");
      // lcd.setCursor(0,1);
      // lcd.print("Berat : ");
      // lcd.print(beratTabung, 1);
      // lcd.print(" g");

      bukaServo(2);
    }

    lcTabung.power_down();
    delay(2000);
    lcTabung.power_up();

  }

  // set jadwal sore
  else if(jam == 17 & menit == 1 & detik == 1){

    if(beratTabung < 0){
     beratTabung = 0.0;
    }

    else if(beratTabung < 1000){
      // lcd
      // lcd.clear();
      // lcd.setCursor(0,0);
      // lcd.print("Silahkan Timbang");
      // lcd.setCursor(0,1);
      // lcd.print("Berat : ");
      // lcd.print(beratTabung, 1);
      // lcd.print(" g");

      bukaServo(2);
    }

    lcTabung.power_down();
    delay(2000);
    lcTabung.power_up();

  }

  delay(1000);

}

// function sensor loadcell wadah
void LCWadah(){

  DateTime now = rtc.now();
  now = rtc.now();
  jam = now.hour(), DEC;
  menit = now.minute(), DEC;
  detik = now.second(), DEC;
  tanggal = now.day(), DEC;
  bulan = now.month(), DEC;
  tahun = now.year(), DEC;
  hari = dataHari[now.dayOfTheWeek()];

  beratWadah = lcWadah.get_units(25);

  // set jadwal pagi
  if(jam == 8 & menit == 0 & detik == 0){

    if(beratWadah < 0){
    beratWadah = 0.0;
    }

    else if(beratWadah < 1000){
      // lcd
      // lcd.clear();
      // lcd.setCursor(0,0);
      // lcd.print("Silahkan Timbang");
      // lcd.setCursor(0,1);
      // lcd.print("Berat : ");
      // lcd.print(beratWadah, 1);
      // lcd.print(" g");

      bukaServo(2);
    }

    lcWadah.power_down();
    delay(2000);
    lcWadah.power_up();

  }

  // set jadwal sore
  else if(jam == 17 & menit == 1 & detik == 1){

    if(beratWadah < 0){
     beratTabung = 0.0;
    }

    else if(beratTabung < 1000){
      // lcd
      // lcd.clear();
      // lcd.setCursor(0,0);
      // lcd.print("Silahkan Timbang");
      // lcd.setCursor(0,1);
      // lcd.print("Berat : ");
      // lcd.print(beratTabung, 1);
      // lcd.print(" g");

      bukaServo(2);
    }

    lcTabung.power_down();
    delay(2000);
    lcTabung.power_up();

  }

  delay(1000);

}

// function buka servo
void bukaServo(int jumlah){

  for (int i=1; i<= jumlah; i++){

    for(int posisi=0; posisi <=180; posisi++){
      myServo.write(posisi);
      delay(10);
    }

    for(int posisi = 180; posisi >= 0; posisi--){
      myServo.write(posisi);
      delay(10);
    }

  }

  // servoTabung.write(0);
  // delay(1000);
  // servoTabung.write(90);
  // delay(1000);

}

// function sensor ultrasonic tabung
void USTabung(){
  digitalWrite(trigPinTabung, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPinTabung, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPinTabung, LOW);
  durasiTabung = pulseIn(echoPinTabung, HIGH);
  jarakTabung = durasiTabung/58;

  tinggiAirTabung = tinggiSensorTabung - jarakTabung;

  if(tinggiAirTabung < 0){
    tinggiAirTabung = 0;
  }

  else if(tinggiAirTabung <= 6){
    digitalWrite(relayPin, LOW);
    // Serial.print("Jarak Tabung : ");
    // Serial.print(tinggiAirTabung);
    // Serial.print(" cm");
    // Serial.println();
  }

  else if(tinggiAirTabung >= 12){
    digitalWrite(relayPin, HIGH);
    // Serial.print("Jarak Tabung : ");
    // Serial.print(tinggiAirTabung);
    // Serial.print(" cm");
    // Serial.println();
  }
  else{
    Serial.println("Error");
  }
  delay(1000);
}

// function sensor ultrasonic wadah
void USWadah(){
  digitalWrite(trigPinWadah, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPinWadah, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPinWadah, LOW);
  durasiWadah = pulseIn(echoPinWadah, HIGH);
  jarakWadah = durasiWadah/58;

  tinggiAirWadah = tinggiSensorWadah - jarakWadah;

  if(tinggiAirWadah < 0){
    tinggiAirWadah = 0;
  }

  else if(tinggiAirWadah <= 4){
    digitalWrite(relayPin, LOW);
    // Serial.print("Jarak Wadah : ");
    // Serial.print(tinggiAirWadah);
    // Serial.print(" cm");
    // Serial.println();
  }

  else if(tinggiAirWadah >= 7){
    digitalWrite(relayPin, HIGH);
    // Serial.print("Jarak Wadag : ");
    // Serial.print(tinggiAirWadah);
    // Serial.print(" cm");
    // Serial.println();
  }
  delay(1000);
}

void initJson(){
  DateTime now = rtc.now();

  // jadwal pagi
  jadwalPagiJson.add("tabungMakan", beratTabung);
  jadwalPagiJson.add("wadahMakan", beratWadah);
  jadwalPagiJson.add("tabungMinum", tinggiAirTabung);
  jadwalPagiJson.add("wadahMinum", tinggiAirWadah);
  jadwalPagiJson.add("pump", pumpStatus);
  jadwalPagiJson.add("servo", servoStatus);
  jadwalPagiJson.add("timestamp", String("DateTime::CREATED_AT : \t") + now.timestamp(DateTime::TIMESTAMP_FULL));

  // jadwal sore
  jadwalSoreJson.add("tabungMakan", beratTabung);
  jadwalSoreJson.add("wadahMakan", beratWadah);
  jadwalSoreJson.add("tabungMinum", tinggiAirTabung);
  jadwalSoreJson.add("wadahMinum", tinggiAirWadah);
  jadwalSoreJson.add("pump", pumpStatus);
  jadwalSoreJson.add("servo", servoStatus);
  jadwalSoreJson.add("timestamp", String("DateTime::CREATED_AT : \t") + now.timestamp(DateTime::TIMESTAMP_FULL));
}

void pump(){
  if(Firebase.getString(&firebaseData, jadwalPagiNode.c_str(), status)){
    if(firebaseData.dataType() == "string"){
      String pumpStatus = firebaseData.stringData();
      if(pumpStatus == "ON"){
        Serial.println("PUMP NYALA");
        digitalWrite(relayPin, HIGH);
      }
      else if(pumpStatus == "OFF"){
        Serial.println("PUMP MATI");
        digitalWrite(relayPin, LOW);
      }
      else{
        Serial.println("Source Code Salah isi dengan Data ON/OFF");
      }
    }
  }
  else{
     Serial.println("GAGAL MENGIRIM DATA");
     Serial.println("Error : " + firebaseData.errorReason());
     Serial.println("------------------------------------");
     Serial.println();
  }
}

void servo(){
}

void setup() {
  Serial.begin(115200);

  // Wire setup
  Wire.begin();

  // RTC setup
  rtc.begin();
  rtc.adjust(DateTime(F(__DATE__),F(__TIME__)));

  // lcd setup
  lcd.begin();
  // lcd.init(20,4);
  lcd.backlight();

  // loadcell tabung setup
  lcTabung.begin(LOADCELL_TABUNG_DOUT_PIN, LOADCELL_TABUNG_SCK_PIN);
  lcTabung.set_scale(calibration_factor_tabung);
  // lcTabung.tare(50);

  // loadcell wadah setup
  lcWadah.begin(LOADCELL_WADAH_DOUT_PIN, LOADCELL_WADAH_SCK_PIN);
  lcWadah.set_scale(calibration_factor_wadah);
  // lcWadah.tare(50);

  // ultrasonic tabung setup
  pinMode(echoPinTabung, INPUT);
  pinMode(trigPinTabung, OUTPUT);

  // ultrasonic wadah setup
  pinMode(echoPinWadah, INPUT);
  pinMode(trigPinWadah, OUTPUT);

  // servo setup tabung
  myServo.attach(servoPin);
  myServo.write(0);

  // Relay and pump setup
  pinMode(relayPin, OUTPUT);

  delay(1000);

  Serial.println("START PROGRAM");

  // call class init LCD
  initLCD();

  // call class init wifi
  initWiFi();

  // call class init firebase
  initFirebase();

  // call class init json
  initJson();
}

void loop() {

  // readSensor();
  // displayLCD();

  // elif untuk mode program
    if(mode == false){
      readSensor();
      displayLCD();
    }

    else{
      readSensor();
      // displayLCD();
      sendSensorData();
      delay(500);
    }

}

void displayLCD(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Berat Tabung : ");
  lcd.print(beratTabung, 1);
  lcd.setCursor(0,1);
  lcd.print("Air Tabung : ");
  lcd.print(tinggiAirTabung);
  lcd.setCursor(0,2);
  lcd.print("Berat Wadah : ");
  lcd.print(beratWadah, 1);
  lcd.setCursor(0,3);
  lcd.print("Air Wadah : ");
  lcd.print(tinggiAirWadah);
}

void readSensor(){

  LCTabung();

  LCWadah();

  USTabung();

  USWadah();

  delay(500);

}

void sendSensorData(){
    DateTime now = rtc.now();
    now = rtc.now();

      if(Firebase.isTokenExpired()){
        Firebase.refreshToken(&config);
        Serial.println("Refresh Token");
      }
      // store data ke firebase RTDB
      else if(Firebase.ready() && (millis() - sendDataPrevMillis > timerDelay || sendDataPrevMillis == 0) ){

        sendDataPrevMillis = millis();

        jadwalPagiNode = databasePath + "/jadwalPagi";
        jadwalSoreNode = databasePath + "/jadwalSore";

        // store data ke database
        // Firebase.RTDB.setJSON(&firebaseData, jadwalPagiNode.c_str(), &jadwalPagiJson);
        // Firebase.RTDB.setJSON(&firebaseData, jadwalSoreNode.c_str(), &jadwalSoreJson);

        if(Firebase.RTDB.setJSON(&firebaseData, jadwalPagiNode.c_str(), &jadwalPagiJson)){
          Serial.println("PASSED");
          Serial.println("PATH : " + firebaseData.dataPath());
          Serial.println("TYPE: " + firebaseData.dataType());
          Serial.print("VALUE: ");
          //see addons/RTDBHelper.h
          printResult(firebaseData);
          Serial.println("------------------------------------");
          Serial.println();
        }
        else{
          Serial.println("GAGAL MENGIRIM DATA");
          Serial.println("Error : " + firebaseData.errorReason());
          Serial.println("------------------------------------");
          Serial.println();
        }

        if(Firebase.RTDB.setJSON(&firebaseData, jadwalSoreNode.c_str(), &jadwalSoreJson)){
          Serial.println("PASSED");
          Serial.println("PATH : " + firebaseData.dataPath());
          Serial.println("TYPE: " + firebaseData.dataType());
          Serial.print("VALUE: ");
          //see addons/RTDBHelper.h
          printResult(firebaseData);
          Serial.println("------------------------------------");
          Serial.println();
        }
        else{
          Serial.println("GAGAL MENGIRIM DATA");
          Serial.println("Error : " + firebaseData.errorReason());
          Serial.println("------------------------------------");
          Serial.println();
        }
      }

      else{
        Serial.println("Tidak Dapat Mengirimkan Data");
      }
}