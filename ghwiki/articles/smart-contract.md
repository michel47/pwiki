# Smartcontract


A SmartContract is simply a "standardized" software capable of being
executed anywhere with the guarantee it will generate the exact same
results. To garantee safety all smart-contract are signed by it author
and can't be executed if its author is not trusted.

In order to produce the same result the execution of a smart
contract is done in a "sandboxed environment" such as a [bash runner][1]


Piece of code that modify mutables
and accepts as first argument ($1) the immutable hash of itself
and as second argument a "rack" style environment
and respond to a call method that gives a 3 element array response
[status,header,body]

contracts can be excuted on different plateform such as

- run contract locally
- run contract in your browser
- run contract on repl.i, gitpod or any other REPL server
- run contract as a github action

### exemple:

The smart-contract: [QmQMSbccamCxtDGknx3cqXHDkFBeJG2PG92phjnTk8nL5W][2]
is a simple code that prints out "hello World", is demonstrates how contract
are run.

# TBD

```sh
# to run contract : "hello.qsc"
qsc=QmQMSbccamCxtDGknx3cqXHDkFBeJG2PG92phjnTk8nL5W
rel=QmRd1p5rexNvDnrA62Ab7mxXvbEJ7dQTAazuDfVP3i5KXB
ipfs cat $rel/qscwrap.sh | sh /dev/stdin $qsc | tee qscwrap.log
qmout=$(grep qmout qscwrap.log | cut -d' ' -f 2)
ipfs ls $qmout

```

The result of the execution of the [smart-contract][2] is :
[QmNbGBfc1frBh9KH3mqZLoNaWBybxCifFDkVJ1YSUQhYDE][3]

[1]: https://qwant.com/?q=bash+runner+smart-contract
[2]: http://gateway.ipfs.io/ipfs/QmQMSbccamCxtDGknx3cqXHDkFBeJG2PG92phjnTk8nL5W
[3]: http://localhost:8080/ipfs/QmagH2H5WrwBRshcxf9mvcCwvh7iACjWn7SsaWrcdX1qP3/std341

### future of smart contract

Now traditionally smart contract run "on-chain",
however with MPC smart-contract can totally run off-chain
and resulting transaction is signed with a MPC-signature


