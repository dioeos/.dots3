pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

import "workspacesUtil.js" as Util

QtObject {
  id: sashaManagerRoot

  property string hello
  property string focusedTitle
  property int focusedWorkspaceIdx: 1
  property var workspaceIdxs: []

  property Socket socket: Socket {
    id: sashaSocket
    path: "/run/user/1000/sasha.sock"
    connected: true

    parser: SplitParser {
      splitMarker: "\n"

      onRead: data => {

        const event = JSON.parse(data)

        if (event.SashaWorkspacesChanged) {

          const workspaces =
            event.SashaWorkspacesChanged.sasha_workspaces

          sashaManagerRoot.workspaceIdxs = Util.get_workspace_idxs(workspaces)
          
        }

        if (event.SashaWindowFocusedChanged) {
          sashaManagerRoot.focusedTitle =
            event.SashaWindowFocusedChanged.window_name ?? "No focused window"
        }

        if (event.SashaWorkspaceActivated) {
          sashaManagerRoot.focusedWorkspaceIdx =
            event.SashaWorkspaceActivated.sasha_workspace.idx ?? 1
        }

        if (event.SashaWindowOpenedOrChanged) {
          sashaManagerRoot.focusedTitle =
            event.SashaWindowOpenedOrChanged.window_name ?? "No focused window"
        }
      }
    }
    onError: error => {
      console.log("Sasha socket error:", error)
    }
  }

  property Timer reconnectTimer: Timer {
    id: reconnectTimer
    interval: 1000
    repeat: false
    onTriggered: {
      sashaSocket.connected = true
    }
  }
}
