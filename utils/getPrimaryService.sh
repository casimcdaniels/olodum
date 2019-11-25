#!/bin/sh

SERVICE_GUID=`printf "open\nget State:/Network/Global/IPv4\nd.show" | \
scutil | grep "PrimaryService" | awk '{print $3}'`


SERVICE_NAME=`printf "open\nget Setup:/Network/Service/$SERVICE_GUID\nd.show" |\
scutil | grep "UserDefinedName" | awk -F': ' '{print $2}'`

echo $SERVICE_NAME

