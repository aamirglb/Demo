import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12

Item {
    Plugin
    {
        id: mapPlugin
        name: "esri"
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(59.9483, 10.7695)
        zoomLevel: 14
        onZoomLevelChanged: { console.log("zoom: ", zoomLevel); }
        activeMapType: supportedMapTypes[1]
    }
}
