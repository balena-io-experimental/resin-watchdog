if [ "$INITSYSTEM" == "on" ]; then
  # load watchdog kernal module
  modprobe bcm2708_wdog
  echo "Beware this system is being protected by a watchdog"
fi
# Run you app logic here
