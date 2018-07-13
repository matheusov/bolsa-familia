#!/bin/bash

mkdir -p csv/

START_TOTAL=$(date +%s)

for ANO in {2017..2017}; do
	for MES in {01..12}; do
	    echo ${ANO}_$MES.zip
	    echo "$(date "+%d-%m-%Y %H:%M:%S")"
		START=$(date +%s)

		unzip downloads/$ANO$MES.zip -d csv/
		if [[ $? == 0 ]] ; then
			echo "SUCCESS"
			rm downloads/$ANO$MES.zip
		else
			echo "FAILED"
		fi

	    echo "$(date "+%d-%m-%Y %H:%M:%S")"
		END=$(date +%s)
		DURATION=$((END - START))
		echo "$(($DURATION / 3600)):$((($DURATION / 60) % 60)):$(($DURATION % 60))"
		echo ""
	done
done

END_TOTAL=$(date +%s)
DURATION_TOTAL=$((END_TOTAL - START_TOTAL))
echo "DURATION: $(($DURATION_TOTAL / 3600)):$((($DURATION_TOTAL / 60) % 60)):$(($DURATION_TOTAL % 60))"
