# Identity-Base Encryption (IBE)



- publickey is "(trusted) public name" = "ASCII string"


# private key generator

id -(PKG)-> (sid,pid)


master keys : (sm,pm)

  pm,id -> public(id)

  pm,id,auth -> (sid,pid)



### Auth:

 Nodes are weakly authenticated via callback
 any node capable of receiving a connection at an IP address
 is deemed the legitimate owner of that IP address.
