FROM docker.elastic.co/logstash/logstash-oss:6.3.0
USER root
RUN logstash-plugin install logstash-output-jdbc
RUN yum install -y postgresql-jdbc
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
