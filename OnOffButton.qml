import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

Button {
    id: defaultButtonId
    text: "Текст кнопки"
    width: 40
    height: 40
    layer.enabled: false
    font.pointSize: 12
    checkable: true

    bottomPadding: 4
    topPadding: 4
    rightPadding: 4
    leftPadding: 4

    background: Rectangle {
        color: parent.checked ? "#00be94" : "#636363"
    }

    contentItem: Text {
        color: "#fefefe"
        text: parent.checked ? "ON" : "OFF"
        font: parent.font
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
}
