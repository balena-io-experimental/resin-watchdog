## Warning

**NOT RECOMMENDED FOR PRODUCTION**
This demo feeds the watchdog from the application container, if an update (killing the old container and starting the new one) takes longer than the watchdog interval the device will go into and infinite bootloop and you are going to have a bad time. 

## Watchdog demo

This is a simple watchdog example project made for resin.io devices with the `bcm2708` chipsets like the Raspberrry Pi. 

This project loads the watchdog kernel module `modprobe bcm2708_wdog`. And runs systemd's built-in watchdog daemon, if the system hangs, systemd's software watchdog will fail to notify the hardware that it is alive and the system will restart.

### Testing

Jump into the resin.io web terminal and run:

Fork bomb: `bash usr/src/app/watchdog/tests/fork_bomb.sh`

Stress test: `stress-ng --random 1000`

To get this project up and running, you will need to signup for a resin.io account [here][signup-page] and set up a device, have a look at our [Getting Started tutorial][gettingStarted-link]. Once you are set up with resin.io, you will need to clone this repo locally:
```
$ git clone git@github.com:resin-io-projects/resin-watchdog.git
```
Then add your resin.io application's remote:
```
$ git remote add resin username@git.resin.io:username/myapp.git
```
and push the code to the newly added remote:
```
$ git push resin master
```

[resin-link]:https://resin.io/
[signup-page]:https://dashboard.resin.io/signup
[gettingStarted-link]:http://docs.resin.io/#/pages/installing/gettingStarted.md
