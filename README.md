This repo is designed to generate a grafana monitoring dashboard and install all reporting jobs. 

there is a bit of a chick and egg problem related to generating the API key. Once the dashboard role has run go to the influxdb web interface  http://<ip>:8086 to create an API key. Record this in the vault. 