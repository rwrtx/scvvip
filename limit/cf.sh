#!/bin/bash
#!/bin/bash
#random
apt install jq curl -y
rm -rf /root/xray/scdomain
mkdir -p /root/xray
clear
echo ""
echo ""
echo ""
sub=$(</dev/urandom tr -dc a-z0-9 | head -c3)
read -rp "Input Domain Name. Example ( CONTOH : ngewe-gaya69 ) Bebas Mau Isi Apa: " -e sub
DOMAIN=vpsstore-r32wrt.xyz
SUB_DOMAIN=${sub}.vpsstore-r32wrt.xyz
CF_ID=amandafitrizharifa009@gmail.com
CF_KEY=c1bae774aa7bc98ee7b7bcb122335b61cd652
set -euo pipefail
IP=$(curl -sS ifconfig.me);
echo "Updating DNS for ${SUB_DOMAIN}..."
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

echo "$SUB_DOMAIN" > /root/domain
echo "$SUB_DOMAIN" > /root/scdomain
echo "$SUB_DOMAIN" > /etc/xray/domain
echo "$SUB_DOMAIN" > /etc/v2ray/domain
echo "$SUB_DOMAIN" > /etc/xray/scdomain
echo "IP=$SUB_DOMAIN" > /var/lib/kyt/ipvps.conf
rm -rf cf
sleep 3
