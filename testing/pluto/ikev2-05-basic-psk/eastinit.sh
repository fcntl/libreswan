: ==== start ====
TESTNAME=ikev2-05-basic-psk
/testing/guestbin/swanprep

ipsec setup start
/testing/pluto/bin/wait-until-pluto-started

ipsec whack --whackrecord /var/tmp/ikev2.record
ipsec auto --add  westnet-eastnet-ipv4-psk-ikev2
ipsec whack --debug-control --debug-controlmore --debug-crypt
echo "initdone"

