#!/bin/bash
printf "[\n"
card=0;
for shading in "full" "stripes" "open"; do
	for shape in "peanut" "diamond" "oval"; do
		for color in "red" "purple" "green"; do
			for count in {1..3}; do
				if (( $card )); then
					printf ",";
				fi
				printf "\n\t{\n"
				printf "\t\t\"shading\": \"$shading\",\n";
				printf "\t\t\"shape\": \"$shape\",\n";
				printf "\t\t\"color\": \"$color\",\n";
				printf "\t\t\"count\": $count\n";
				printf "\n\t}";
				((card++))
			done;
		done;
	done;
done
printf "\n]\n"
