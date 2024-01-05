#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
ns_domain_cloudflare1() {
apt install jq curl -y
rm -rf /root/xray/scdomain
mkdir -p /root/xray
clear

read -rp "Sub Domain (Contoh: Ngewe-gaya69): " -e sub
DOMAIN=vpsstore-r32wrt.xyz
echo $sub > /root/cf.sh
SUB_DOMAIN=${sub}.vpsstore-r32wrt.xyz
CF_ID=amandafitrizharifa009@gmail.com
CF_KEY=1113c25fddfa48ac52ad77b68067cfa3208ba
echo "vpsstore-r32wrt.xyz" > /root/domain
echo $SUB_DOMAIN > /root/domain

set -euo pipefail
IP=$(wget -qO- ipinfo.io/ip);
echo "Record DNS ${SUB_DOMAIN}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}')
echo "Host : $SUB_DOMAIN"
echo $SUB_DOMAIN > /root/domain
cp /root/domain /etc/xray/domain

echo -e "Done Record Domain= ${SUB_DOMAIN} For VPS"
sleep 2
}
ns_domain_cloudflare1