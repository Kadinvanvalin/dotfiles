sketchybar --add event aerospace_workspace_change
sketchybar --trigger aerospace_workspace_change
workplace_num_use_map[1]="pair"
workplace_num_use_map[2]="browser"
workplace_num_use_map[3]="term"
workplace_num_use_map[4]="code"
workplace_num_use_map[5]="slack"
workplace_num_use_map[6]="notes"
workplace_num_use_map[7]=""
workplace_num_use_map[8]=""
workplace_num_use_map[9]="dump"

separator=(
  icon=􀆊
  icon.font="$FONT:Heavy:16.0"
  padding_left=15
  padding_right=15
  label.drawing=off
  associated_display=active
  click_script='yabai -m space --create && sketchybar --trigger space_change'
  icon.color=$WHITE
)

for sid in $(aerospace list-workspaces --monitor 1); do
  open_windows=$(aerospace list-windows --workspace "$sid" | wc -l | xargs)
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=0x44ffffff \
        background.corner_radius=5 \
        background.height=20 \
        background.drawing=off \
        label="$sid:${workplace_num_use_map[$sid]} ($open_windows)" \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"

done
sketchybar --add bracket spaces space.A     \
           --set         spaces background.color=0xffffffff \
                                background.corner_radius=4  \
                                background.height=20


for sid in $(aerospace list-workspaces --monitor 2); do
  open_windows=$(aerospace list-windows --workspace "$sid" | wc -l | xargs)
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=0x44ffffff \
        background.corner_radius=5 \
        background.height=20 \
        background.drawing=off \
        label="$sid:${workplace_num_use_map[$sid]} ($open_windows)" \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
#for sid in $(aerospace list-workspaces --monitor 2); do
#sketchybar --add bracket spaces2 "space.$sid"     \
#           --set         spaces background.color=0xffffffff \
#                                background.corner_radius=4  \
#                                background.height=20
#done
source "$ITEM_DIR/front_app.sh"