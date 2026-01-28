#!/bin/bash
hyprshot -m region -o /tmp
kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share /tmp/$(ls -t /tmp/*.png | head -1 | xargs basename)
