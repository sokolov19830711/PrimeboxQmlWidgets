import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    width: 112
    height: 112

    DigitValueButton {
        x: 0
        y: 0
        text: "1"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 38
        y: 0
        text: "2"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 76
        y: 0
        text: "3"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 0
        y: 38
        text: "4"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 38
        y: 38
        text: "5"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 76
        y: 38
        text: "6"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 0
        y: 76
        text: "7"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 38
        y: 76
        text: "8"

        ButtonGroup.group: digitValueButtons
    }

    DigitValueButton {
        x: 76
        y: 76
        text: "9"

        ButtonGroup.group: digitValueButtons
    }

    ButtonGroup {
        id: digitValueButtons
    }
}
