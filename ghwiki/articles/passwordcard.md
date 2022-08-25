# PasswordCard (Easy and Secure probably not ?)

my thought about [passwordcard](https://www.passwordcard.org/)

The idea seems good however it is pretty much the same as saving you password
in plain text !

"salting" the card with an easy to remember passphrase might add some security
however this will be equivalent to deriving a key w/ a [PBKDF2][1] and
it will require some sort of computing capability.

Question can we do a "password" key derivation by "hand" ?
can we re-surrect some old [hand-cipher][2] !

Have something like random "Jefferson disks"[3] encoding of a "passphase" that would
offset the letter from the passwordcard, or the use of 2 cards one as on OTP
this other one for cypher.


```
symbols are as hard to remember as a secure password ... many people might choose consecutive symbols and 2 or 3 color max (probly in order too as human memory is bad are memorizing order) ... this card make is so much easier to brute-force a password a "literally thousands"  is very weak with modern computing. 
Would protect you cryptoWallet with this ?
--- definitely not !
```

read also [Easy and Secure?](https://benrwoodard.com/2011-03-16-passwordcard-is-easy-and-secure/)


[1]: https://en.wikipedia.org/wiki/PBKDF2
[2]: https://cryptomuseum.com/crypto/manual.htm
[3]: https://www.one-tab.com/page/8wEA4xq-QzGH8kukeMTXRw
