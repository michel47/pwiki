## blockRing™ info page

  a blockring is a special type of [[blockchain]]
  
  this idea of the ring is that :
  
  + it is "atomic" (can't break it and self contained)
  + it is self validating ...
     a simple travel along the loop from any block will do
  + it is easy to find the HEAD of the chain : it's the genesis previous block

### How do we close the loop

  simply by added a "colliding hash in the genesis block that points to the HEAD
  we can use [ident20] or [mut224] hash function from the [IPMS] system
  
  any vanityHash can be used to close a blockchain and make it a blockRing™
  and the longer the hash is the more immutable the ring become.
  
  A ring of 1 elements is a self referent document
  and are cryptographic "artifacts" call [holofacts][HF]
  
  
[ident20]: https://duckduckgo.com/?q=!g+ident20+blockRing+extended+identity
[mut224]: https://duckduckgo.com/?q=!g+blockRing+and+mutability
[HF]: https://qwant.com/?q=holofacts
  
## implementation

  * [minichain](../testing/minichain/docs/index.md)
