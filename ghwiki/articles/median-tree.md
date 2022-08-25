# Tree based Median Computation

Computing a median is spliting a tree in two and read out the value at the split !

### Assumptions 

We have a very large set of numbers, and we would like to compute the median value

we would like to have an spacially fragmented algorythm we can use to iteratively
compute the result.

## our algorithm

we do a sorted tree insertion each time we have a new node 
and locally accumulate the count of each sub-tree nodes
we then propagate the update towards the root of the tree.

Hence with minimal operation we have for each nodes containing the necessary value
to compute the global median

read more : [git:fairTools/median](https://github.com/willforge/fairTools/tree/dbug/median)

![tree ex](https://gateway.ipfs.io/ipfs/QmP34Aed6Wf2H9rtARmUaZ6YfUQCCtmQLZKPBCa6m7NhYG/tree.png)

### caveats

- This works if the tree more or less is balanced,
- therefore some rebalancing is required over time to avoid any DDoS on the tree.
