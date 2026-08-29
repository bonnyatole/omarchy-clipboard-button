import QtQuick
import QtQuick.Effects
import qs.Commons
import qs.Ui

BarWidget {
  id: root
  moduleName: "io.github.majesticio.clipboard-button"

  function toggleClipboard() {
    if (root.bar) root.bar.run("omarchy-shell shell toggle omarchy.clipboard")
  }

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  WidgetButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: " "
    labelVisible: false
    fixedWidth: Style.bar.iconSlot
    fixedHeight: Style.bar.iconSlot
    tooltipText: "Clipboard history · Super+Ctrl+V"

    Accessible.role: Accessible.Button
    Accessible.name: "Open clipboard history"

    onPressed: function(buttonCode) {
      if (buttonCode === Qt.LeftButton) root.toggleClipboard()
    }

    Item {
      anchors.centerIn: parent
      width: parent.width * 0.68
      height: width

      Image {
        id: clipboardIcon
        anchors.fill: parent
        source: Qt.resolvedUrl("icon.svg")
        sourceSize.width: Math.round(width * Screen.devicePixelRatio)
        sourceSize.height: Math.round(height * Screen.devicePixelRatio)
        fillMode: Image.PreserveAspectFit
        asynchronous: true
        smooth: true
        visible: false
      }

      MultiEffect {
        anchors.fill: clipboardIcon
        source: clipboardIcon
        colorization: 1.0
        colorizationColor: button.foreground

        Behavior on colorizationColor {
          enabled: !root.bar || root.bar.foregroundAnimationEnabled
          ColorAnimation { duration: 160 }
        }
      }
    }
  }
}
