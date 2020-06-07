FROM jupyter/pyspark-notebook:c76996e26e48
USER root
COPY rstudio-drivers_1.6.0_amd64.deb /tmp
RUN apt-get update && apt-get install -y --no-install-recommends unixodbc &&\
    apt-get install -y /tmp/rstudio-drivers_1.6.0_amd64.deb &&\
    rm -v /tmp/rstudio-drivers_1.6.0_amd64.deb
COPY odbc.ini /etc/odbc.ini
COPY odbcinst.ini /etc/odbcinst.ini
USER jovyan
RUN pip install mssql-cli
