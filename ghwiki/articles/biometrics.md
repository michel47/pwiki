## Biometrics for "rekeyable" crypto


Bio-metrics can't change so it can be a good source of "uniqueness" however because is it also immutable we have to have a revocation process in place in case it becomes compromised.

---

Conventional JWT uses a challenge response protocol. 
A deterministically generated key pair is used to sign a server issued challenge so it can later recognized the public key of a "pre-registered" user.


The problem it creates : it relies on a centralized registry that contains the mapping pku -> name or identifying information as we don't have direct access to the decryption key apart form giving the server a Zero-Knowledge proof the user own the public key.

![bmd][2022-06-01%2009.23%20biometrics-drawing]


A device can use a device key pair as a source of entropy to generate the private key necessary to access the data


![[2022-06-01 09.48.12 asymetric key decryption]]

there are 2 sort of bio-metrics system
1. the ones who expose a publickey API
2. the who you just as a "lockscreen" and return only single status "authenticated" 
   
When using bio-metrics of the first category on can create a private key to access a shared resource. However for the second case, the biometric test is like making the user identity the same as the "device owner" (you have the phone "unlock", therefore you have access to all its data)



![[2022-06-01 10.23 biometric key decryption]]

The main problem is this requires the need for secure storage of skd to be able to recreate the "secret".

An safer alternative would be to use a DHsecret to look-up access key to rebuild sku as show below :


![[2022-08-09 12.49 old Secret at plain sight]]