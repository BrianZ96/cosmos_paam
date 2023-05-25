#!/bin/bash

#exit on error
set -e

#replace resolv.conf
umount /etc/resolv.conf && \
ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

#launch external process after init is done
exec "$@"