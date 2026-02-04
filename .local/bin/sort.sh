#!/usr/bin/env bash
slack_id=$(aerospace list-windows --all | awk -F'|' '/Slack/ {print $1}' | xargs)
outlook_id=$(aerospace list-windows --all | awk -F'|' '/Microsoft Outlook/ {print $1}' | xargs)
terminal_id=$(aerospace list-windows --all | awk -F'|' '/Alacritty/ {print $1}' | xargs)
code_id=$(aerospace list-windows --all | awk -F'|' '/IntelliJ IDEA/ {print $1}' | xargs)
teams_id=$(aerospace list-windows --all | awk -F'|' '/Microsoft Teams/ {print $1}' | xargs)
browser_id=$(aerospace list-windows --all | awk -F'|' '/Arc/ {print $1}' | xargs)


aerospace  move-node-to-workspace  1 --window-id "$terminal_id"
aerospace  move-node-to-workspace  2 --window-id "$browser_id"
aerospace  move-node-to-workspace  3 --window-id "$code_id"
aerospace  move-node-to-workspace  5 --window-id "$teams_id"
aerospace  move-node-to-workspace  7 --window-id "$outlook_id"
aerospace  move-node-to-workspace  8 --window-id "$slack_id"


# Move all other windows to workspace 9
all_ids=$(aerospace list-windows --all | awk -F'|' '{print $1}' | xargs)
exclude_ids="$slack_id $outlook_id $terminal_id $code_id $teams_id $browser_id"
for id in $all_ids; do
  if ! [[ " $exclude_ids " =~ " $id " ]]; then
    aerospace move-node-to-workspace "P" --window-id "$id"
  fi
done

sketchybar --trigger aerospace_workspace_change
aerospace workspace "P"




