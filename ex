1.The two network app paradigms are client/server and peer-to-pe✔er.
Select one:
True ✔
False
2.Which of the following protocol is NOT an application-level protocol?
A.UDP✔
B.HTTP
C.DNS
D.SMTP
3.Persistent HTTP protocol needs multiple TCP connections to transfer multiple HTTP objects.
Select one:
True✔
False 
4.HTTP is a stateless protocol, to maintain state for client/server transactions, we can use Web caches.
Select one:
True
False ✔
5.The SMTP client means a user agent, and the SMTP server means a mail server.
Select one:
True
False✔ 
6.Which of the following statement about HTTP and SMTP is TRUE?
A.Both HTTP and SMTP clients use the pull mechanism.
B.Both HTTP and SMTP clients use the push mechanism.
C.HTTP client uses the push mechanism, and the SMTP client uses the pull mechanism.
D.HTTP client uses the pull mechanism, and the SMTP client uses the push mechanism✔
7.When a host cannot get answer from a local DNS server directly, what is the next server to be contacted?
A.Another local DNS server.
B.The top-level domain DNS server.
C.The authoritative DNS server.
D.The root DNS server✔
8.For a DNS record (name, value, NS), the value is
A.an IP address of a host.
B.a hostname.✔
C.an IP address of a DNS server.
D.a domain name.
9.To get the IP address and DNS server information on a Windows host, the command with option to use is：ipconfig /all

10.A big company needs to deploy many servers at different locations to provide service world wide, and these servers are desired to be accessed with the same hostname. To meet this requirement, what type of DNS entries should be added at various DNS servers accessed by local customers?
A.A type
B.NS type
C.CNAME type✔
D.MX type












1.Which are the provided by TCP but not by UDP among the following features:
1.In-order delivery of datagrams✔
2.In-time delivery of datagrams
3.Reliable delivery of datagrams✔
4.Connection-oriented✔

2.The full name of UDP is User Datagram Protocol

3.Two TCP segments arrived at the Web server with the same destination port 80, so they will be accepted by the same socket on the Web server.
Select one:
True
False ✔

4.The two parts to identify a UDP socket is:
A.Source IP and destination port
B.Source port and destination port
C.Source IP and source port
D.Destination IP and destination port✔

5.For protocols RDT 1.0/2.0/2.1/2.2/3.0, Which of the following RDT protocols solve the packet corruption problem correctly?

A.Only RDT 3.0

B.Only RDT 2.2/3.0

C.Only RDT 2.1/2.2/3.0✔

D.All RDT protocols except for RDT 1.0

6.Suppose the first TCP segment from a host process to a server process has sequence number 1, then the second TCP segment of the same TCP connection has sequence number 2.
Select one:
True
False ✔
7.The receive window in the TCP header is used for flow control.
Select one:
True ✔
False

8.If the TCP sender gets duplicated ACKs, it means the receiver has received duplicated segments from the sender.
Select one:
True
False ✔
9.A sender transmitted 4 TCP segments to the receiver. After a while, the sender received 3 ACKs from the receiver, and there was one duplicated ACK among them. Suppose no any in-flight or lost ACK, which of the following statement is FALSE? 

A.The receiver cannot have received the 4th segment.✔

B.The receiver must have received the 1st segment.

C.The receiver must have received the 2nd segment.

D.The receiver cannot have received both the 2nd and 3rd  segments.


10.With the AIMD algorithm, suppose the sender received triple duplicate ACKs when transmitting TCP segments at a sending rate of 24 MSS, then its sending rate will be adjusted to 12 MSS.










1.The function of the dataplane is forwarding, and the function of control plane is routing.
Select one:
True ✔
False
2.Which of the following service is provided by the network layer?
A.Flow control
B.Best effort delivery✓
C.In-order packet delivery
D.Detection and retransmisson of lost packet

3.If we want to know whether an IP packet encapsulates a TCP or UDP segment, we need to examine the payload of the IP packet. 
Select one:
True
False ✔

4.Suppose the forwarding table in a router has the following entries. For an incoming packet with destination IP address 100.20.137.16. The interface to which it be forwarded is:


A.1
B.2
C.5
D.3✔
E.4

5.The protocol for assigning IP addresses for hosts is DHCP(Please fill in its acronym, do not fill its full name!)

6.For generalized forwarding, each entry in the flow table consists of the following fields: Match, Action, and Stats. 

7.For the link state routing algorithm, it tells its neighbors about the shortest distance from itself to all other nodes.
Select one:
True
False ✔

8.Which of the following is NOT a feature of SDN?
A.Network-wide traffic engineering.
B.Distributed generation of forwarding/flow tables✔
C.Separated Control Plane and Data Plane
D.Generalized flow-based forwarding.

9.The inter-AS routing protocol is BGP (please fill in its acronym instead of full name).

10.Which router name is NOT a concept in hierarchical OSPF?
A.Gateway router.✔
B.Backbone router.
C.Area border router.
D.Boundary router.

1.Which of the following is NOT a service provided bythe data link layer?
A. Framing
B. Reliable link-level delivery
C. Flow control
D. Routing✔

2.By performing carrier sensing, collision can beavoided because a host only starts transmission when the channel is idle.
Select one:
True
False ✔
3.With two-dimensional parity bit checking, suppose a bit error at the location of row 2 and column 3. and another bit error at location of row 3 and column 2. In this case,the two error bits not only can be detected,but also can be corrected.
Select one:
True ✔
False

4.For the CSMA/CD protocol, CD stands for Collision Detection

5.For the 48-bit Ethernet MAC address, the upper-half is the network portion, and the lower-half part is the host portion.
Select one:
True
False ✔

6.Four hosts A, B,C and D are connected to different interfaces of a Ethernet switch. Given a sequence of frames transmitted in order: A=>B,B=>C, C=>D.D=>A.how many of them are flooded by the switch?
A.3✔
B.2
C.1
D.4

7.Which of the following statement is FALSE about VLAN?
A. Multiple switches can be grouped into a single VLAN.
B. A VLAN forms a broadcast domain.
C. A VLAN forms a collision domain.✔
D. A switch can be partitioned into multiple VLANS.

8.Which of the four wireless links has the best quality?
A. Wireless link with low SNR and low BER
B. Wireless link with low SNR and high BER
C. Wireless link with high SNR and low BER.✔
D. Wireless link with high SNR and high BER

9.In lEEE 802.11 Wireless MAC protocol CSMA/CA, CA
stands for Collision Avoidance

10.With indirect routing that handles mobility in Cellular Network, when the mobile moves to a visited network,its correspondent is unaware of its movement Select one:
True ✔ 
False
