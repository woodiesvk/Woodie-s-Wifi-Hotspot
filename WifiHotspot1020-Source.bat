@ECHO OFF
CLS
ECHO Welcome to Wifi Hotspot app, made by WoodieSvK for Windows 8/8.1 use
ECHO What do you want to do?
ECHO -----------------------
ECHO 1.Start Wifi Hotspot
ECHO 2.Stop Wifi Hotspot
ECHO 3.Setup and Start Wifi Hotspot
ECHO 4.Help
ECHO.

CHOICE /C 1234 /M "Enter your choice (number):"

IF ERRORLEVEL 4 GOTO Help
IF ERRORLEVEL 3 GOTO SetupHotspot
IF ERRORLEVEL 2 GOTO StopHotspot
IF ERRORLEVEL 1 GOTO StartHotspot

:StartHotspot
netsh wlan start hostednetwork
GOTO End

:StopHotspot
netsh wlan stop hostednetwork
GOTO End

:SetupHotspot
netsh wlan set hostednetwork mode=allow ssid=mountaindew key=hellokitty
netsh wlan start hostednetwork
ECHO.
ECHO If it says "The hosted network started." please turn on ICS (if you haven't done so before).
ECHO ---------------------------------
ECHO Go to control panel
ECHO Search "Network Connections"
ECHO Click on "View Network Connections"
ECHO Right click on your internet connection (not the hotspot you created)
ECHO Click "Properties"
ECHO Go to "Sharing" tab
ECHO Enable only the first option, then select Home networking connection
ECHO In there you should select your created WiFi Hotspot
ECHO Tip: Name of the created Wifi Hotspot is over the SSID (mountaindew) in your network connections
ECHO.
ECHO SSID: mountaindew PW: hellokitty
GOTO End

:Help
ECHO.
ECHO Name and password of created Wifi?
ECHO ---------------------------------
ECHO SSID: mountaindew, PW: hellokitty
ECHO.
ECHO Can i change name and password of created Wifi?
ECHO ---------------------------------
ECHO There is no way to change SSID and PW right now.
ECHO Only if you edit and compile the code yourself.
ECHO.
ECHO How do i start Internet Connection Sharing?
ECHO ---------------------------------
ECHO Go to control panel
ECHO Search "Network Connections"
ECHO Click on "View Network Connections"
ECHO Right click on your internet connection (not the hotspot you created)
ECHO Click "Properties"
ECHO Go to "Sharing" tab
ECHO Enable only the first option, then select Home networking connection
ECHO In there you should select your created WiFi Hotspot
ECHO Tip: Name of the created Wifi Hotspot is over the SSID (mountaindew) in your network connections
ECHO.
ECHO It does not work...
ECHO ---------------------------------
ECHO Open Google or navigate to
ECHO http://bit.ly/1HiVZus
ECHO and check if you have done everything right
GOTO End

:End
PAUSE