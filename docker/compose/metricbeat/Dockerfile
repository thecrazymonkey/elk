FROM docker.elastic.co/beats/metricbeat:5.4.1
COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
COPY run.sh /usr/share/metricbeat/
USER root
RUN chown metricbeat:metricbeat /usr/share/metricbeat/metricbeat.yml && \
  chmod go-w /usr/share/metricbeat/metricbeat.yml && \
  chown metricbeat:metricbeat /usr/share/metricbeat/run.sh && \
  chmod +x /usr/share/metricbeat/run.sh
  
USER metricbeat
CMD run.sh
