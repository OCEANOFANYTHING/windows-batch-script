@echo off
set DriveLimit=300000000
for /f "usebackq delims== tokens=2" %%x in (`wmic logicaldisk where "DeviceID='C:'" get FreeSpace /format:value`) do set FreeSpace=%%x
Echo FreeSpace="%FreeSpace%"
Echo Limit="%DriveLimit%"
If %FreeSpace% GTR %DriveLimit% (
 Echo There is enough free space.
) else (
 Echo Not enough free space.