---
---
<meta charset="utf8"/>
# domains expiration dates ...

https://my.freenom.com/cart.php?a=view
https://my.freenom.com/cart.php?a=confdomains

```csv
,@,A,104.198.14.52
,www,CNAME,acmetm.netlify.com
,@,MX,10 mail.mailinator.com
,contact,RP,"michel.mychelium.ml. ."
,_dnslink,TXT,"dnslink=/ipns/QmNzufyrKrzzL3eqNKe6iuDV875SN1Egn2PkKeWxtpNeTk"
,_json,TXT,'{"qm":"QmXV2wm2uWhCYPsNTUau6whiwCg4hg9CkaVjs9WnVwdLLX"}'
```

## Expiration &amp; RPs
{% for record in site.data.next reversed %}
{% if forloop.index <= 5 %} - {{forloop.rindex}} {% for field in record %}{{field[1]}}{% endfor %}{% endif %}
{% endfor %}

### RPS ...
```csv
# https://my.freenom.com/clientarea.php?action=domains&orderby=nextexpirydate
#RP,*,type,date
.
iglake.yandex.com.,*,TXT,"unverified"
<<<<<<< HEAD
michelcombes.advancementofcivilizationeffort.org.,*,TXT,2020.02.27
michel.iph.heliohost.org.,*,TXT,2020.03.18
evolution.gc-bank.org.,*,TXT,2020.04.07
essenctango.gmail.com.,*,TXT,2020.04.16
m69.iph.heliohost.org.,*,TXT,2020.07.25
iggyl.sniptext.com.,*,TXT,2020.07.31
bring.sniptext.com.,*,TXT,2020.08.14
union.gc-banktm.com.,*,TXT,2020.09.23
mgcombes.gmail.com.,*,TXT,
ric.iph.heliohost.org.,*,TXT,2020.12.10
omps.gc-bank.org.,*,TXT,2021.01.01
=======
mgcombes.gmail.com.,*,TXT,"banned"

essenctango.gmail.com.,*,TXT,2020-11-11 (41 marketsm.ml = fraud)
bring.sniptext.com.,*,TXT,2020-11-19 (39: banned 0x08823)
ric.iph.heliohost.org.,*,TXT,2020.12.10 (.255: banned 0x08823)
michelcombes.advancementofcivilizationeffort.org.,*,TXT,2020.12.18 (25: banned 0x08823)
omps.gc-bank.org.,*,TXT,2021.01.01 (technical error)
iggyl.sniptext.com.,*,TXT,2021-01-09
union.gc-banktm.com.,*,TXT,2021-01-26 (marketsm.tk = fraud)
evolution.gc-bank.org.,*,TXT,2021-02-07 (good condition: 47)
michel.iph.heliohost.org.,*,TXT,2021-02-12
m69.iph.heliohost.org.,*,TXT,2021-07-25 (banned 0x08823)
holon20200202.gmail.com.,*,TXT,2021-03-11
m.combes.gc-bank.org.,*,TXT,2020.11.19 (only gc-banktm.com site as it is banned, request for data removal)
dr.mik@nutrauhealth.com,*,TXT,2021-10-26
>>>>>>> 3e66df03530cebcf372348c13463e042e4410945

# $Source: /my/documents/expiration-dates.txt$
```

### default value for records

#### static IPs:
* 35.185.44.232 gitlab.io (google cloud)
* 45 55 110 124](45.55.110.124) na-west1.surge.sh
* 104.198.14.52 netlify.com

35.185.44.232 gitlab.io
45.55.110.124 na-west1.surge.sh
104.198.14.52 netlify.com

### EXPIRED !
```
u-nion.info
2gether.international
```


