# MusicBee Linux Ultimate Setup Guide by COLVDV
  A definitive guide to setting up MusicBee on Linux under Wine, including full configuration for optimal playback &amp; remote library sync using Syncthing. [WORK IN PROGRESS]

## Steps:
  ### 1. Install Wine & Winetricks
  ### 2. Install MusicBee Dependencies
  In the terminal, run `winetricks -q dotnet48 gdiplus allfonts wmp11`.
  ### 3. Install MusicBee
  ### 4. Configure Wine Libraries
  ### 5. Configure MusicBee Libraries
  ### 6. Add Additional Media Playback Support (.m4a, .aac, etc.)
  ### 7. Add & Configure MPRIS for Linux Media Playback Reporting & Playback Controls Support
  #### A. Download the latest release (.zip) of [mprisbee-bridge](https://github.com/Kyletsit/mprisbee-bridge/releases) <i>(0.3)</i> and [mb_MPRISBee](https://github.com/Kyletsit/mb_MPRISBee/releases) <i>(0.2)</i>.
  #### B. Extract the archives; move the contents of the mb_MPRISBee folder to your MusicBee Plugins folder (example: `/home/USERNAME/.wine/drive_c/Program Files (x86)/MusicBee/Plugins`); move `mprisbee-bridge` to your MusicBee install directory (example: `/home/USERNAME/.wine/drive_c/Program Files (x86)/MusicBee`).
  #### C. Download and configure the [launch script](https://github.com/colvdv/MusicBee-Linux-Ultimate-Setup/blob/main/start-musicbee.sh) and then move it to your home directory.
  #### D. Test the launch script & ensure that the plugin is working: `sh ~/start-musicbee.sh`.
  #### E. Now that it is working, let's [modify MusicBee's .desktop launcher file](https://github.com/colvdv/MusicBee-Linux-Ultimate-Setup/blob/main/MusicBee.desktop) (`~/.local/share/applications/wine/Programs/MusicBee/MusicBee.desktop`) to handle the script.
  ### 8. Configure Syncthing for Remote Library Sync
