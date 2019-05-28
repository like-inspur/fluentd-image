FROM gcr.io/fluentd-elasticsearch/fluentd:v2.3.1
RUN apt update && apt install -y procps iputils-ping telnet iproute2 iftop build-essential autoconf automake libtool libsnappy-dev
RUN gem install fluent-plugin-record-modifier fluent-plugin-rewrite-tag-filter snappy
RUN gem install ruby-kafka --version 0.6.7 && gem install fluent-plugin-kafka --version 0.7.9
ENV SERVICES=""
COPY run.sh /run.sh
