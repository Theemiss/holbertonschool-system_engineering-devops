# Attack is the best defense

## what is this

Security is a vast topic, and network security is an important part of it. A lot of very sensitive information goes over networks that are used by many people, and some people might have bad intentions. Traffic going through a network can be intercepted by a malicious machine pretending to be another network device. Once the traffic is redirected to the malicious machine, the hacker can keep a copy of it and analyze it for potential interesting information. It is important to note that the traffic must then be forwarded to the actual device it was supposed to go (so that users and the system keep going as if nothing happened).

Any information that is not encrypted and sniffed by an attacker can be seen by the attacker - that could be your email password or credit card information. While today’s network security is much stronger than it used to be, there are still some legacy systems that are using unencrypted communication means. A popular one is telnet.

In this project, we will not go over ARP spoofing, but we’ll start by sniffing unencrypted traffic and getting information out of it.

Sendgrid offers is an emailing service that provides state of the art secure system to send emails, but also supports a legacy unsecured way: telnet. You can create an account for free, which is what I did, and send an email using telnet

## Tools

* wireshark
* telnet
* tcpdump

## 0-0-sniffing

* The code in ASCII = bXlwYXNzd29yZDk4OTgh7

* user name : mylogin

## Packet

```packet
  0000   d8 b6 b7 a1 1f 63 cc b0 da 2a bf b6 08 00 45 10   .....c...*....E.
0010   00 4a 40 f2 40 00 40 06 62 67 c0 a8 01 07 12 c5   .J@.@.@.bg......
0020   c2 d0 b5 12 02 4b 67 8b 60 d1 67 35 59 20 80 18   .....Kg.`.g5Y ..
0030   01 f5 a3 88 00 00 01 01 08 0a 21 35 2c 39 b2 84   ..........!5,9..
0040   5c 4c 62 58 6c 77 59 58 4e 7a 64 32 39 79 5a 44   \LbXlwYXNzd29yZD
0050   6b 34 4f 54 67 68 0d 0a                           k4OTgh..
```
