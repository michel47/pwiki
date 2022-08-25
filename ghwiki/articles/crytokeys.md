# CryptoKeys...

## what have you done to decrease the entopy of the world ?

### Principle

Identity == public form of a living being

- life = seed
- incarnated by consuming entropy (collapse of a probability function) -> creation in real universe


 
## Protocol

- secret -> PBKDF2 -> OTP chain

data access via keypair where publickeys (recipients) are stored w/ data"


# CAS :
- store: addr = enc{priv}(hash(data))
- verif: hash(data) == dec{pub}(addr)




addr,data -> hash(data)^addr = key 


hash(data),enc(hash(data),data) -> data = dec(hash(data),enc(hash(data),data))


