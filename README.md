# home-assistant-systemd
Starting/stopping home-assistant.io on Raspberry Pi via systemd.

Assumes that home-assistant.io has been installed according to:

https://www.home-assistant.io/installation/raspberrypi#install-home-assistant-core

## Installation

* copy `hass.sh` into:

  ```commandline
  /usr/local/bin
  ```

* copy `hass.service` into:

  ```commandline
  /etc/systemd/system
  ```

* enable service

  ```commandline
  sudo systemctl enable hass
  ```

