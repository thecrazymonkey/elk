FROM docker.elastic.co/beats/metricbeat:5.4.1
COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
USER root
RUN chown metricbeat /usr/share/metricbeat/metricbeat.yml && \
  chmod go-w /usr/share/metricbeat/metricbeat.yml
USER metricbeat