#!/bin/sh

wg-quick up $WIREGUARD_IFACE
exec /pause
