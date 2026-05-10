import Quickshell
import Quickshell.Io
import QtQuick

Item {
  id: clockRoot

  property string time: ""
  implicitWidth: clockText.implicitWidth + 12
  height: parent ? parent.height : implicitHeight

  Rectangle {
    anchors.fill: parent
    color: "#0000FF"

    Text {
      id: clockText
      anchors.centerIn: parent
      text: clockRoot.time
      color: "white"
    }
  }

  Process {
    id: dateProcess
    command: ["date", "+%I : %M %p | %a %d"]
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
