#!/bin/sh
# set
apk update
apk add curl
set

json="{\"text\": \"Deployment Succeeded.\", \"username\": \"$slack-user\", \"channel\": \"$slack-channel\", \"icon_emoji\": \"$slack-icon\"}"
curl -s --data-urlencode "payload=$json" $slack-url
