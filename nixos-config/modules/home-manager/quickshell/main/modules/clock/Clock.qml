import Quickshell
import Quickshell.Io
import QtQuick

Item {
  id: clockRoot

  property string time: ""
  implicitWidth: clockText.implicitWidth + 12

  Rectangle {
    anchors.fill: parent
    color: "transparent"

    Text {
      id: clockText
      anchors.centerIn: parent
      text: clockRoot.time
      color: "#ff0000"
    }
  }

  Process {
    id: dateProcess

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
