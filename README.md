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
