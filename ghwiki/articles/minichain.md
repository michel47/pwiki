## minichain


### Basic CLI API

 * bradd
 * brsync
 * brpublish

### Block Ring commands (smart contract)

* brget, brput
* brpull (brfetch, brmerge, brreduce)
* bradd, brlink, brpost
* brpush, brirq


### synchronization of 2 blockchains ...

 * find mutable with any given block
 * find members in block or mutables
 * resolve each members' mutable path
 * extract head hashes from each blockchain
 * merge heads w/ local version
 * solve conflict if necessary
 * replace mfs head with merged file
 * eventually republish head

#### docs

* [smart contract](smart-contract)
* [mutable definitions](../testing/minichain/docs/mutable-definitions)
* [merging blockchain](../testing/minichain/docs/merging-blockchain)
 
### identity management 

### smart contract local execution 

### security

 
### core functions

 * resolve ([[resolve.sh]] & [resolve.pl](file://home/michelc/testing/minichain/mfs/.brings/bin/resolve.pl))
 * [merge_n](file:/)
 * get_ancestors
 * ipms_api

.
