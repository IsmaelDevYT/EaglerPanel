#!/bin/bash

while [ true ]; do
    java -Xms4096M -Xmx4096M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar server.jar --nogui

    echo Server restarting...
    echo Press CTRL + C to stop.
done
