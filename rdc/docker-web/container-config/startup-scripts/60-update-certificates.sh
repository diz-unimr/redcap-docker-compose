#!/usr/bin/env bash

cp /etc/container-config/ca-cert/*.crt /usr/local/share/ca-certificates/

update-ca-certificates

