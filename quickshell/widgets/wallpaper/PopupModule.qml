import Quickshell
import QtQuick
import Quickshell.Io

import "../.." as Root

PopupWindow {
  id: popupWindow
  property bool shown: false
  visible: shown

  // anchor.window: wallpaperRoot.QsWindow.window
  width: 1200
  height: 800

  anchor.rect.x: (anchor.window.screen.width - width) / 2
  anchor.rect.y: (anchor.window.screen.height) * 0.15

  Rectangle {
    id: content
    anchors.fill: parent
    color: Root.ColorManager.cyberGreen
    border.width: 2
    border.color: "#afff4f"

    Row {
      anchors.fill: parent
      anchors.margins: 2
      spacing: 0

      Rectangle {
        width: parent.width / 4
        height: parent.height

        MouseArea {
          anchors.fill: parent
          onClicked: {
            Quickshell.execDetached({
              command: ["awww", "img", "/home/dio/Backgrounds/green.png"]
            })
          }
          Image {
            source: "/home/dio/Backgrounds/green.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
          }
        }
      }
      Rectangle {
        width: parent.width / 4
        height: parent.height

        MouseArea {
          anchors.fill: parent
          onClicked: {
            Quickshell.execDetached({
              command: ["awww", "img", "/home/dio/Backgrounds/max-color.png"]
            })
          }
          Image {
            source: "/home/dio/Backgrounds/max-color.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
          }
        }
      }

      Rectangle {
        width: parent.width / 4
        height: parent.height

        MouseArea {
          anchors.fill: parent
          onClicked: {
            Quickshell.execDetached({
              command: ["awww", "img", "/home/dio/Backgrounds/green-eyes.png"]
            })
          }
          Image {
            source: "/home/dio/Backgrounds/green-eyes.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
          }
        }
      }
      Rectangle {
        width: parent.width / 4
        height: parent.height

        MouseArea {
          anchors.fill: parent
          onClicked: {
            Quickshell.execDetached({
              command: ["awww", "img", "/home/dio/Backgrounds/black-abstract.png"]
            })
          }
          Image {
            source: "/home/dio/Backgrounds/black-abstract.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
          }
        }
      }


    }
  }

  
}
