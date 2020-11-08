import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    width: 108
    height: 40
    property color valueFieldColor: "#00be94"
    property int currentValue: 0
    property int minValue: 0
    property int maxValue: 100

    Button {
        x: 0
        y: 0
        id: minusButton
        width: 30
        height: 40
        font.pointSize: 13

        contentItem: Text {
                color: "#fefefe"
                text: "-"
                font: parent.font
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
        }

        background: Rectangle {
                color: parent.pressed ? "#535353" : "#636363"
            }
    }

    Rectangle {
        id: valueField
        x: minusButton.width + 4
        y: minusButton.y
        width: parent.width - 2 * minusButton.width - 8;
        height: 40
        color: parent.valueFieldColor

        Text {
            width: 40
            height: 41
            color: "#fefefe"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            minimumPixelSize: 10
            font.pointSize: 14
            font.family: "Arial"
            text: parent.parent.currentValue
        }
    }

    Button {
        id: plusButton
        x: minusButton.width + valueField.width + 8
        y: minusButton.y
        width: 30
        height: 40
        font.pointSize: 13

        contentItem: Text {
                color: "#fefefe"
                text: "+"
                font: parent.font
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
        }

        background: Rectangle {
                color: parent.pressed ? "#535353" : "#636363"
            }
    }

    Connections {
        target: minusButton
        function onClicked() { if((currentValue - 1) >= minValue) currentValue-- }
    }

    Connections {
        target: plusButton
       function onClicked() { if((currentValue + 1) <= maxValue) currentValue++ }
    }
}
