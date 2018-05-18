#cron job midnight to 6am

59 23 * * * kill -HUP `pidof xmrig` # It may not be running, but just in case you manually ran it, don't run a second copy.
0 0 * * * $HOME/ZT-xmr-pi/start.sh # Execute the script
0 6 * * * kill -HUP `pidof xmrig` # Stop mining at 6am
