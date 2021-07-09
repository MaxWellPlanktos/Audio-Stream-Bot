# Discord Audio Pipe

This repo is a fork of this [one](https://github.com/QiCuiHub/discord-audio-pipe).

Discord Audio Pipe is a simple program to send stereo audio (microphone, stereo mix, virtual audio cable, etc) into a discord bot.

This fork enables the use of PulseAudio or PipeWire (with pipewire-pulse) instead of ALSA or OSS (with PortAudio) on Linux systems.

You can download the latest release (for windows only) [**here**](https://github.com/QiCuiHub/discord-audio-pipe/releases)
- If you are using the source code, install the dependencies and start the program using `main.pyw`
- The `.exe` does not require python or dependencies

## Setting up a Bot account
1. Follow the steps [**here**](https://discordpy.readthedocs.io/en/latest/discord.html) to setup and invite a discord bot
2. To link the program to your bot, create a file ``token.txt`` in the same directory as the `.exe` / `main.pyw` and save the bot token inside

## Dependencies on Windows
Please just use the `.exe` on the original repo.

## Dependencies on Linux
Requires Python 3.5+.

### ArchLinux / Manjaro
With an AUR wrapper like `yay` :
```
yay -S libxcb qt5-svg python-pyqt5 ffmpeg python-pynacl python-discord python-pulsectl
```

### Ubuntu / Debian
With APT :
```
sudo apt install libxcb-xinerama0 python3-pyqt5.qtsvg ffmpeg python3-nacl python3-aiohttp
```

And with pip3 (as user) :
```
pip3 --user pulsectl discord.py
```

<!-- Install dependencies by running on a virtual environement (virtenv, pyenv, etc...):
- On Windows `pip3 install -r requirements_win.txt`
- On Linux `pip3 install -r requirements_linux.txt`-->

## CLI
Running the `.exe` / `main.pyw` without any arguments will start the graphical interface. Alternatively, discord-audio-pipe can be run from the command line and contains some tools to query system audio devices and accessible channels.
```
usage: main.pyw [-h] [-t TOKEN] [-v] [-c CHANNEL] [-d DEVICE] [-D] [-C]

Discord Audio Pipe

optional arguments:
  -h, --help            show this help message and exit
  -t TOKEN, --token TOKEN
                        The token for the bot
  -v, --verbose         Enable verbose logging

Command Line Mode:
  -c CHANNEL, --channel CHANNEL
                        The channel to connect to as an id
  -d DEVICE, --device DEVICE
                        The device to listen from as an index

Queries:
  -D, --devices         Query compatible audio devices
  -C, --channels        Query servers and channels (requires token)
```
