# Content Addressable Storage

A Content Addressable Store or Content-Addressed Storage is a storage in which the data is storage
at an address which is the hash of the content itself.

CAS puts data at "determistic" location (content-addressed ad opposed to location-addressed))
As a direct concequence, it allows [URI]/[URN] addressing scheme
where the data can be resolve independenly from the server hosting it. 
and it allows deduplication.


Here are the system that uses CAS storage

 - LBCAS : (https://openlab.jp/oscircula/)
 - SFS : (https://opendedup.org/)
 - lessfs : (https://lessfs.com)
 - ipfs : (https://ipfs.io)
 - dat : (https://dat.io)

see: [*](https://en.wikipedia.org/wiki/Content-addressable_storage)

see also [CaS], [#storage], [...]

[CaS]: https://en.wikipedia.org/wiki/Content-addressable_storage
[URI]: https://en.wikipedia.org/wiki/Uniform_Resource_Identifier
[URN]: https://en.wikipedia.org/wiki/Uniform_Resource_Name
[casync]: https://github.com/systemd/casync/
[storj]: https://www.storj.io/
