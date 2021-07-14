#!/bin/sh
service rsyslog start
touch /var/log/syslog
python3 -x /das/main.pyw -t ${TOKEN} -c ${CHANNEL} -d ${DEVICE}
tail -f /var/log/syslog
