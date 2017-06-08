FROM docker.elastic.co/beats/filebeat:5.4.1
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
COPY run.sh /usr/share/filebeat/
USER root
RUN chown filebeat /usr/share/filebeat/filebeat.yml && \
  chmod go-w /usr/share/filebeat/filebeat.yml && \
  chmod +x /usr/share/filebeat/run.sh
USER filebeat
CMD run.sh
