# Chameleon Hash



Chameleon Hashes are very important in blockRings as
they allow the "chain of hashes" to be closed in a ring

a chameleon hash is nothing more than a signature hash

 i.e. by signing a (secret) random value one produces
 a verifiable hash we can mutage later on.



 chash = sign(privkey,secret)


 note:

 decrypt(pubkey,(sign(data)) = decrypt(pubkey, enc(privkey,data) ) = data


 hash(data)


 TODO continue w/ algo ... and implement in IPMS
