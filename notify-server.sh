#!/bin/bash

while read -r message
do
	icon="$(echo "${message}" | cut -s -d ":" -f 1)"
	message="$(echo "${message}" | cut  -d ":" -f 2-)"

	if [[ -n "${icon}" ]]
	then
		notify-send -i "${icon}" "${message}"
	else
		notify-send "${message}"
	fi

done  < <(netcat -l -k -u 14993)
