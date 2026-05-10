import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Services.UPower

import "../.." as Root

Item {
  id: batteryRoot

  property string batteryPercentage: ""

  Rectangle {
    anchors.fill: parent

    Text {
      id: batteryText
      anchors.centerIn: parent
      text: Math.round(UPower.displayDevice.percentage * 100) + "%"
      color: UPower.displayDevice.energyRate < 0
        ? "white"
        : Root.ColorManager.cyberGreen
      font.family: Root.FontManager.nothingFontFamily
      font.pixelSize: Root.FontManager.fontNormal
    }
  }
}
