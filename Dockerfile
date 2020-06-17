FROM bitnami/rabbitmq:3.8.5-debian-10-r3

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    cd /plugins && \
    wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez && \
    chown rabbitmq:rabbitmq rabbitmq_delayed_message_exchange-3.8.0.ez
