QtObject {
    id: deviceController
    
    property var activeDevices: []
    property bool safeMode: true
    
    function updateDevice(deviceId, status) {
        if (!securityController.validateAccess()) {
            console.error("Access denied")
            return
        }
        
        try {
            let device = activeDevices.find(d => d.id === deviceId)
            if (device) {
                device.status = status
                device.lastUpdate = new Date()
                deviceStatus.update()
            }
        } catch (error) {
            safeMode = true
            console.error("Safety critical error:", error)
        }
    }
}
