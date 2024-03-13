// Add librari yang DIgunakan
#include <Wifi.h>
#include <Firebase_ESP_Client.h>
#include "addons/TokenHelper.h"
#include "addons/RTDBHelper.h"

// connect device dan firebase real time database
#define WIFI_SSID "123"
#define WIFI_PASSWORD "inipasswordnya"
#define API_KEY "AIzaSyD9cMliTs9G41vgRLcjS2VacvtMWWR1doQ"
#define DATABASE_URL "https://tugas-akhir-3c0d9-default-rtdb.asia-southeast1.firebasedatabase.app/"

// Define pin disini
#define RELAY_PIN 1
#define SERVO1_PIN 2
#define SERVO2_PIN 3
#define PUMP_PIN 4
#define RTC_PIN 5
#define ULTRASONIC1_PIN 13
#define LOADCELL1_PIN 14
#define ULTRASONIC2_PIN 13
#define LOADCELL2_PIN 14
#define LCD_PIN

// DIGITAL PIN

// ANALOG PIN


#define LED1_PIN 15
#define LED2_PIN 16
#define PWMChannel 0

const int freq = 5000;
const int resolution = 0;

// Config firebase librari to connect device
FirebaseData fbdo, fbdo_s1, fbdo_s2;
FirebaseAuth auth;
FirebaseConfig config;

// inisiasi variable
unsigned long  sendDataPrevMills = 0;
bool signUpOk = false;
int ultrasonicData = 0;
float loadCellData = 0.0;
float voltage = 0.0;
int pwmValue = 0;
bool ledStatus = false;

// variable sensor
int dataUltraSonic1 = 0;
int dataUltraSonic2 = 0;
float dataLoadCell1 = 0.0;
float dataLoadCell2 = 0.0;

// variable output
bool servo = false;
bool pump = false;

// lcd




void setup(){

pinMode(LED2_PIN, OUTPUT);
ledcSetup (PWMChannel, freq, resolution);
ledcAttachPin(LED1_PIN, PWMChannel);

Serial.begin(115200);
WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
Serial.print("Connecting to Wi-Fi");
while(WiFi.status() != WL_CONNECTED){
  Serial.print("."); delay(300);
}
Serial.println():
Serial.print("Connected with IP: ");
Serial.println(WiFi.localIp());
Serial.println();

config.api_key = API_KEY;
config.database_url = DATABASE_URL;

if(Firebase.signUp(&config, &auth, "","")){
Serial.println("signUp OK");
signUpOk = true;
} else{
Serial.print("%s\n", config.signer.signupError.message.c_str());
}

config.token_status_callback = tokenStatusCallback;
Firebase.begin(&config, &auth);
Firebase.reconnectWifi(true);

// Stream Data
if(!Firebase.RTDB.beginStream(&fbdo_s1, "/LED/analog")) Serial.printf("stream 1 begin error, %s\n\n", fbdo_s1_errorReason().c_str());
if(!Firebase.RTDB.beginStream(&fbdo_s2, "/LED/digital")) Serial.printf("stream 2 begin error, %s\n\n", fbdo_s2_errorReason().c_str());

}


void loop(){

if(Firebase.ready() && signupOk && (mills() - sendDataPrevMills > 5000 || sendDataPrevMills == 0)){
  sendDataPrevMills = mills();
}

// Store sensor data ke RTDB (RealTime Database)
rtcData = analogRead(RTC_PIN);
ultrasonicData = analogRead(ULTRASONIC_PIN);
loadCellData = analogRead(LOADCELL_PIN);
voltage = (float)analogReadMilliVolts(RTC_PIN)/1000;

if(Firebase.RTDB.setInt(&fbdo, "Sensor/RTC_DATA", rtcData)){
  Serial.println(); Serial.print(rtcData);
  Serial.print("- sukses save : " + fbdo.dataPath());
  Serial.println("(" + fbdo.dataType() + ")");
} else{
  Serial.println("GAGAL" + fbdo.errorReason());
}
if(Firebase.RTDB.setFloat(&fbdo, "Sensor/RTC_DATA", voltage)){
  Serial.println(); Serial.print(voltage);
  Serial.print("- sukses save : " + fbdo.dataPath());
  Serial.println("(" + fbdo.dataType() + ")");
} else{
  Serial.println("GAGAL" + fbdo.errorReason());
}

// Read data dari RTDB untuk Kontrol Devices ke arduino
if(Firebase.RTDB.getInt(&fbdo, "/LED/analog")){
  if(fbdo.dataType() == "int"){
    pwmValue = fbdo.intData();
    Serial.println("Sukses Read dari : " + fbdo.dataPath() + ": " + pwmValue + "(" + fbdo.dataType() + ")");
    ledcWrite(PWMChannel, pwmValue);
  }
} else{
  Serial.println("Gagal : " + fbdo.errorReason());
}

if(Firebase.RTDB.getBool(&fbdo, "/LED/digital")){
  if(fbdo.dataType() == "boolean"){
    ledStatus = fbdo.boolData();
    Serial.println("Sukses Read dari : " + fbdo.dataPath() + ": " + ledStatus + "(" + fbdo.dataType() + ")");
    digitalWrite(LED2_PIN, ledStatus);
  }
} else{
  Serial.println("Gagal : " + fbdo.errorReason());
}

}

