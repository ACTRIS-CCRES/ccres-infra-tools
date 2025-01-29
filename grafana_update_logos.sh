#!/bin/bash
#
# link
# https://volkovlabs.io/blog/how-to-customize-the-grafana-user-interface-8d70a42dc2b6/

SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")

GRAFANA_LOCAL_DIR=$SCRIPT_DIR/grafana/logos
GRAFANA_REMOTE_DIR="/usr/share/grafana/public/img"
GRAFANA_FAVICON=$GRAFANA_LOCAL_DIR/favicon.png
GRAFANA_LOGO=$GRAFANA_LOCAL_DIR/logo.svg

login=$1
server=$2

# update favicon
scp "$GRAFANA_FAVICON" "$login"@"$server":"$GRAFANA_REMOTE_DIR"/fav32.png
scp "$GRAFANA_FAVICON" "$login"@"$server":"$GRAFANA_REMOTE_DIR"/apple-touch-icon.png

# update logo
scp "$GRAFANA_LOGO" "$login"@"$server":"$GRAFANA_REMOTE_DIR"/grafana_icon.svg

exit 0
