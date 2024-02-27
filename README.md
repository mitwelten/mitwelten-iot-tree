# Mitwelten IoT Toolkit: Lamenting Tree

Work in progress, see [project tasks](https://github.com/orgs/mitwelten/projects/29/views/1).

## Algorithm

```Java
... // presence, movement, moisture, fader, sound and graph brick
while (true) {
    presence = presenceBrick.getValue(); // triggered by neighbor
    watering = movementBrick.getValue(); // triggered by neighbor
    moisture = moistureBrick.getValue(); // changes when watering
    threshold = faderBrick.getValue(); // adapted by researcher
    if (presence && !watering && moisture < threshold) {
        soundBrick.play(Sample.Lamenting, Volume.LOUD);
    } else if (presence && watering && moisture > threshold) {
        soundBrick.play(Sample.ThankYou, Volume.NORMAL);
    }
    graphBrick.addValue(moisture); // monitored by researcher
    waitForUpdate();
}
```

## Presence Sensor
<img src="https://live.staticflickr.com/65535/53555498743_8b6eb4584d_n.jpg"/>

## Movement Sensor
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

## Moisture Sensor
<img src=""/> (TODO)

## Threshold Fader
<img src="https://live.staticflickr.com/65535/53553968229_bcbe7178f5_n.jpg"/>

## Sound Player
<img src="https://live.staticflickr.com/65535/53555296771_a5093d1c30_n.jpg"/>

## Bluetooth Speaker
<img src="https://live.staticflickr.com/65535/53554443987_3a80bd852b_n.jpg"/>
