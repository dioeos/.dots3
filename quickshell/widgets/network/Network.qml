import Quickshell
import QtQuick
import Quickshell.Networking

import "../.." as Root

Item {
    id: networkRoot

    property string wifiName: "No WiFi"
    property int wifiSignal: 0

    implicitWidth: networkText.implicitWidth
    implicitHeight: networkText.implicitHeight

    function updateWifi() {
        const devices = Networking.devices.values

        for (let i = 0; i < devices.length; i++) {
            const device = devices[i]

            if (DeviceType.toString(device.type) !== "Wifi")
                continue

            const networks = device.networks.values

            for (let j = 0; j < networks.length; j++) {
                const network = networks[j]

                if (network.connected) {
                    wifiName = network.name
                    wifiSignal = Math.round(network.signalStrength * 100)
                    return
                }
            }
        }

        wifiName = "No WiFi"
        wifiSignal = 0
    }

    Component.onCompleted: updateWifi()

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: updateWifi()
    }

    Text {
        id: networkText
        text: wifiName + " (" + wifiSignal + "%)"
        color: wifiName === "No WiFi" ? Root.ColorManager.netRed : Root.ColorManager.fgPrimary
        font.family: Root.FontManager.nothingFontFamily
        font.pixelSize: Root.FontManager.fontNormal
    }
}
