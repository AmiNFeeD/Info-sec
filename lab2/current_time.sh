#!/bin/bash

end_hour=17
end_minute=0

current_minutes=$(date +%H)*60+$(date +%M)
current_minutes=$(( $(date +%H) * 60 + $(date +%M) ))

end_minutes=$(( end_hour * 60 + end_minute ))

remaining=$(( end_minutes - current_minutes ))

if [ $remaining -le 0 ]; then
    echo "Current time: $(date +%H:%M). Workday is over!"
else
    hours=$(( remaining / 60 ))
    minutes=$(( remaining % 60 ))
    echo "Current time: $(date +%H:%M). Workday ends in $hours hours and $minutes minutes."
fi
