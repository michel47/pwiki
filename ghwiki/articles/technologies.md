# BlockChain Technologies 

## BlockRings

- ipms: [DAG+CRDT][BR]
- mychelium: [KYC+DAG+CRDT][MYC]

[BR]: https://blockring™.ml
[MYC]: https://mychelium.ml
---
# Other amazing [(Neat) Technologies](NeatTech) ...

- ipld: 
- swarm: no DHT (deterministic hashing with Xor distance)
- perkeep
- dat: (pubkey-addressable store & hypercore/hyperdrive0
- atlas:
- peergos: ([cryptree](https://raw.githubusercontent.com/ianopolous/Peergos/master/papers/wuala-cryptree.pdf))
- ssb: [[scuttlebutt]] ([ssb](https://scuttlebutt.nz/))

- hypercore: signed, append-only logs.
- hyperledger
- arweave: permanent web
- chain.link: https://chain.link/
- nano: block-lattice
- IoTA / tangle
- algorand: <https://arxiv.org/pdf/1607.01341.pdf>
* maidSafe: https://maidsafe.net/ ([SAFE](https://safenetwork.tech/) network)
- identity based encryption (IBE)
- WASM for smart contract
- see: <https://www.youtube.com/watch?v=cbB3QEwWMlA>

- almost homomorphic PRFs [1]


[1]: https://eprint.iacr.org/2015/220.pdf
---
## ocean protocol:

 data token (w/ double spending protocol)

  token == access to data (tracked and accounted as money!)
  spend 1 token => you have custody of the data
  ( i.e. it is one-time-currency )

  - fongible token so you can manage ACL by distributed token 

see also [blockchains]
---
## Winternitz-OTS one-time-signature (Quantum resistant)

  - https://asecuritysite.com/encryption/wint

---
## DAG validity,

 size timestamp, spot and owner are important metadata
 that required to be at every nodes with the assurance of a "blockchain" integrity 

 in append only log : filesize or offset are important
 in time log : time stamp are important ...

 the "ordering" parameter need to be cryptographically locked
 and locally verifiable 

 protobuf nod have size in their data field
 raw-leaves must have keye'd hashed w/ the size (à la. GIT)


