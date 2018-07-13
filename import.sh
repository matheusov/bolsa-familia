#!/bin/bash

mkdir -p csv/

START_TOTAL=$(date +%s)

for ANO in {2017..2017}; do
	for MES in {01..12}; do
	    echo ${ANO}_$MES.zip
	    echo "$(date "+%d-%m-%Y %H:%M:%S")"
		START=$(date +%s)

		mongoimport -d bolsafamilia -c bolsafamilia --type tsv --file csv/${ANO}${MES}_BolsaFamiliaFolhaPagamento.csv --headerline
		rm ${ANO}${MES}_BolsaFamiliaFolhaPagamento.csv

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
