#!/bin/bash

echo  "Downloading Rstudio drivers"

curl -o ./jupyter/rstudio-drivers_1.6.0_amd64.deb https://drivers.rstudio.org/7C152C12/installer/rstudio-drivers_1.6.0_amd64.deb

echo "Run 'docker-compose up' to spin up JupyterLab Server and attached MS SQL Server"
echo
echo "upload test_connection_mssql.ipynb to Jupyter and run all cells to check it works"