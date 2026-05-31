import Quickshell
import Quickshell.Io
import QtQuick

import "../.." as Root

Item {
  id: clockRoot

  property string time: ""
  implicitWidth: clockText.implicitWidth + 12
  height: parent ? parent.height : implicitHeight

  Rectangle {
    anchors.fill: parent
    color: "transparent"

    Text {
      id: clockText
      anchors.centerIn: parent
      text: clockRoot.time
      color: Root.ColorManager.fgPrimary
      font.family: Root.FontManager.nothingFontFamily
      font.pixelSize: Root.FontManager.fontNormal
    }
  }

  Process {
    id: dateProcess
    // command: ["env", "TZ=America/Denver", "date", "+%I:%M %p - %a %d"]
    command: ["date", "+%I:%M %p - %a %d"]
    running: true

    stdout: StdioCollector {
      onStreamFinished: clockRoot.time = this.text.trim()
    }
  }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: dateProcess.running = true
  }
}
