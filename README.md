# MusicBee Linux Ultimate Setup Guide by COLVDV
  A definitive guide to setting up MusicBee on Linux under Wine, including full configuration for optimal playback &amp; remote library sync using Syncthing. Open an issue if any questions and I can make clerical edits where needed.

## Steps:
  ### 1. Install Wine & Winetricks
  In the terminal, run `sudo apt install wine winetricks` (`sudo dnf install wine winetricks` on Fedora).
  ### 2. Install MusicBee Dependencies
  `winetricks -q dotnet48 gdiplus allfonts wmp11`
  ### 3. Install MusicBee
  #### A. [Download MusicBee Installer](https://getmusicbee.com/downloads/)
  #### B. Extract `MusicBeeSetup_3_6_Update1.zip` archive. Navigate to the extracted folder in terminal:
  `cd ~/Downloads/MusicBeeSetup_3_6_Update1/`
  #### C. Install MusicBee
  `wine MusicBeeSetup_3_6.exe`
  #### D. Follow the prompts in the installer using the default settings.
  ### 4. Configure Wine Drives
  #### A. In terminal, run `winecfg`. Navigate to "Drives" tab in the window that opens. 
  #### B. Map Drive D: to your Linux Music Library location (example: ~/Music)
  ### 5. Configure MusicBee Libraries
  #### A. Configure Library Organization settings if needed. Edit > Edit Preferences > Library
  #### B. Designate a folder on your machine for library export (`~/Music-Sync`) if you plan to sync your library to another device, such as with Syncthing (see Step 8).
  #### C. Go to Edit > Edit Preferences > Devices and Add Virtual Device. Point this to the Music-Sync folder we just created.
  ### 6. Add Additional Media Playback Support (.m4a, .aac, etc.)
  #### A. Download [bass_aac24.zip](https://github.com/colvdv/MusicBee-Linux-Ultimate-Setup/blob/main/bass_aac24.zip) and [Nero Codecs](https://www.free-codecs.com/nero_aac_codec_download.htm) for .m4a & .aac support.
  #### B. Extract archive and put bass_aac.dll in MusicBee install directory (example: `~/.wine/drive_c/Program Files (x86)/MusicBee`). Extract the Nero Codecs and move the .exe files that are located in the win32 folder to your MusicBee Codecs folder (example: `~/.wine/drive_c/Program Files (x86)/MusicBee/Codec`).
  ### 7. Add & Configure MPRIS for Linux Media Playback Reporting & Playback Controls Support
  #### A. Download the latest release (.zip) of [mprisbee-bridge](https://github.com/Kyletsit/mprisbee-bridge/releases) <i>(0.3)</i> and [mb_MPRISBee](https://github.com/Kyletsit/mb_MPRISBee/releases) <i>(0.2)</i>.
  #### B. Extract the archives;
  ##### a. Move the contents of the `mb_MPRISBee` folder to your MusicBee Plugins folder (example: `~/.wine/drive_c/Program Files (x86)/MusicBee/Plugins`).
  ##### b. Move `mprisbee-bridge` to your MusicBee install directory (example: `~/.wine/drive_c/Program Files (x86)/MusicBee`).
  #### C. Download and configure the [launch script](https://github.com/colvdv/MusicBee-Linux-Ultimate-Setup/blob/main/start-musicbee.sh) and then move it to your home directory.
  #### D. Test the launch script & ensure that the plugin is working: `sh ~/start-musicbee.sh`.
  #### E. Now that it is working, let's [modify MusicBee's .desktop launcher file](https://github.com/colvdv/MusicBee-Linux-Ultimate-Setup/blob/main/MusicBee.desktop) (`~/.local/share/applications/wine/Programs/MusicBee/MusicBee.desktop`) to handle the script.
  ### 8. Configure Syncthing for Remote Library Sync
  #### A. Install Syncthing on all devices that will be using it.
  **Linux**: `sudo apt install syncthing` (`sudo dnf install syncthing` on Fedora)
  #### B. Open Syncthing Web-UI & configure sync for Music-Sync folder that we created in step 5B.
