# JupyterLab and MS SQL Server connected through RStudio driver

This `docker-compose.yaml` spins up a separate JupyterLab from the same base image that we use in our deployment and installs one of the most recent releases of MS SQL server.

**IMAGES ARE HEAVY AND CONSUME SIGNIFICANT RESOURCES!**

1. Container with MS SQL Server requires 2 GB of RAM on your host if you are going to play with it hardly, keep that in mind.

2. jupyter/pyspark-notebook is about 1.5 GB in size, but it doesn't need much resources so it could impact on performance.

**NO PERSISTENT STORAGE BEING USED FOR NOW, KEEP THAT IN MIND!**

## HOW TO USE THIS PROTOTYPE - TL;DR

* Execute `01-download-driver.sh` shell-script, it will download required package with the driver.

* Execute `docker-compose up` from directory that contains `docker-compose.yaml`.

* Wait while containers are being spun up, it will take some time to pull images and start up containers. You will see a link for connection to the Jupyter Notebook in stdout, copy it and paste into browser search line.

* Upload `test_connection_mssql.ipynb` to Jupyter Server and run all cells to test connectivity. You can also use mssql-cli that will appear after you run the notebook.

---

## Manual way of doing things

If you want to do things on your own you can exec to  `jupyter` container and run this commands to install client and connect to database.

```shell-script
# Install client to mssql
pip install mssql-cli

# Connect to MS SQL and run anything you want
mssql-cli -S mssql -U sa -P'#!Gentoo12'

```

**Password is hardcoded into _jupyter/odbc.ini_ and _mssql/Dockerfile_.**

 **If you want to use another one for database connection, you will need to change it in two places!**
