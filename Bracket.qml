import QtQuick 2.0

Rectangle {
    id: bracket
    property alias headtingText: heading.text
    property string bracketColor: "white"
    property int thickness: 4
    property int centerSlotId: 0
    property variant kitList: [null, null, null]
    property variant slotIds: [0, 1, 2]
    width: 320; height: 150
    color: "#19232D"

    Text {
        id: heading
        text: qsTr("Bracket")
        font.pointSize: 8
        font.bold: true
        color: "cyan"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    // Top horizontal line
    Rectangle {
        z: 2
        color: bracketColor
        width: 200; height: thickness
        x: 60; y: 15
    }

    // center vertical line
    Rectangle {
        z: 2
        color: bracketColor
        width: thickness; height: 30
        x: 320/2 - 2; y: 15
        Text {
            text: centerSlotId+1
            x: 5; y: 5
            font.bold: true
            font.pointSize: 7
            color: "lime"
        }
    }

    // left vertical line
    Rectangle {
        z: 2
        color: bracketColor
        width: thickness; height: 60
        x: 60-2; y: 15
        Text {
            text: centerSlotId+2
            x: 5; y: 5
            font.bold: true
            font.pointSize: 7
            color: "lime"
        }
    }

    // right vertical line
    Rectangle {
        z: 2
        color: bracketColor
        width: thickness; height: 60
        x: 320-60-2; y: 15
        Text {
            text: centerSlotId+3
            x: -10; y: 5
            font.bold: true
            font.pointSize: 7
            color: "lime"
        }
    }
}
