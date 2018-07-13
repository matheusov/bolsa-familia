#!/bin/bash

mkdir -p logs/

while true; do
	for VALOR in {39..998}; do
		echo $VALOR
		echo "$(date "+%d-%m-%Y %H:%M:%S")"
		START=$(date +%s)

		mongo bolsafamilia --quiet --eval 'db.bolsafamilia.find({"Valor Parcela":'"$VALOR"'}).count()'

		echo "$(date "+%d-%m-%Y %H:%M:%S")"
		END=$(date +%s)
		DURATION=$((END - START))
		echo "$(($DURATION / 3600)):$((($DURATION / 60) % 60)):$(($DURATION % 60))"
		echo ""
	done
done
