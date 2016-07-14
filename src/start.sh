# load watchdog kernel module
modprobe bcm2708_wdog
echo "Beware this system is being protected by a watchdog"

# Run your application here
# node app.js


disable_watchdog () {
	# disable the watchdog hardware
	echo V > /dev/watchdog
	# unload the watchdog kernel module
	modprobe -r bcm2708_wdog
}

# disable the watchdog when the container is killed
trap disable_watchdog SIGTERM
# wait indefinitely
while :
do
	sleep 1
done
