import QtQuick 2.0
import QtQuick.Layouts 1.12

Rectangle {
    id: root
    objectName: "bracketview"
    width: 500; height: 180;
    color: "#19232D"
    border.color: "#32414B"
    border.width: 1

    // Add left and right bracket
    Rectangle {
        width: 800; height: 180
        color: "#19232D"
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 4

        RowLayout {
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.left: parent.left
            anchors.leftMargin: 4
            spacing: 1
            Bracket {
                id: leftBracket
                headtingText: "Left Bracket"
            }
//            Image {
//                source: "qrc:///images/heli.png"
//            }

            Bracket {
                id: rightBracket
                centerSlotId: 3
                headtingText: "Right Bracket"
            }
        }
//        Component.onCompleted: {
//            leftBracket.addKit(0, 100);
//            leftBracket.addKit(1, 200);
//            leftBracket.addKit(2, 300);

//            rightBracket.removeKit(0, "");
//            rightBracket.removeKit(1, "");
//            rightBracket.removeKit(2, "");
//        }
    }
}
