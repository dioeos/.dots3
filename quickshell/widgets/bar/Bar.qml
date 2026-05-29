import Quickshell
import Quickshell.Io
import QtQuick

import "../clock" as ClockWidget
import "../battery" as BatteryWidget
import "../network" as NetworkWidget
import "../niri/window" as NiriWindowWidget
import "../niri/workspaces" as NiriWorkspacesWidget


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
      anchors.horizontalCenterOffset: 30
    }

    BatteryWidget.Battery {
      id: batteryWidget
      anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin: 30
      }
    }

    NetworkWidget.Network {
      id: networkWidget
      anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin: 70
      }
    }

    // NiriWindowWidget.Window {
    //   id: niriWindowWidget
    //   anchors {
    //     left: parent.left
    //     verticalCenter: parent.verticalCenter
    //     leftMargin: 70
    //   }
    // }

    NiriWorkspacesWidget.Workspaces {
      id: niriWorkspacesWidget
      screenName: barRoot.targetScreen.name
      anchors {
        left: parent.left
        verticalCenter: parent.verticalCenter
        leftMargin: 30
      }
    }

  }
}
