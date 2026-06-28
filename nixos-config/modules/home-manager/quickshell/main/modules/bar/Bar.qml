import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Wayland

import "../clock" as ClockModule

Scope {
  id: barRoot
  required property var targetScreen

  PanelWindow {
    screen: barRoot.targetScreen
    WlrLayershell.namespace: "quickshell_bar"
    WlrLayershell.layer: WlrLayer.Top
    color: "transparent"

    anchors {
      top: true
      left: true
      right: true
    }
    implicitHeight: 30

    Rectangle {
      id: backgroundLayer
      anchors.fill: parent
      color: "#66191919"

      Row {
        id: leftSection
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 12
        spacing: 8

        // Repeater {
        //   model: ["1", "2", "3", "4", "5"]
        //
        //   delegate: Rectangle {
        //     radius: 6
        //     color: "#ff0000"
        //
        //     implicitWidth: workspaceText.implicitWidth + 12
        //     implicitHeight: workspaceText.implicitHeight + 6
        //
        //     Text {
        //       id: workspaceText
        //       anchors.centerIn: parent
        //       text: modelData
        //       color: "white"
        //     }
        //   }
        // } 
      }

      Row {
        id: centerSection
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 8

        Rectangle {
          id: clockWrapper
          color: "#0000ff"
          radius: 12

          implicitWidth: clockModule.implicitWidth + 8
          implicitHeight: clockModule.implicitHeight + 16

          ClockModule.Clock {
            id: clockModule
            anchors.centerIn: parent
          }
        }

        // Repeater {
        //   model: ["1", "2", "3", "4", "5"]
        //
        //   delegate: Rectangle {
        //     radius: 6
        //     color: "#ff0000"
        //
        //     implicitWidth: workspaceText.implicitWidth + 12
        //     implicitHeight: workspaceText.implicitHeight + 6
        //
        //     Text {
        //       id: workspaceText
        //       anchors.centerIn: parent
        //       text: modelData
        //       color: "white"
        //     }
        //   }
        // } 
      }

      Row {
        id: rightSection
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 12
        spacing: 8

        // Repeater {
        //   model: ["1", "2", "3", "4", "5"]
        //
        //   delegate: Rectangle {
        //     radius: 6
        //     color: "#ff0000"
        //
        //     implicitWidth: workspaceText.implicitWidth + 12
        //     implicitHeight: workspaceText.implicitHeight + 6
        //
        //     Text {
        //       id: workspaceText
        //       anchors.centerIn: parent
        //       text: modelData
        //       color: "white"
        //     }
        //   }
      }
    }
  }
}
