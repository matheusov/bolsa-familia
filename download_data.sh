#!/bin/bash

mkdir -p logs/downloads
mkdir -p downloads

for ANO in {2016..2017}; do
	for MES in {01..12}; do
		wget -O downloads/$ANO$MES.zip -o logs/downloads/$ANO$MES.log "http://www.portaldatransparencia.gov.br/download-de-dados/bolsa-familia-pagamentos/$ANO$MES"
	done
done
