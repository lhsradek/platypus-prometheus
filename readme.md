# Platypus Prometheus + Grafana

## Setup

1) create .env file ```cp .env.dist .env```
2) create index.html ```cp application/html/index.html.orig application/html/index.html``` That's because I'm using different ports
3) run docker ```./bin/start```
4) stop docker ```./bin/stop```
5) restart docker ```./bin/restart```

User 1001 will write to the directories ./data/prometheus and ./data/grafana. So it needs rights to those directories.
