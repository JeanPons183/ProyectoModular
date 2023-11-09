import serial
import json
import time
import random

# Configura el puerto serial, ajusta el puerto COM y la velocidad de transmisión (baud rate) según corresponda
ser = serial.Serial('COM5', 9600)  # Reemplaza 'COM3' con el puerto COM correcto

try:
    while True:
        u1 = random.randint(0, 255)
        u2 = random.randint(0, 255)
        direccion1 = random.randint(0, 255)
        direccion2 = random.randint(0, 255)

        # Crea un diccionario con los datos a enviar en formato JSON
        data = {
            "u1": u1, "u2": u2, "direccion1": direccion1, "direccion2": direccion2
        }
        time.sleep(.5)
        # Convierte el diccionario en una cadena JSON
        json_data = json.dumps(data)

        try:
            # Envía la cadena JSON a la ESP32 a través del puerto serial
            ser.write((json_data + "\n").encode())
            print(f"Dato JSON enviado: {json_data}")

        except Exception as e:
            print(f"Error al enviar datos: {e}")
            # Cierra el puerto serial al finalizar
            ser.close()
except KeyboardInterrupt: 
    pass 
finally:
    ser.close()
    print("Cerramos programa")
    time.sleep(3)
