# Humanity Love upgrade (#lovid20)

In order to transition from the fossil and synthetic society to the new organic hollistic one,
we have to extend our consciouness to the extra multidimensions of the holoVerse.


## Identities 
Identity are of the realm of consciousness, i.e. they can't be attached to 
any physical object.

In essence an identity is the consciousness of you existance is as many form you'd like to imagine.
In the digital world this translate simple by the knowledge of a true secret.
secrets are unit of consciousness that is not sharable.

Therefore secrets can constitute a proof of identity.

The knowledge of passphrase is for instance such a proof.
passport or any biometrics are infact attributes attached to an identity,
and are not suffisent proofs of identity.

#### something you secretly know is you identity


## What is your identity for the Krystal Intelligence Operating System : [[holoSphere]]

Identity belong to the living world, and therefore is mutable and CAN NOT be represented in a pure synthetic way,
on [[holoRing]] we modelize mutable as signed record.

by signing a record its creator leave an inprint of it living presence on the holoVerse.
The record is immutable in nature and with its signature it gives us a cryptographic proof of origin.

### signature is an other form of proof of identity,

In the digital side with "implement" signature with secrets,
more precisely a key pairs, where the secret is the private key.
As a side note the physical signature are the a private key (to authenticare the signer)
and a public key for verification with local records)

 a signature is a key pair :
 
  1. the way to you execute the signature (i.e. only known by you) the secret
  2. the "drawing" of the signature (i.e. the visible part) the public key (validated against a reference record)
 

In legacy blockchain identity is managed via wallet addresses.
with is the equivalent of a private/public key pairs.

### Identity database

 historically we rely on third parties to store public identity records, typically governments
 
 the objective of a decentralized database is :
 
  associate a "public identity" with the real conscious beeing behind it, without the need of a central trust party
 
 For instance the we'd people know that the reference of "[[michelc.gc-bank.org.]]", is linked to the living being
 who wrote this documents.
 

### Technology implementation

 Truly distributed mutable system is very hard to acheived,
 indeed it the major problem all the computer science industry try to address:
 having an anonymous distributed key value store is the dream of many architect.
 and that is what specifically blockchains technology bring to the table.
  
 However the cost of non-permissionned blockchain deployment cost is high
 with holloRing, because of sovereinty of all form of live we adopted a permissionned architecture
 we every mutable records are "locally" managed the publish within a "trusted" ring.

 This allow a simple proof of trust to replace any other complex bizantine fault tolerance solution ([BFT])
 
 IPNS network published the a public-key as the address to a record for the identity as a sign pointer to
 an immutable;
 
 for instance : [QmStQAGxdxZrPqus7pJavueeZYneRwPCkGnTVuLubY6JrE](http://127.0.0.1:8080/ipns/QmStQAGxdxZrPqus7pJavueeZYneRwPCkGnTVuLubY6JrE/)
 
 The publication of the key rely on a distributed hash table [[DHT]] 
 and as any mutable record it expires and 
 has to be regularly updated, so there is a time-to-live [[TTL]],
 
 To be truly you, you have to stop being you are some point, so it is the case for the mutable.
 
 The price of having perishable mutables is that you have to constantly query for an update
 and this create a great demand on the network, as one has to collect several copies of the mutables values
 and decide which on is current; alternative protocols like gossip try to aleviate this.
 
 The [[holoRing]] approach is to store identity on a content-addressable storage [[CAS]] in a similar way all [[holoAtoms]] are stored
 
 A content addressable storage uses a cryptographic [[hash]] to store any content at a permanent address (immutable)
 the address is looks very "random" and is not human readable however it is very reliable
 and provides a direct proof of integrity for the system as any change in the record would lead to a different hash.
 so any node on the network can verify the data without any centralized server or database.
 So this is good to store immutable record (IPFS is an example of such a storage system)
 
 How to store a mutable then ?
 
 Hash are cryptographically secure and therefore there is (almost)no two documents that the same address
 (the probably of collision is so rare it will not likely happend once during the life of the system)

 Well now think about a collision ? it means one address and several version of the data.
 This is want we want with mutable record.
 
 So we implement mutable with colliding hashes, what is we make is super easy to create collision
 such that we don't need spend a lot of energy (as proof or work [[PoW]])
 
 There is one hash function with which it is easy to control the output :
  the identity hash which take any value and return itself as a hash.
   for instance : [z83W7nfyZoxH3uUaf5C5WHL5CTkTD6ZKK](https://ipfs.io/ipfs/z83W7nfyZoxH3uUaf5C5WHL5CTkTD6ZKK) -> michelc.gc-bank.org.
 
 however is it not very useful as the address is exactly the content :

  michelc@gc-bank -> [z83W7nfyZoxH3uUaf5C5WHL5CTkTD6ZKK](https://ipfs.io/ipfs/z83W7nfyZoxH3uUaf5C5WHL5CTkTD6ZKK) -> michelc.gc-bank.org.
 
 however if we can extend the content of the record stored at the address [[z83W7nfyZoxH3uUaf5C5WHL5CTkTD6ZKK]]
 then we can have mutability,
 
 for this we define a new hash : ident20 which is defined as followed
 
  [[ident20]] take 20 bytes of the document and return it as its hash address.
  
  It is very easy to make several documents with the same first 20 bytes, such that they are stored at the same place
 
 The power of this approach is that is a simple way to defer the hashing mechanism to the application layer
 without changing anything to the CAS protocol.
 
  so the document [z83W7nfyZoxH3uUaf5C5WHL5CTkTD6ZKK]() points to an [[holoIDcard]]
 
 To avoid "unintention collision" we use specially crafted address that are easily validated
 (in the same way we can mitigate any [[DDoS]] on a particular mutable by adding simple authentication code in the address)
 
 

...

 to be continued
