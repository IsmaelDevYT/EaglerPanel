#!/bin/bash
cd waterfall
wget -O waterfall.jar https://api.papermc.io/v2/projects/waterfall/versions/1.20/builds/562/downloads/waterfall-1.20-562.jar
while [ true ]; do
    java -Xms4096M -Xmx4096M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar waterfall.jar --nogui

    echo Server restarting...
    echo Press CTRL + C to stop.
done
