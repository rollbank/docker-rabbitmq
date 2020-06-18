FROM bitnami/rabbitmq:3.8.5-debian-10-r3

RUN cd /opt/bitnami/rabbitmq/plugins && \
    curl -L -s https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez -o rabbitmq_delayed_message_exchange-3.8.0.ez && \
    chmod 664 rabbitmq_delayed_message_exchange-3.8.0.ez
