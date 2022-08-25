# squeezing a wrapper in 63 bytes

### 47c dir objet :

```sh
cat <<EOT | grep -v '^#' | sed -e 's/ *#.*//' | tee bafy.hex
0a020801 # DATA: 00001010 f1.t2 size=2 "0801" (f1.t0 1 (type=dir))
1229 # Links: 00010010 f2.t2 size=41 (41=2+3+2+34)
1203666f6f # name=foo
0a22 # HASH: 00001010 f1.t2 size=34
1220951f99627aa2b355676c88ccb67fdb60df1cf964382df2880ee6a1d36fa183a9 # SHA256: 32 bytes
EOT
bafy=$(cat bafy.hex | xxd -r -p | ipfs block put) && echo $bafy

ipfs ls $bafy

echo "size:" $(ipfs block get $bafy | wc -c)
```

### 37c dir object :

```sh
cat <<EOT | grep -v '^#' | sed -e 's/ *#.*//' | tee bafy.hex
01700025 # size=37
0a020801 # DATA: 00001010 f1.t2 size=2 "0801" (type=dir)
121f # Links: 00010010 f2.t2 size=31 (31=2+3+2+24)
1203666f6f # f2.t2 size=3 name=foo
0a18 01551114de66ace6d5701504b5c4e74d0eea3467fc9a2fc4 # f1.t2 size=24 : SHA1: 20 bytes
EOT
bafy=$(tail +2 bafy.hex | xxd -r -p | ipfs block put) && echo $bafy
ipfs ls $bafy
echo "size:" $(ipfs block get $bafy | wc -c)

cat bafy.hex | xxd -r -p | base32 | tr -d '='
```

### file object :

```protobuf
0a160802 # f1.t2 size=22 DATA: "0802" f1.t0 2 (type=file)
1210 # f2.t2 size=16 (content)
6261 6679 2065 7870 6572 696d 656e 740a # "bafy experiment\n"
1810 # f3.t0 16 (Size=16B)
```

```sh
cat <<EOT | grep -v '^#' | sed -e 's/ *#.*//' | tee bafy.hex
01700025 # raw-leaf identity size=37
0a020802 # DATA: f1.t2 size=2 "0802" f1.t0 2 (type=file)
121f # Links: 00010010 f2.t2 size=31 (31=24+4+3)
1203666f6f # f2.t2 size=3 name=foo
0a18 01551114de66ace6d5701504b5c4e74d0eea3467fc9a2fc4 # f1.t2 size=24 : SHA1: 20 bytes
EOT
bafy=$(tail +2 bafy.hex | xxd -r -p | ipfs block put) && echo $bafy
ipfs ls $bafy
echo "size:" $(ipfs block get $bafy | wc -c)

ipfs dag get $bafy

### it makes 68c when encoded in base32 (64c in base36)
cid=b$(cat bafy.hex | xxd -r -p | base32 | tr -d '=' | tr '[:upper:]' '[:lower:]')
echo cid: $cid
echo -n $cid | wc -c
cat bafy.hex | xxd -r -p | mbase | grep b36
echo http://127.0.0.1:8080/ipfs/$cid;

```
