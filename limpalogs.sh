#!/bin/bash
# OBS SO ALTERE O NOME nome
echo "DELETE FROM sis_logs WHERE login like '%nome%'" | mysql -h localhost -u root -pvertrigo mkradius
