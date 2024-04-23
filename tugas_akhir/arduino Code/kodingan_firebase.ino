#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Firebase_ESP_Client.h>
#include "addons/TokenHelper.h"
#include "addons/RTDBHelper.h"

#define WIFI_SSID "EXO"
#define WIFI_PASSWORD "27052001"
#define API_KEY "AIzaSyD9cMliTs9G41vgRLcjS2VacvtMWWR1doQ"
#define DATABASE_URL "tugas-akhir-3c0d9-default-rtdb.asia-southeast1.firebasedatabase.app/"
#define USER_EMAIL "mhsigit01@gmail.com"
#define USER_PASSWORD "muhammadsigit292001"

FirebaseData firebaseData;
FirebaseAuth auth;
FirebaseConfig config;
FirebaseJson jadwalPagiJson;
FirebaseJson jadwalSoreJson;

unsigned long sendDataPrevMillis = 0;
unsigned long timerDelay = 180000;

int count = 0;

String uid;
String databasePath;
String jadwalPagiNode;
String jadwalSoreNode;

void initWiFi(){
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Connecting to WiFi.");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print('.');
    delay(1000);
  }
  Serial.println();
  Serial.print("Terhubung dengan IP ADDRESS : ");
  Serial.println(WiFi.localIP());
}

void initFirebase(){

  config.api_key = API_KEY;
  auth.user.email = USER_EMAIL;
  auth.user.password = USER_PASSWORD;
  config.database_url = DATABASE_URL;

  Firebase.reconnectWiFi(true);
  firebaseData.setResponseSize(4096);

  config.token_status_callback = tokenStatusCallback;
  config.max_token_generation_retry = 5;
  Firebase.begin(&config, &auth);

  Serial.println("Mendapatkan User UID");
  while((auth.token.uid) == ""){
    Serial.print(".");
    delay(1000);
  }
  uid = auth.token.uid.c_str();
  Serial.print("User UID : ");
  Serial.print(uid);
  Serial.println();
  databasePath = "/UsersData/" + uid;
}

void initJson(){
  DateTime now = rtc.now();

  // data jadwal pagi
  jadwalPagiJson.add("tabungMakan", beratTabung);
  jadwalPagiJson.add("wadahMakan", beratWadah);
  jadwalPagiJson.add("tabungMinum", tinggiAirTabung);
  jadwalPagiJson.add("wadahMinum", tinggiAirWadah);
  jadwalPagiJson.add("pump", pumpStatus);
  jadwalPagiJson.add("servo", servoStatus);
  jadwalPagiJson.add("timestamp", String("DateTime::CREATED_AT : \t") + now.timestamp(DateTime::TIMESTAMP_FULL));

  // data jadwal sore
  jadwalSoreJson.add("tabungMakan", beratTabung);
  jadwalSoreJson.add("wadahMakan", beratWadah);
  jadwalSoreJson.add("tabungMinum", tinggiAirTabung);
  jadwalSoreJson.add("wadahMinum", tinggiAirWadah);
  jadwalSoreJson.add("pump", pumpStatus);
  jadwalSoreJson.add("servo", servoStatus);
  jadwalSoreJson.add("timestamp", String("DateTime::CREATED_AT : \t") + now.timestamp(DateTime::TIMESTAMP_FULL));

}

void setup(){
  Serial.begin(115200);

  initWiFi();

  Serial.println("MULAI PROGRAM ....");

  initFirebase();
  initJson();
}

void loop(){
   if(Firebase.isTokenExpired()){
    Firebase.refreshToken(&config);
    Serial.println("Memperbarui Token");
   }

   else if (Firebase.ready() && (millis() - sendDataPrevMillis > timerDelay || sendDataPrevMillis == 0)){
    // waktu untuk proses data ke firebase RTDB
     sendDataPrevMillis = millis();

    // database node
      jadwalPagiNode = databasePath + "/jadwalPagi";
      jadwalSoreNode = databasePath + "/jadwalSore";

    // set json jadwal pagi
      if (Firebase.RTDB.setJSON(&firebaseData, jadwalPagiNode.c_str(), &jadwalPagiJson)){
          Serial.println("DATA TERKIRIM");
          Serial.println("PATH : " + firebaseData.dataPath());
          Serial.println("TYPE: " + firebaseData.dataType());
          Serial.print("VALUE: ");
          //see addons/RTDBHelper.h
          printResult(firebaseData);
          Serial.println("------------------------------------");
          Serial.println();
      }
      else {
          Serial.println("GAGAL MENGIRIM DATA");
          Serial.println("Error : " + firebaseData.errorReason());
          Serial.println("------------------------------------");
          Serial.println();
      }

    // set JSON jadwal sore
      if(Firebase.RTDB.setJSON(&firebaseData, jadwalSoreNode.c_str(), &jadwalPagiJson)){
          Serial.println("DATA TERKIRIM");
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
    Serial.println("KODINGAN UNTUK DATABASE ERROR");
    Serial.println("ERROR : " + firebaseData.errorReason());
  }
}