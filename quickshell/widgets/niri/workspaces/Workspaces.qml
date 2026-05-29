import Quickshell
import QtQuick

import ".." as SashaRoot
import "../../.." as Root

Item {
    id: niriWorkspacesRoot

    required property var screenName

    implicitWidth: row.implicitWidth
    implicitHeight: row.implicitHeight

    Row {
        id: row
        spacing: 8

        Repeater {
            model: SashaRoot.SashaManager.workspaceIdxs.filter (
              ws => ws.monitor === niriWorkspacesRoot.screenName
            )

            delegate: Rectangle {
                required property int modelData

                width: 30
                height: 20
                radius: 4

                color: modelData === SashaRoot.SashaManager.focusedWorkspaceIdx
                    ? Root.ColorManager.cyberGreen
                    : "#333333"

            }
        }
    }
}
