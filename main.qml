import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: "IoT Control Panel"

    // Safety-critical UI components
    SafeComponent {
        id: deviceStatus
        property var devices: []
        
        ListView {
            model: deviceStatus.devices
            delegate: SafePicture {
                source: modelData.statusIcon
                onStatusChanged: updateDeviceStatus(modelData.id)
            }
        }
    }

    // IAM Management Panel
    Rectangle {
        id: iamPanel
        SafeText {
            text: "Access Control"
            font.pixelSize: 20
        }
        
        Column {
            Repeater {
                model: userRoles
                delegate: SafeComponent {
                    CheckBox {
                        text: modelData.name
                        checked: modelData.enabled
                        onCheckedChanged: {
                            securityController.updateRole(modelData.id, checked)
                        }
                    }
                }
            }
        }
    }
}
