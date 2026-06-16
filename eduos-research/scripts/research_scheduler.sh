#!/bin/bash

cd ~/EDU-OS/eduos-research

mkdir -p logs

SUCCESS_COOLDOWN=300
RATE_LIMIT_COOLDOWN=600

while true
do
echo "====================================" | tee -a logs/research.log
echo "Research Cycle Started $(date)" | tee -a logs/research.log
echo "====================================" | tee -a logs/research.log


PROMPT=$(cat prompts/research_iteration.md)

OUTPUT=$(fcc-claude \
    --dangerously-skip-permissions \
    -p "$PROMPT" 2>&1)

echo "$OUTPUT" >> logs/research.log

if echo "$OUTPUT" | grep -qi "429\|rate limit\|Too Many Requests"
then
    echo "$(date) RATE LIMIT DETECTED" | tee -a logs/research.log
    echo "Sleeping $RATE_LIMIT_COOLDOWN seconds..." | tee -a logs/research.log

    sleep $RATE_LIMIT_COOLDOWN

    continue
fi

echo "$(date) Iteration completed successfully" | tee -a logs/research.log
echo "Sleeping $SUCCESS_COOLDOWN seconds..." | tee -a logs/research.log

sleep $SUCCESS_COOLDOWN


done

