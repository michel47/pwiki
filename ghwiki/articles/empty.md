# hashing emptyness !


### QmUNLLsPACCz1vLxQVkXqqLX5R1X345qqfHbsf67hvA3Nn

This is the hash for an IPFS [empty dir][ed] (by [Ladonna J. Revay][LJR])

* <https://gateway.ipfs.io/ipfs/z6cYNbecZSFzLjbSimKuibtdpGt7DAUMMt46aKQNdwfs>
* <https://kmufv4bhl96kdcwj5r09m36fz75gdzl6m1dsmfd58w6fwxlmnq57z.ipfs.dweb.link/>

```sh
rm -r empty
mkdir empty
qm=$(ipfs add -Q -r empty)
echo $qm
kmu=$(ipfs cid format -f=%m -b=base36 $qm)
```

or 

```sh
qmempty=b$(echo "0170 0004 0a02 0801" | xxd -r -p | base32 | tr -d ' =' | tr '[:upper:]' '[:lower:]')
ipfs get -o empty$$ /ipfs/$qmempty;
ipfs add -Q -n -r empty$$;
rmdir empty$$

echo '{"data":"CAE="}' | ipfs dag put --format=protobuf --hash sha3-224 --cid-base base58btc

```


### other form :

* [z6cYNbecZSFzLjbSimKuibtdpGt7DAUMMt46aKQNdwfs](https://gateway.ipfs.io/ipfs/z6cYNbecZSFzLjbSimKuibtdpGt7DAUMMt46aKQNdwfs)
* [k2jmtxtlhjl3fhmgndf92e48by79ryjuvqp3y2qgehpao6v3lurvnmcv](k2jmtxtlhjl3fhmgndf92e48by79ryjuvqp3y2qgehpao6v3lurvnmcv.ipfs.io)
* f017000040a020801
* bafyaabakaieac
* [KSBX1HFH4SU9](https://ksbx1hfh4su9.ipfs.dweb.link/)
* zEwqqjyz8Qg
* ZeWQQJYZ8pF


### QmbFMke1KXqnYyBBWxB74N4c5SBnJMVAiMNRcGu6x1AwQH

This is the hash of an IPFS [empty file][ef] (by [Mathew M. Skeele][MMS])

* [QmbFMke1KXqnYyBBWxB74N4c5SBnJMVAiMNRcGu6x1AwQH](https://gateway.ipfs.io/ipfs/QmbFMke1KXqnYyBBWxB74N4c5SBnJMVAiMNRcGu6x1AwQH)
* [z6CfPsNrajGLLoNHWshz5fm6JwY2HBYLAyTARUUwwhWe](https://gateway.ipfs.io/ipfs/z6CfPsNrajGLLoNHWshz5fm6JwY2HBYLAyTARUUwwhWe)
* [z83ajReAEg1SfNCAXGksPDMgNEW7YUN7J](https://gateway.ipfs.io/ipfs/z83ajReAEg1SfNCAXGksPDMgNEW7YUN7J)
* [kb1yd76m7oxxg93t9yknau8srmzsj9oj1wz61](https://kb1yd76m7oxxg93t9yknau8srmzsj9oj1wz61.ipfs.dweb.link)
* [QmdfTbBqBPQ7VNxZEYEj14VmRuZBkqFbiwReogJgS1zR1n](https://gateway.ipfs.io/ipfs/QmdfTbBqBPQ7VNxZEYEj14VmRuZBkqFbiwReogJgS1zR1n)
* [QmVopPR9Ab8fp66RJH3BC3FQW2cqRCw6P1RcahfSuwrCSA](https://gateway.ipfs.io/ipfs/QmVopPR9Ab8fp66RJH3BC3FQW2cqRCw6P1RcahfSuwrCSA)
* [QmfJMCvenrj4SKKRc48DYPxwVdS44qCUCqqtbqhJuSTWXP](https://gateway.ipfs.io/ipfs/QmfJMCvenrj4SKKRc48DYPxwVdS44qCUCqqtbqhJuSTWXP)
* [bafyaabqkaqeaeeqa](https://bafyaabqkaqeaeeqa.ipfs.dweb.link/)
* [kecwzk](https://kecwzk.ipfs.dweb.link/) ([Error]: proto type not set !)
* [kdaznk](https://kdaznk.ipfs.dweb.link/)

```
kempty36=$(echo -n '' | ipfs add -Q --hash sha1 --cid-base=base36)
echo '{"Links":[]}' | ipfs object put|cut -d' ' -f2
echo -n '' | ipfs add -Q --hash sha3-224 --cid-base=base58btc
echo '{"Data":"CAIYAA=="}' | ipfs object put --datafieldenc=base64
echo '{"Data":"CAISAA=="}' | ipfs object put --datafieldenc=base64
echo '{"Data":"CAASAA=="}' | ipfs object put --datafieldenc=base64 --cid-base base58btc
echo "0170 0006 0a04 0802 1800" | xxd -r -p | base32 | sed -e s'/^/b/' |  tr -d ' =' | tr '[:upper:]' '[:lower:]'
echo "0170 0006 0a04 0800 1200" | xxd -r -p | base32 | sed -e s'/^/b/' |  tr -d ' =' | tr '[:upper:]' '[:lower:]'
echo "0170 0006 0a04 0802 1200" | xxd -r -p | base32 | sed -e s'/^/b/' |  tr -d ' =' | tr '[:upper:]' '[:lower:]'
echo "0155 0000" | xxd -r -p | base32 | sed -e s'/^/b/' |  tr -d ' =' | tr '[:upper:]' '[:lower:]'


ipfs object get $(echo -n ''| ipfs add -Q) --data-encoding base64
curl -I $kempty36.ipfs.localhost:8080
curl -i http://127.0.0.1:8080/ipfs/bafyaabqkaqeaegaa
```


[ef]: urn:2oq99eu84u430:emptyf
[ed]: urn:345fxgxlvigch:emptyd

[MMS]: https://qwant.com/?q=%22Mathew+M.+Skeele%22
[LJR]: https://qwant.com/?q=%22Ladonna+J.+Revay%22
