import Quickshell
import Quickshell.Io
import QtQuick

import "../clock" as ClockWidget
import "../battery" as BatteryWidget

Scope {
  id: barRoot
  required property var targetScreen

  PanelWindow {
    screen: barRoot.targetScreen

    anchors {
      top: true
      left: true
      right: true
    }
    implicitHeight: 30

    Rectangle {
      id: backgroundLayer
      anchors.fill: parent
      color: "#191919"
    }

    //bar content
    ClockWidget.Clock {
      id: clockWidget
      anchors.centerIn: parent
    }

    BatteryWidget.Battery {
      id: batteryWidget
      anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin: 30
      }
    }
  }
}
