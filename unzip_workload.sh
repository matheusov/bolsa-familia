#!/bin/bash

mkdir -p csv/
mkdir -p logs/

while true; do
	for ANO in {2017..2017}; do
		for MES in {01..12}; do
		    echo ${ANO}_$MES.zip
		    echo "$(date "+%d-%m-%Y %H:%M:%S")"
			START=$(date +%s)

			unzip downloads/$ANO$MES.zip -d csv/
			if [[ $? == 0 ]] ; then
				echo "SUCCESS"
				rm csv/${ANO}${MES}_BolsaFamilia_Pagamentos.csv
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
done
