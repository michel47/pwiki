# holoTechnology development (Captain Journal)

This article document the timeline and major milestone along
the development journey of the holosphere OS development

It all started on 2014 ...

and in reverse chronological manner it looks like this

##Date: Tue Oct 20 06:06:28 AM CEST 2020

. migrate slides to reveal.js

##Date: Mon Oct 18 11:12:36 AM CEST 2020

. continue on counter tree

##Date: Sun Oct 17 08:43:02 AM CEST 2020

. gitbook editor & slides

##Date: Fri Oct 16 10:32:42 PM CEST 2020

### intent of the day

. designed immuatable-mutable
. build tree counter for median computation

### intent of the day

. support Amber w/ the install of gitbook
. continue to write install scripts for holoKit
. write [diagnose.sh](urn:michelc:diagnose.sh) to diagnose xcode problem
. got [acid_test](urn:michelc:acid_test.sh)

##Date: Wed Oct 14 09:42:46 PM CEST 2020

### intent of the day:

. migrated encrypted repository (holoNotes) to cryfs 10.02
. get askpass.sh to support keybase clear passwd *
  ``pass=$(grep /keybase/private/$USER/etc/passwd -e '^cryfs:' | head -1 | cut -d':' -f2)``

. have moustache.pl to support site.data.*
. get version nubering scheme on a git page : https://holoarchi.gitlab.io/holoclock/version/version.html

. document DevPipeline (holoDev)
  - get a ledger for the "stack.yml" 
  - /my/stack/workstack.yml


##Date: Tue Oct 13 08:03:28 PM CEST 2020


### intent of the day:

. review [michelc:AItems], [michelc:PoR], [michelc:breadboard], [michelc:DevNotes]
. continuing migration to Ubuntu 20.04 ... is [michelc:systemInstall.md]
. Install gitbook and gitbook-cli and gitbook-editor
. rehash the holoIndexes to deduplicate my IPFS repositories
 (usb disk went to 100% in the morning)
 separate ipfs repository are not deducplated and are becaming too big
 for all of them 1.3TB

. regenerate / verify all the previous gitbooks on file
 to fix "broken" links

. I want to had a "register book" button so we know where they are, it required a little be of work though...
. I had to stop the rehashing for the data as it was making me disk to slow to work with
. I need to do that over nights when with the IPFS server offline
. I also review the git repository for holoNotes for a cleanup and fixing the git-pages what are broken
. the problem was that we encrypt the repository and the encryption tools got updated and don't decrypt the git anymore
  (Ubuntu 20.10 groovy) ``lsb_release -a``

status: I did the install and am in the middle of verifying some books

--&nbsp;<br>
by: michelc (via 37wtmyvnagq2q aka Letha J. Serve)
<br>.
