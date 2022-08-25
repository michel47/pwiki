# Problem of multihash subdomain limit w/ IPFS

can we have multihash w/ more than 64 character in an ipfs subs.domain

problem with TSL non ** certificate !



etag: "bafkqagttovtgm2ldnfsw45dmpeqgy33om4qhaylznrxwczak"
last-modified: Thu, 01 Jan 1970 00:00:01 GMT
x-ipfs-gateway-host: gateway-bank1-ams1
x-ipfs-path: /ipfs/bafkqagttovtgm2ldnfsw45dmpeqgy33om4qhaylznrxwczak

I-Match: bafkqagttovtgm2ldnfsw45dmpeqgy33om4qhaylznrxwczak

would this be a solution ?
having the first 63 characters or less of the multishash as a subdomain and
the rest or full CID communicated to the gateway by other means :

http request header constructed with a fragment ?
If-Match: "{{CID}}"
or 
Content-CID: {{CID}}
X-ipfs-path: /ipfs/{{CID}}

for example : http://bafkqagttovtg.ipfs.dweb.link/#m2ldnfsw45dmpeqgy33om4qhaylznrxwczak
If-Match: "m2ldnfsw45dmpeqgy33om4qhaylznrxwczak"
x-ipfs-path: bafkqagttovtgm2ldnfsw45dmpeqgy33om4qhaylznrxwczak

this can be considered as sharding the "CID" with the subdomain part the 

will wildcard subdomains solve the gateways SSL problem ?


cons: it could brake apps that already make use of the #fragment!
