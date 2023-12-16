#!/bin/bash

user=nimiq

if [ ! -e /bin/nimiq-client ]; then 
    echo "Binary not built. Please run make build first"
fi

if [ $(id $user | grep "uid" | wc -l) -eq 0 ]; then 
    echo "user does not exist"
    useradd -m -d /home/nimiq -s /sbin/nologin nimiq
fi

cp ./bin/nimiq-client /home/nimiq/nimiq-client 
chown nimiq:nimiq /home/nimiq/nimiq-client
chmod 755 /home/nimiq/nimiq-client

if [ ! -e /home/nimiq/client.toml ]; then 
    cp client.example.toml /home/nimiq/client.toml 
    chown nimiq:nimiq /home/nimiq/client.toml
    chmod 755 /home/nimiq/client.toml
fi

if [ ! -e /etc/systemd/system/nimiq.service ]; then 
    cp ./nimiq.service /etc/systemd/system/nimiq.service
fi