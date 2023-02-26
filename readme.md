# Platypus Prometheus + Grafana

## Setup

1) create .env file ```cp .env.dist .env```

2) create index.html ```cp application/html/index.html.orig application/html/index.html``` That's because I'm using different ports

3) run docker ```./bin/start```

4) Set Data sources in Grafana to Prometheus ```http://host.docker.internal:9090``` or try ```ip addr show docker0```

5) Import Dashboard **Prometheus 2.0 Stats** to Grafana

6) restart docker ```./bin/restart```
```
================= STOP =================
Stopping www-monitor-grafana           ... done
Stopping www-monitor-prometheus        ... done
Stopping www-monitor-nginx-exporter    ... done
Stopping www-monitor-postgres          ... done
Stopping www-monitor-tomcat-exporter   ... done
Stopping www-monitor-tomcat            ... done
Stopping www-monitor-postgres-exporter ... done
Stopping www-monitor-wildfly           ... done
Stopping www-monitor-nginx             ... done
Stopping www-monitor-httpd-exporter    ... done
Stopping www-monitor-httpd             ... done
Removing www-monitor-grafana           ... done
Removing www-monitor-prometheus        ... done
Removing www-monitor-nginx-exporter    ... done
Removing www-monitor-postgres          ... done
Removing www-monitor-tomcat-exporter   ... done
Removing www-monitor-tomcat            ... done
Removing www-monitor-postgres-exporter ... done
Removing www-monitor-wildfly           ... done
Removing www-monitor-nginx             ... done
Removing www-monitor-httpd-exporter    ... done
Removing www-monitor-httpd             ... done
Network monitor.local is external, skipping
================= START =================
Creating www-monitor-postgres          ... done
Creating www-monitor-wildfly           ... done
Creating www-monitor-httpd-exporter    ... done
Creating www-monitor-tomcat            ... done
Creating www-monitor-tomcat-exporter   ... done
Creating www-monitor-postgres-exporter ... done
Creating www-monitor-nginx             ... done
Creating www-monitor-httpd             ... done
Creating www-monitor-prometheus        ... done
Creating www-monitor-grafana           ... done
Creating www-monitor-nginx-exporter    ... done
```

7) stop docker ```./bin/stop```

User **1001** will write to the directories **./data/prometheus** and **./data/grafana**  so it needs rights to those directories.

I monitor httpd, nginx, postgres, prometheus, tomcat and wildfly. Apache Httpd seems to be the slowest. It's a surprise to me and platypus that it's slower than postgres. [See](https://github.com/lhsradek/platypus-prometheus/blob/main/png/prometheus.png)

<p>
<img src="https://github.com/lhsradek/platypus-prometheus/blob/main/png/Platypus_as_computer_metrics_watcher_by_Prometheus.png" width="400px" height="400px"/>
</p>
