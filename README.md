# Mitwelten IoT Toolkit: Lamenting Tree

Work in progress, see [project tasks](https://github.com/orgs/mitwelten/projects/29/views/1).

## Algorithm
Based on [FHNW IoT Bricks](https://github.com/tamberg/fhnw-iot-bricks)

```Java
... // presence, movement, moisture, fader, sound and graph brick
while (true) {
    boolean presence = presenceBrick.isActive(); // triggered by neighbor
    boolean watering = movementBrick.isActive(); // triggered by neighbor
    int moisture = moistureBrick.getMoisture(); // changes when watering
    int threshold = faderBrick.getPosition() * 10; // set by researcher
    if (presence && !watering && moisture < threshold) {
        soundBrick.play(SAMPLE_LAMENT, VOLUME_LOUD);
    } else if (presence && watering && moisture > threshold) {
        soundBrick.play(SAMPLE_THANK, VOLUME_NORMAL);
    }
    graphBrick.addValue(moisture); // monitored by researcher
    proxy.waitForUpdate();
}
```

## Presence Sensor
<img src="https://live.staticflickr.com/65535/53555498743_8b6eb4584d_n.jpg"/>

### Software
- [ESP8266_MqttDistanceBrick.ino](https://github.com/tamberg/fhnw-iot-bricks/blob/develop/Arduino/ESP8266_MqttDistanceBrick/ESP8266_MqttDistanceBrick.ino)
- [DistanceBrick.java](https://github.com/tamberg/fhnw-iot-bricks/blob/develop/Java/src/main/java/ch/fhnw/imvs/bricks/sensors/DistanceBrick.java)

### Hardware
- [Feather HUZZAH ESP8266 w/ Stacking Headers](https://www.adafruit.com/product/3046)
- [FeatherWing Grove Adapter](https://www.adafruit.com/product/5862)
- [Grove Ultrasonic Ranger](https://www.seeedstudio.com/Grove-Ultrasonic-Distance-Sensor.html)
- [3000 mAh 18650 Li-Ion Battery w/ Holder](https://www.bastelgarage.ch/solar-lipo/li-ion-akku-3000ma-18650-mit-schutzelektronik-und-stecker)

## Movement Sensor
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

### Software
- nRF52840Sense_MovementBrick.ino (TODO)
- MovementBrick.java (TODO)

### Hardware
- [Feather nRF52840 Sense](https://www.adafruit.com/product/4516)
- [Feather Female Headers](https://www.adafruit.com/product/2886)
- [FeatherWing AirLift ESP32](https://www.adafruit.com/product/4264)
- [3000 mAh 18650 Li-Ion Battery w/ Holder](https://www.bastelgarage.ch/solar-lipo/li-ion-akku-3000ma-18650-mit-schutzelektronik-und-stecker)

## Moisture Sensor
<img src="https://live.staticflickr.com/65535/53555656209_ff78bec475_n.jpg"/>

### Software
- [https://github.com/tamberg/fhnw-iot-bricks/blob/develop/Arduino/ESP32_MqttAnalogInputBrick/ESP32_MqttAnalogInputBrick.ino](ESP32_MqttAnalogInputBrick.ino)

### Hardware
- [Feather ESP32 HUZZAH w/ Stacking Headers](https://www.adafruit.com/product/3619)
- [FeatherWing Grove Adapter](https://www.adafruit.com/product/5862)
- [Grove Soil Moisture Sensor](https://www.seeedstudio.com/Grove-Capacitive-Moisture-Sensor-Corrosion-Resistant.html)
- [3000 mAh 18650 Li-Ion Battery w/ Holder](https://www.bastelgarage.ch/solar-lipo/li-ion-akku-3000ma-18650-mit-schutzelektronik-und-stecker)

## Threshold Fader
<img src="https://live.staticflickr.com/65535/53553968229_bcbe7178f5_n.jpg"/>

### Software
- [https://github.com/tamberg/fhnw-iot-bricks/blob/develop/Arduino/ESP32_MqttAnalogInputBrick/ESP32_MqttAnalogInputBrick.ino](ESP32_MqttAnalogInputBrick.ino)
- FaderBrick.java (TODO)

### Hardware
- [Feather ESP32 HUZZAH w/ Stacking Headers](https://www.adafruit.com/product/3619)
- [FeatherWing Grove Adapter](https://www.adafruit.com/product/5862)
- [M5Stack Grove Fader](https://www.bastelgarage.ch/m5stack-fader-unit-with-potentiometer-and-rgb-lighting?search=m5stack%20fader)
- [3000 mAh 18650 Li-Ion Battery w/ Holder](https://www.bastelgarage.ch/solar-lipo/li-ion-akku-3000ma-18650-mit-schutzelektronik-und-stecker)

## Graph Monitor
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

### Software
- ESP32S3_ST7789_GraphBrick.ino (TODO)
- GraphDisplayBrick.java (TODO)

### Hardware
- [QT Py ESP32-S3](https://www.adafruit.com/product/5395)
- [QT Py EYESPI BFF](https://www.adafruit.com/product/5772)
- [EYESPI Cable 100 mm](https://www.adafruit.com/product/5239)
- [240x240 px TFT LCD](https://www.adafruit.com/product/4313)
- [3000 mAh 18650 Li-Ion Battery w/ Holder](https://www.bastelgarage.ch/solar-lipo/li-ion-akku-3000ma-18650-mit-schutzelektronik-und-stecker)

## Sound Player
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

### Software
- ESP32_PlayerBrick.ino (TODO)
- PlayerBrick.java (TODO)

### Hardware
- [Feather ESP32 HUZZAH w/ Stacking Headers](https://www.adafruit.com/product/3619) (TBC)
- [FeatherWing MP3 Player](https://www.adafruit.com/product/3357)
- [3000 mAh 18650 Li-Ion Battery w/ Holder](https://www.bastelgarage.ch/solar-lipo/li-ion-akku-3000ma-18650-mit-schutzelektronik-und-stecker)

## Bluetooth Speaker
<img src="https://live.staticflickr.com/65535/53554443987_3a80bd852b_n.jpg"/>

### Hardware
- [Hama Bluetooth Speaker](https://www.digitec.ch/en/s1/product/hama-pocket-30-14-h-rechargeable-battery-operated-bluetooth-speakers-23952994)
- [Ugreen 3.5 mm Jack Cable](https://www.digitec.ch/en/s1/product/ugreen-35mm-klinke-35mm-klinke-1-m-35mm-jack-aux-audio-cable-20685666)
