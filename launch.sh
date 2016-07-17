#!/bin/bash

/etc/init.d/tor start

bash

tail -f /var/log/tor/notices.log 
