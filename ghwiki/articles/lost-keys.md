## Proof of lost keys


### Lost Passwords Lock Millionaires Out of Their Bitcoin Fortunes [(1)][2]

Bitcoin owners are getting rich because the cryptocurrency has soared. But what happens when you can’t tap that wealth because you forgot the password to your digital wallet?


If we can provide a proof of lost password i.e. 3 attempt a day 
Then is can be considered as a proof of "burned"

need a proof of identity or linked account ... (ie. PoA to transfer funds)

According to [Ilias L. Hatzis](https://www.linkedin.com/in/iliashatzis/?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3BCck5Ky9iTUy9PA6fdgVwoA%3D%3D&licu=urn%3Ali%3Acontrol%3Ad_flagship3_feed-view_profile)
Kryptonio is a keyless non-custodial crypto wallet. We use Multi-party Computing (MPC) and facial biometrics to solve three problems every cryptocurrency user faces: crypto custody, key management, and wallet recovery.
Basically, users will never have to worry again about private keys, mnemonic phrases, or passwords and will always be able to recover their wallets just by scanning their faces.

Ηow it works:
https://kryptonio.com/beta

My comment on this:
I like the MCP part however this is as secure as the weakest link which is the biometrics + email + cloud access
a paper key has at least the "physical" barrier ... the something you "have".
The 3 items required for you to recover the wallet are all on the virtual side and that is where it could breaks


[1]: https://www.nytimes.com/2021/01/12/technology/bitcoin-passwords-wallets-fortunes.html
[2]: https://ipfs.2read.net/ipfs/QmaUkLjD7oZFE1tAxS3Q67oEUAzBSHhKcQbdu1c5PdNj2M/


## Rationale:

 A lost wallet key, is like a tranfer of value to a burn addresss, the value is still there captured.
 A burn coin: is a coin sent to a predictable public address (i.e. a never used wallet)
 Detection of loss: the address if brute forcable if owner gives us a hint on a passphrase for the private key
 consider spot (time-n-location) of transactions at the time of the burn, trace back the origin of funds to identified the purpose of the "burn" or the no purpuse of the "loss".
 
 Note: burn are used to transfer value or redistribute coin, can we craft a proof of transfer ?
 ```
   if (YES) { burnt to a wallet which address is the hash of a fingerprint of the recipient address
       if we "re-extract" the lost coin then we dilute the recipient value
   } elsif (NO) {
       value can be re-captured, the burn was not intentional
       (side question how to capture intention ...)
   }
 ```
 History AI analysis to confirm
 
 in order to be "friendly" extraction at only 11% rate (~ tax on fortunes)
 
 minting coin : transaction pegged on hash of (burning tx and price at spot)
 this makes it non speculative !
 
