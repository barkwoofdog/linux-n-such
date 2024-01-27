#!/bin/zsh

#simple little script to pull a UUID from mojang API. inserts characters to make it a long UUID
#use case for this is grabbing full UUID for whitelisting etc

echo "Username to pull Long UUID For"

read username

#URL needs to be a variable so wget can grab the output
resourceURL=https://api.mojang.com/users/profiles/minecraft/$username
api_output="`wget -qO- $resourceURL`"

#grabs the raw uuid between the specified characters. allows string manipulation in next step
rawUUID=${api_output:12:32}

#string manipulation to inset '-' characters to convert short UUID to Long UUID to use in server lists
fullUUID=${rawUUID:0:8}-${rawUUID:8:4}-${rawUUID:12:4}-${rawUUID:16:4}-${rawUUID:20:12}

echo the full UUID is $fullUUID
