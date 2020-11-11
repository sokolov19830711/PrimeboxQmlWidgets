import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    width: 112
    height: 112

    property int currentValue: 0

    DigitValueButton {
        x: 0
        y: 0
        text: "1"
        checked: parent.currentValue === 1

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 38
        y: 0
        text: "2"
        checked: parent.currentValue === 2

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 76
        y: 0
        text: "3"
        checked: parent.currentValue === 3

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 0
        y: 38
        text: "4"
        checked: parent.currentValue === 4

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 38
        y: 38
        text: "5"
        checked: parent.currentValue === 5

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 76
        y: 38
        text: "6"
        checked: parent.currentValue === 6

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 0
        y: 76
        text: "7"
        checked: parent.currentValue === 7

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 38
        y: 76
        text: "8"
        checked: parent.currentValue === 8

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 76
        y: 76
        text: "9"
        checked: parent.currentValue === 9

        ButtonGroup.group: digitValueButtons
    }

    ButtonGroup {
        id: digitValueButtons
    }

    Connections {
        target: digitValueButtons
        function onClicked(button) {currentValue = button.text}
    }
}
