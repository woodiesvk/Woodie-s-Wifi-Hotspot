# Woodie's Wifi Hotspot
Gives you ability to create your own Wifi Hotspot on your **Windows 8/8.1** machine.

Made because "AdHoc" feature was removed from Windows by Microsoft.

**If you're running Windows 7 machine**, i recommend you setup AdHoc network with ICS instead of using this tool.

### Version 1.0.2 - First Public Release
Download: https://github.com/woodiesvk/Woodie-s-Wifi-Hotspot/blob/master/WifiHotspot1020-Compiled.exe?raw=true
Source code: https://github.com/woodiesvk/Woodie-s-Wifi-Hotspot/blob/master/WifiHotspot1020-Source.bat

### After you download the app, open it, use the third option to setup the network (needs to be done only once), and then READ WHAT IT SAYS SO YOU CAN ENABLE INTERNET SHARING

### Warranty Information:

**THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.**
## Troubleshooting:

### Check that you can host WiFi before you download:

Open Command Prompt and check if your PC can be a Wifi Hotspot using this command:

    netsh wlan show drivers

Then look for a line "Hosted network Supported"
- Yes means you can host WiFi
- No means you can not host Wifi and that there is no way you can do so through your current WiFi adapter (not even using external apps) - To host Wifi using your PC you will have to buy external Wifi adapter with such capabilities.

### If you setup everything right and you can host WiFi (and it does appear on other devices), yet no internet connection is shared:

1. Hit **Win+R** (Win is the windows logo next to Ctrl and Alt on your keyboard)
2. Type **services.msc** into the textbox
3. Look for *Internet Connection Sharing* in the list of services
4. Right click, Properties
5. Set Startup type to **Automatic (Delayed Start)**
6. Click OK
7. Right click, Stop
8. Right click, Start
9. Open WifiHotspot app, stop the wifi hotspot (if you haven't done so already)
10. Re-open WifiHotspot app again and start the hotspot.
11. Internet connection should be shared now through your Wifi, if it isn't, try restarting the PC and starting the hotspot again afterwards.
