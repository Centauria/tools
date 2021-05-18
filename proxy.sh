#!/bin/bash

if [ $1 = on ]; then
	# Change the IP and port to your own proxy server
	export http_proxy=172.16.46.2:7890
	export https_proxy=$http_proxy
elif [ $1 = off ]; then
	export http_proxy=
	export https_proxy=
else
	echo "Option not valid." >&2
fi
