#!/bin/sh

echo "privatekey"
/usr/bin/wg genkey | tee privkey.txt
echo "publickey"
cat privkey.txt | /usr/bin/wg pubkey
