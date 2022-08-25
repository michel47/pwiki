# Host Risk Analysis 


```digraph
microsoft -> US
amazon -> US
googleusercontent.com -> google -> US
cloudflare -> US
gandi.net -> FR

1api.net -> DE
surge.sh -> CA
netlify.com -> US
netlify -> digitalocean.com -> US

35.185.44.232 -> googleusercontent.com
104.198.14.52 -> googleusercontent.com

recatcha -> google
font -> google

"gitlab.com CDN" -> gitlab.com -> microsoft
"gitlab.com CDN" -> cloudflare
gitlab.com -> gandi.net -> amazon
gitlab.com -> ns.cloudflare.com

gitbook.com -> google
[gitix][1] -> "<herokuapp.com>"

gc-bank.org -> ns-cloud-e1.googledomains.com -> google

ns01.freenom.com -> freenom.com -> googleusercontent.com -> google
ns01.freenom.com -> amazon

graphviz.org -> googleusercontent.com

surge.sh -> ns1.iwantmyname.net -> 1api.net
na-west1.surge.sh -> ns1.iwantmyname.net
netlify.com -> nsone.net -> name.com
jsdelivr.com -> OVH -> CA
jsdelivr.com -> ns.cloudflare.com

inkpadnotepad.app -> google
```


# TBD: make a graph of it


[1]: https://gitix.herokuapp.com (Radiks Server)
