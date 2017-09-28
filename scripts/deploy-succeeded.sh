#!/bin/bash
# set
apk update
apk add curl
set

json="{\"text\": \"Deployment Succeeded.\", \"username\": \"$slackuser\", \"channel\": \"$slackchannel\", \"icon_emoji\": \"$slackicon\"}"
curl -s --data-urlencode "payload=$json" $slackurl
