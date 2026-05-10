import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Services.UPower

Item {
  id: batteryRoot

  property string batteryPercentage: ""

  Rectangle {
    anchors.fill: parent
    color: "green"

    Text {
      id: batteryText
      anchors.centerIn: parent
      text: Math.round(UPower.displayDevice.percentage * 100) + "%"
      color: UPower.displayDevice.energyRate < 0
        ? "white"
        : "green"
    }
  }
}
