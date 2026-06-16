#!/bin/bash

echo "Starting Free Claude Code Proxy"

while true
do
if pgrep -f "fcc-server" > /dev/null
then
echo "$(date) Proxy already running"
else
echo "$(date) Starting proxy"
fcc-server >> ~/EDU-OS/eduos-research/logs/proxy.log 2>&1 &
fi

```
sleep 60
```

done
