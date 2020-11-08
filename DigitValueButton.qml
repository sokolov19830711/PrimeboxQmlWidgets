import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

Button {
    id: defaultButtonId
    text: "Текст кнопки"
    width: 36
    height: 36
    layer.enabled: false
    font.pointSize: 12
    checkable: true

    bottomPadding: 2
    topPadding: 2
    rightPadding: 2
    leftPadding: 2

    background: Rectangle {
        color: parent.checked ? "#00be94" : "#636363"
    }

    contentItem: Text {
        color: "#fefefe"
        text: parent.text
        font: parent.font
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
}
