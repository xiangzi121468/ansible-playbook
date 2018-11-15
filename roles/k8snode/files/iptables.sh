#!/usr/bin/env bash
iptables -F && iptables -X && iptables -F -t nat && iptables -X -t nat
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -t nat -A POSTROUTING -j MASQUERADE
iptables -A FORWARD -j ACCEPT