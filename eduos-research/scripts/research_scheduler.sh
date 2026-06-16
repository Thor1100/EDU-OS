#!/bin/bash

cd ~/EDU-OS/eduos-research

mkdir -p logs

while true
do
echo "====================================" | tee -a logs/research.log
echo "Research Cycle Started $(date)" | tee -a logs/research.log
echo "====================================" | tee -a logs/research.log

```
PROMPT=$(cat prompts/research_iteration.md)

OUTPUT=$(fcc-claude \
  --dangerously-skip-permissions \
  -p "$PROMPT" 2>&1)

echo "$OUTPUT" >> logs/research.log

if echo "$OUTPUT" | grep -q "429"
then
    echo "$(date) RATE LIMIT DETECTED" | tee -a logs/research.log
    echo "Sleeping 10 minutes..." | tee -a logs/research.log
    sleep 600
    continue
fi

if echo "$OUTPUT" | grep -q "rate limit"
then
    echo "$(date) RATE LIMIT DETECTED" | tee -a logs/research.log
    echo "Sleeping 10 minutes..." | tee -a logs/research.log
    sleep 600
    continue
fi

if echo "$OUTPUT" | grep -q "Too Many Requests"
then
    echo "$(date) RATE LIMIT DETECTED" | tee -a logs/research.log
    echo "Sleeping 10 minutes..." | tee -a logs/research.log
    sleep 600
    continue
fi

echo "$(date) Iteration completed successfully" | tee -a logs/research.log

sleep 30
```

done

