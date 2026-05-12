import Quickshell
import QtQuick

import ".." as SashaRoot
import "../../.." as Root

Item {
  id: niriWorkspacesRoot

  implicitWidth: focusedText.implicitWidth
  implicitHeight: focusedText.implicitHeight

  Text {
    id: focusedText
    // text: SashaRoot.SashaManager.focusedWorkspaceId
    text: SashaRoot.SashaManager.hello
    color: Root.ColorManager.netRed
    font.family: Root.FontManager.ntype82FontFamily
    font.pixelSize: Root.FontManager.fontNormal
  }
}
