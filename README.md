# Audio-Stream-Bot

Use a python bot with discord API to share Audio live stream to OBS and such.

## Docker deployment
To setup the bot, change the options in docker-compose.yml
```
environment:
    TOKEN: <your discord bot token>
    CHANNEL: <discord channel id>
    DEVICE: <output stream interface>
```
make sure to map the sound card as docker volume or docker device.