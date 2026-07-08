#!/bin/bash

MODE=$(makoctl mode 2>/dev/null)
RAW_LIST=$(makoctl list -j 2>/dev/null)

# Since the JSON is a flat array, just use 'length' to count the objects
INDEX=$(echo "$RAW_LIST" | jq 'length' 2>/dev/null || echo 0)

# If INDEX isn't a valid number, force it to 0
if ! [[ "$INDEX" =~ ^[0-9]+$ ]]; then
    INDEX=0
fi

# Use grep to check if do-not-disturb is anywhere in the mode output
if echo "$MODE" | grep -q "do-not-disturb"; then
    # Icon/text for Do Not Disturb mode
    echo '{"text": "󰂛", "class": "dnd", "tooltip": "Do Not Disturb active"}'
elif [ "$INDEX" -gt 0 ]; then
    # Icon/text when you have unread notifications
    echo "{\"text\": \"󱅫\", \"class\": \"unread\", \"tooltip\": \"$INDEX unread notifications\"}"
else
    # Icon/text for normal, empty state
    echo '{"text": "󰂚", "class": "default", "tooltip": "No notifications"}'
fi
