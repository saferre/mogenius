#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c8f68102-f591-4afc-b97a-c5a4f276cb94"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

