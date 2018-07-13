#!/bin/bash

mkdir -p logs/downloads
mkdir -p downloads

for ANO in {2016..2017}; do
	for MES in {01..12}; do
		wget -O downloads/$ANO$MES.zip -o logs/downloads/$ANO$MES.log "http://arquivos.portaldatransparencia.gov.br/downloads.asp?a=$ANO&m=$MES&consulta=BolsaFamiliaFolhaPagamento"
	done
done
