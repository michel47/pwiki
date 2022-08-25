# Zero knowledge CAPTCHA (ZKAPTCYA)


When crafting a "Completely Automated Public Turing test to tell Computers and You Apart",
one has to make sure it is easier for the human, and difficult for the machine.

Most common [CAPTCHA][1] makes us do [stupid things][2] a computer can do
and doesn't use our cognitive superiority to the machine.

In the test below we simple solve a puzzle to reconstruct
our own signature and then we transmit the result with a zero knowledge manner.

1. choose a nounce ship it as a "DH" secret
1. use this secret to segment a image of your choice (stored in your "localstorage") a signature for instance
3. record the sequence of move to solve the puzzle (i.e. putting the image back together)
4. hash the resulting image
5. use the result hash to encrypt a challenge that is chipped to the server.
6. log the response time


### alternative 

see also [captcash][3]

~[michelc](mailto:michelc@gc-bank.org)

[1]: https://en.wikipedia.org/wiki/CAPTCHA
[2]: https://www.theverge.com/2019/2/1/18205610/google-captcha-ai-robot-human-difficult-artificial-intelligence
[3]: https://qwant.com/?q=CAPTCASH+%26g
