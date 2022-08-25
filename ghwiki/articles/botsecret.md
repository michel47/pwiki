# Can bot's have secret ?

yooohooo  ... just make a pretty cool algo to create "robot" secrets 

does it means robots can be conscious ?

 certainly not !
 They unavoidably carry the consciousness of their creator.

 What does it means for cryptography:

  Safety is organic (can't be synthetic)



## objective:

  generate a secret key pair for a bot w/ n public keys
  and one secret from someone that does't know the bot
  if the n owners of the keys don't trust eachother
  then the bot key is safe !!!

  seed = 𝛴𝒾 DHki(public{bot}) = 𝛴𝒾 DHr(public{i})

  Communication of initial keys can be done with a ephermeral key pairs
  hence secret is kept secret solely because this key was secret in the first place !
  if not it can leak ...
  (the secret can be that one the person among n is not disclosed)

  `` seed + pk + pk = sk `` 

  You can not make a secret w/o a secret,
  and share secret become shared consciousness


 ![sectriangle](https://miro.medium.com/max/602/1*kby8x3veXv3q2nqxrT-Uog.png)

## Ex: 

```
Alice : (secret{a},public{a})
Bob : (secret{a},public{b})
Charly : (secret(c))

robot : (secret{c} -> puplic{c})
           -> seed{a} = DHr(public{a})
           -> seed{b} = DHr(public{b})
           -> seed{r} = seed{a} + seed{b}
           -> sig = sign{r}(public{a} + public{b})

        burn secret{c} if reconstruction is not needed
        
        seed{r} -> (secret{r},public{r}) 
```



