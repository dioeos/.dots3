import Quickshell
import QtQuick
import Quickshell.Io

import "../.." as Root

PopupWindow {
  id: popupWindow

  property bool shown: false
  visible: shown

  anchor.window: wallpaperRoot.QsWindow.window
  width: anchor.window.screen.width
  height: anchor.window.screen.height
  color: "transparent"

  ListModel {
    id: wallpaperModel

    ListElement { path: "/home/dio/Backgrounds/green.png" }
    ListElement { path: "/home/dio/Backgrounds/green-eyes.png" }
    ListElement { path: "/home/dio/Backgrounds/black-abstract.png" }
  }

  MouseArea {
    anchors.fill: parent
    onClicked: popupWindow.shown = false
  }

  Item {
    id: panel

    width: parent.width * 0.8
    height: parent.height * 0.15
    z: 2

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter

    Rectangle {
      anchors.fill: parent
      color: "transparent"
      border.width: 2
      border.color: "#afff4f"
    }

    MouseArea {
      anchors.fill: parent
      onClicked: mouse.accepted = true
    }

    Flickable {
      id: flick

      anchors.fill: parent
      anchors.margins: 2
      clip: true

      flickableDirection: Flickable.HorizontalFlick
      boundsBehavior: Flickable.StopAtBounds

      contentWidth: row.implicitWidth
      contentHeight: height

      Row {
        id: row

        height: flick.height
        spacing: 0

        Repeater {
          model: wallpaperModel

          delegate: Rectangle {
            width: flick.width / 3
            height: flick.height

            color: "transparent"
            clip: true

            Image {
              anchors.fill: parent
              source: path
              fillMode: Image.PreserveAspectCrop
            }

            MouseArea {
              anchors.fill: parent

              onClicked: {
                Quickshell.execDetached({
                  command: [
                    "bash",
                    "-lc",
                    "/home/dio/dotfiles/scripts/system/update-wall.sh '" + path + "' && /home/dio/dotfiles/scripts/system/switchwall.sh"
                  ]
                })

                popupWindow.shown = false
              }
            }
          }
        }
      }
    }
  }
}
