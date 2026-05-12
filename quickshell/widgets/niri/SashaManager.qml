pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

QtObject {
  id: sashaManagerRoot

  property string focusedTitle
  property int focusedWorkspaceId: 1

  property Socket socket: Socket {
    id: sashaSocket
    path: "/run/user/1000/sasha.sock"
    connected: true

    parser: SplitParser {
      splitMarker: "\n"

      onRead: data => {

        const event = JSON.parse(data)

        if (event.SashaWindowFocusedChanged) {
          sashaManagerRoot.focusedTitle =
            event.SashaWindowFocusedChanged.window_name ?? "No focused window"
        }

        if (event.SashaWorkspaceActivated) {
          sashaManagerRoot.focusedWorkspaceId =
            event.SashaWorkspaceActivated.id ?? 1
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
