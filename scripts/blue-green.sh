#!/bin/sh
# set

cf login -a $api -u $username -p $password -o $organization -s $space
cf map-route concourse-app-staged cfapps.io --hostname rws-concourse-test
cf delete concourse-app -r -f
cf rename concourse-app-staged concourse-app
