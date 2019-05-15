FROM gcr.io/fluentd-elasticsearch/fluentd:v2.5.1
RUN apt update && apt install -y procps iputils-ping telnet iproute2
RUN gem install fluent-plugin-record-modifier fluent-plugin-rewrite-tag-filter ruby-kafka fluent-plugin-kafka
