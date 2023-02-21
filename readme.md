# Platypus Prometheus + Grafana

## Setup

1) create .env file ```cp .env.dist .env```
2) create index.html ```cp application/html/index.html.orig application/html/index.html``` That's because I'm using different ports
3) run docker ```./bin/start```
4) Set Data sources in Grafana to Prometheus ```http://<IP>:<Port>``` I have ```http://172.17.0.1:9090``` try ```ip addr show docker0```
5) Import Dashboard **Prometheus 2.0 Stats** to Grafana
6) stop docker ```./bin/stop```
7) restart docker ```./bin/restart```

User 1001 will write to the directories ./data/prometheus and ./data/grafana. So it needs rights to those directories.
