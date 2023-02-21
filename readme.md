# Platypus Prometheus + Grafana

## Setup

1) create .env file ```cp .env.dist .env```
2) create index.html ```cp application/html/index.html.orig application/html/index.html``` That's because I'm using different ports
3) run docker ```./bin/start```
4) Set Data sources in Grafana to Prometheus ```http://<IP>:<Port>``` I have ```http://172.17.0.1:9090``` try ```ip addr show docker0```
5) Import Dashboard **Prometheus 2.0 Stats** to Grafana
6) restart docker ```./bin/restart```
7) stop docker ```./bin/stop```

User **1001** will write to the directories **./data/prometheus** and **./data/grafana**  so it needs rights to those directories.

<p>
<img src="https://github.com/lhsradek/platypus-prometheus/blob/main/png/Platypus_as_computer_metrics_watcher_by_Prometheus.png" width="300px" height="300px"/>
</p>
