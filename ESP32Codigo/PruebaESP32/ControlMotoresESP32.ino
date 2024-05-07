// Programa de muestra para la ESP32 - Parpadeo de LED

// Incluye la biblioteca necesaria
#include <Arduino.h>
#include <ArduinoJson.h>

// Define el pin del LED incorporado en la placa ESP32
// Definicion de pines en la ESP32, configurandolo 
const int LPWM1 = 2;    //Cambiar el numero por el numero de pin del ESP32 para el d15 15
const int RPWM1 = 15;    //Cambiar el numero por el numero de pin del ESP32 d2 2
const int LPWM2 = 16;    //Cambiar el numero por el numero de pin del ESP32 rx2 16
const int RPWM2 = 4;    //Cambiar el numero por el numero de pin del ESP32 d4 4 
const int En = 17;

void setMotor(int u, int RPWM, int LPWM, int direccion)
  {
    if(direccion == 1)
      {
        analogWrite(RPWM,u);
        analogWrite(LPWM,0);
        //Serial.println("Se va pa'delante");
      }
     else
      {
        analogWrite(LPWM,u);
        analogWrite(RPWM,0);
        //Serial.println("Se va pa'tras");
      }
  }

void setup() {
  // Inicializamos conexion serial
  Serial.begin(9600);  // Inicia la comunicación serial a 9600 baudios

  // Configuramos los pines como salida
  pinMode(RPWM1, OUTPUT);
  pinMode(LPWM1, OUTPUT);
  pinMode(RPWM2, OUTPUT);
  pinMode(LPWM2, OUTPUT);
}

void loop() {
  // Enciende el LED
if (Serial.available() > 0) {
    // Lee los datos disponibles en el puerto serial
    String jsonData = Serial.readStringUntil('\n');

    // Delay para asegurar la recepción completa del mensaje
    delay(40);

    // Parsea la cadena JSON
    StaticJsonDocument<200> jsonDoc;
    DeserializationError error = deserializeJson(jsonDoc, jsonData);

    if (error) {
      Serial.print("Error al analizar JSON: ");
      Serial.println(error.c_str());
      setMotor(0,RPWM2,LPWM2,1);
      setMotor(0,RPWM1,LPWM1,1);
    } else {
      // Procesa los datos JSON
      int u1 = jsonDoc["u1"];
      int u2 = jsonDoc["u2"];
      int direccion1 = jsonDoc["direccion1"];
      int direccion2 = jsonDoc["direccion2"];

      //Serial.print("u1: ");
      //Serial.println(u1);
      //Serial.println("u2: ");
      //Serial.println(u2);     
      //Serial.print("direccion1: ");
      //Serial.println(direccion1);
      //Serial.print("direccion2: ");
      //Serial.println(direccion2);

      // Llamamos a la funcion que realiza el control de los motores
      setMotor(u1,RPWM1,LPWM1,direccion1);
      setMotor(u2,LPWM2,RPWM2,direccion2);
    }
  }
}
