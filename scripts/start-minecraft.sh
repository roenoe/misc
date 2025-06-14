#/bin/env bash

# Kill previous server
tmux send-keys "say server will restart in 1 minute" C-m
sleep 60
tmux send-keys "stop" C-m
sleep 10
pkill java
sleep 10

# Start a new one
StartCommand="java -Xmx6144M -Xms2048M -jar ~/mc-data/paper.jar nogui"
tmux send-keys "$StartCommand" C-m
