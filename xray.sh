#!/bin/sh
if [ ! -f UUID ]; then
  UUID="59fb2cea-6dc2-4649-a599-5db6a6c7aa18"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

