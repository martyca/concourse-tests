#!/bin/sh
# set

cf login -a $api -u $username -p $password -o $organization -s $space
cf apps
