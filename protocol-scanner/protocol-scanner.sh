#!binbash

read -p Enter the protocol (e.g., http, ftp, ssh)  PROTO
read -p Enter the IP address or domain  TARGET

if [[ -z $PROTO  -z $TARGET ]]; then
  echo ❌ You must provide both protocol and target.
  exit 1
fi

echo [] Scanning for $PROTO on $TARGET...
echo ----------------------------------------

nmap -p- --script=${PROTO}- -Pn $TARGET -oN nmap_${PROTO}_${TARGET}.txt

echo ----------------------------------------
echo [+] Scan complete. Results saved to nmap_${PROTO}_${TARGET}.txt