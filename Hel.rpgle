**free
ctl-opt dftactgrp(*no) option(*srcstmt);

dcl-f DeviceLog disk(*update) extname('DeviceLog');

dcl-ds DeviceRecord;
    DeviceID char(10);
    DeviceName char(50);
    Status char(10);
end-ds;

dcl-proc UpdateDeviceStatus;
    dcl-pi *n;
        deviceId char(10);
        newStatus char(10);
    end-pi;

    // Update device status
    read DeviceLog DeviceRecord;
    if %eof(DeviceLog);
        // Handle device not found
        return;
    endif;

    if DeviceRecord.DeviceID = deviceId;
        DeviceRecord.Status = newStatus;
        update DeviceLog DeviceRecord;
    endif;
end-proc;

dcl-proc ActivateDevice;
    dcl-pi *n;
        deviceId char(10);
    end-pi;

    // Activate the device
    UpdateDeviceStatus(deviceId: 'ACTIVE');
    dsply 'Activating device ' + deviceId;
end-proc;

*inlr = *on;
//looooooooooooooooooooooooooooooooooooooooooooooooooooooooong
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
