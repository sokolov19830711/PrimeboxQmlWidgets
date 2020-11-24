import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

Button {
    id: defaultButtonId
    text: "Текст кнопки"
    width: 92
    height: 92
    layer.enabled: false
    checkable: true

    background: Rectangle {
        color: parent.checked ? "#c05046" : "#585858"
    }

    contentItem: Text {
        color: "#fefefe"
        text: parent.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
        font.pointSize: 10
        font.bold: true
        font.family: "Calibri Light"
    }
}
