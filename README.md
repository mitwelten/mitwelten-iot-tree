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

### Hardware
- https://www.adafruit.com/product/3046 Feather HUZZAH ESP8266 w/ Stacking Headers
- https://www.adafruit.com/product/5862 FeatherWing Grove Adapter
- Seeed Grove Ultrasonic Ranger
- Li-Ion battery w/ holder

## Movement Sensor
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

### Hardware
- Feather nRF52840 Sense
- Stacking Headers
- FeatherWing ESP32

## Moisture Sensor
<img src="https://live.staticflickr.com/65535/53555656209_ff78bec475_n.jpg"/>

### Hardware
- Feather ESP32 HUZZAH w/ Stacking Headers
- https://www.adafruit.com/product/5862 FeatherWing Grove Adapter
- Seeed Grove Soil Moisture Sensor

## Threshold Fader
<img src="https://live.staticflickr.com/65535/53553968229_bcbe7178f5_n.jpg"/>

### Hardware
- Feather ESP32 HUZZAH w/ Stacking Headers
- https://www.adafruit.com/product/5862 FeatherWing Grove Adapter
- M5Stack Grove Fader

## Graph Monitor
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

### Hardware
- QT Py ESP32-S3
- ...

(TODO)

## Sound Player
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

### Hardware
- Feather ESP32 HUZZAH w/ Stacking Headers
- FeatherWing Mp3 Player

## Bluetooth Speaker
<img src="https://live.staticflickr.com/65535/53554443987_3a80bd852b_n.jpg"/>

- ...
