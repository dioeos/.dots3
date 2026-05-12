import Quickshell
import Quickshell.Io
import QtQuick

import ".." as SashaRoot
import "../../.." as Root

Item {
  id: niriWindowRoot

  implicitWidth: focusedText.implicitWidth
  implicitHeight: focusedText.implicitHeight

  Text {
    id: focusedText
    text: SashaRoot.SashaManager.focusedTitle
    color: Root.ColorManager.netRed
    font.family: Root.FontManager.ntype82FontFamily
    font.pixelSize: Root.FontManager.fontNormal
  }
}
