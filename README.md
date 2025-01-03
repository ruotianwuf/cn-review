### 复习题2

1. **网络应用是否在两端主机和网络设备上运行？**
   - 网络应用主要在两端的主机上运行，不需要在网络设备上运行。

2. **网络应用的两种范式是什么？**
   - 客户端-服务器范式和对等范式。

3. **编程网络应用使用的关键设施是什么？能清楚地解释一下它是什么吗？**
   - 关键设施是Socket API。Socket API允许程序创建和管理网络连接，发送和接收数据，它抽象了网络通信的复杂性，使得开发者可以专注于应用逻辑。

4. **为什么服务器应该有永久IP地址，而客户端可以有动态地址？**
   - 服务器需要永久IP地址以便客户端随时能够找到并建立连接。客户端可以有动态地址，因为它们通常是发起连接的一方，不需要被服务器主动连接。

5. **IP地址是否足以标识进程？**
   - 不足以，因为一台主机上可以运行多个进程，所以需要IP地址和端口号的组合来唯一标识一个进程。

6. **进程和套接字之间的关系是什么？**
   - 套接字是进程进行网络通信的端点，每个进程都有其对应的套接字，进程通过套接字发送和接收数据。

7. **应用层协议包括哪些方面？**
   - 应用层协议包括消息类型（请求、响应）、消息格式（语法）、消息含义（语义）以及发送和响应消息的规则。

8. **Web页面由什么组成，示例包括什么，它们通过什么寻址？**
   - Web页面由多个对象组成，示例包括HTML文件、JPEG图像、Java小程序、音频文件等，它们通过URL寻址。

9. **HTTP是应用协议吗？它用于什么？HTML是应用协议吗？它用于什么？**
   - HTTP是应用层协议，用于在Web上传输超文本数据。HTML不是应用协议，而是一种标记语言，用于定义Web页面的结构和内容。

10. **描述HTTP会话的四个步骤。**
    - 1. 客户端向服务器的端口80发起TCP连接。2. 服务器接受TCP连接。3. 客户端和服务器之间交换HTTP消息。4. 关闭TCP连接。

11. **什么是持久HTTP协议？它需要多个TCP连接来获取多个对象吗？**
    - 持久HTTP协议（HTTP 1.1）允许在单个TCP连接上发送多个对象，因此不需要多个TCP连接来获取多个对象。

12. **HTTP请求的两部分是什么，什么？URL包含在HTTP请求的哪一部分？**
    - HTTP请求的两部分是请求行和头部行。URL包含在请求行中。

13. **四大HTTP请求的名称和功能是什么？**
    - GET：请求数据。POST：提交数据。HEAD：请求页面头部信息。PUT：上传文件。

14. **HTTP响应的两部分是什么，什么？我们可以从这两部分获得哪些有用信息？**
    - HTTP响应的两部分是状态行和头部行。状态行告诉我们请求是否成功，头部行提供了关于响应的元数据，如日期、服务器类型、内容长度等。

15. **使用Cookies的目的是什么？能举一个使用它解决具体问题的例子吗？**
    - 使用Cookies的目的是维护用户和服务器之间的状态。例如，Cookies可以用来实现网上购物车功能，即使用户在不同时间访问网站，网站也能记住用户之前添加到购物车的商品。

16. **Web缓存服务器如何决定是否发送客户端请求的缓存对象？**
    - Web缓存服务器通过检查缓存中对象的新鲜度和有效性来决定是否发送。如果缓存中的对象是最新的，并且服务器指示可以缓存，那么缓存将直接提供该对象；否则，缓存会从原始服务器请求最新对象。

### 复习题3

1. **SMTP是否在用户代理上运行？SMTP客户端是用户代理还是邮件服务器？**
   - SMTP不在用户代理上运行。SMTP客户端是邮件服务器。

2. **SMTP使用TCP还是UDP进行消息传输？为什么选择这个协议？**
   - SMTP使用TCP进行消息传输。选择TCP是因为SMTP需要可靠地传输邮件，而TCP提供稳定的、有序的数据传输服务，确保邮件正确送达。

3. **对于IMAP协议，客户端和服务器端分别是什么？**
   - 客户端是用户代理（如邮件阅读器），服务器端是邮件服务器。

4. **如果Alice向不同邮件服务器的Bob发送电子邮件，哪些实体运行TCP客户端？**
   - Alice的邮件服务器和Bob的邮件服务器都运行TCP客户端。

5. **对于HTTP和SMTP客户端，哪个使用拉取机制，哪个使用推送机制？为什么？**
   - HTTP客户端使用拉取机制，因为客户端主动请求服务器发送数据。SMTP客户端使用推送机制，因为服务器主动将邮件推送给客户端。

6. **在HTTP中，多个对象封装在多个单独的响应消息中，而在SMTP中，多个对象封装在单个多部分消息中。为什么它们不同？**
   - HTTP设计为请求-响应模型，每个请求对应一个响应，因此多个对象需要封装在多个响应消息中。SMTP处理的是整个邮件的传输，邮件可能包含多个部分（如正文和附件），因此它们被封装在单个多部分消息中。

7. **以下SMTP交互示例包含三个阶段。你能识别它们吗？**
   - 第一阶段：握手（SMTP握手，如HELO命令）
   - 第二阶段：消息传输（MAIL FROM、RCPT TO、DATA命令）
   - 第三阶段：关闭（QUIT命令）

8. **DNS服务器有哪四种类型？dns.must.edu.mo是什么类型的DNS服务器？**
   - 四种DNS服务器类型：根服务器、顶级域名（TLD）服务器、权威DNS服务器、本地服务器（缓存/转发）。
   - dns.must.edu.mo是权威DNS服务器。

9. **当主机不能直接从本地DNS服务器获得答案时，下一个要联系的服务器是什么？**
   - 下一个要联系的服务器是根服务器。

10. **你能解释以下两个示例DNS条目的字段吗？**
    - (networkutopia.com, dns1.networkutopia.com, NS)：这条目表明dns1.networkutopia.com是networkutopia.com的权威名称服务器。
    - (dns1.networkutopia.com, 212.212.212.1, A)：这条目表明dns1.networkutopia.com的IP地址是212.212.212.1。

11. **对于迭代和递归DNS查询，哪种机制给根服务器带来更大的工作负载？**
    - 递归查询会给根服务器带来更大的工作负载，因为它需要处理所有未解决的查询。

12. **一家大公司需要在不同地点部署许多服务器以提供服务全球，并且这些服务器希望被访问时使用同一个主机名。为了满足这一要求，应该在各个DNS服务器上添加什么类型的DNS条目？**
    - 应该添加类型为CNAME的DNS条目，将别名指向规范名，以便所有地理位置的服务器可以通过同一个主机名访问。

### 复习题4

1. **TCP和UDP协议的区别是什么？**
   - 答案：TCP是面向连接的、可靠的、有序的传输层协议，提供流量控制和拥塞控制；UDP是无连接的、不可靠的、无序的传输层协议，不提供流量和拥塞控制。

2. **复用和解复用是什么意思？**
   - 答案：复用是在发送端将不同进程的数据合并到单一的物理传输媒介上；解复用是在接收端将数据分发到正确的进程。

3. **识别UDP套接字的两部分是什么？**
   - 答案：源端口号和目的端口号。目的端口号用于在接收主机上识别进程。

4. **识别TCP套接字的四部分是什么？**
   - 答案：源IP地址、源端口号、目的IP地址、目的端口号。

5. **以下应用协议中哪些使用UDP协议？**
   - 答案：DNS。

6. **UDP协议的四个头部字段是什么，UDP头部总大小是多少字节？**
   - 答案：源端口号、目的端口号、长度、校验和。UDP头部总大小是8字节。

7. **RDT的不同版本及其特点是什么？**
   - 答案：
     - RDT 1.0：完全可靠的信道（无比特错误，无丢包）。
     - RDT 2.0：有比特错误但无丢包的信道（需要校验和）。
     - RDT 2.1：改进RDT 2.0，解决了RDT 2.0的致命缺陷（ACK/NAK损坏）。
     - RDT 2.2：改进RDT 2.1，无需NAK，仅使用ACK。
     - RDT 3.0：有比特错误和丢包的信道。

8. **以下服务中哪项不是TCP协议提供的？**
   - 答案：保证数据从发送者到接收者的最大传输时间。

9. **TCP头部中的序列号和ACK号的含义是什么？**
   - 答案：序列号表示字节流中的第一个字节的编号，ACK号表示期待接收的下一个字节的编号。

10. **TCP头部中的接收窗口字段的含义是什么？**
    - 答案：用于流量控制，指示接收方愿意接收的数据量。

11. **TCP接收方在收到重复ACK号和高于预期序列号的段时的行为是什么？**
    - 答案：收到重复ACK号时，立即发送ACK；收到高于预期序列号的段时，发送重复ACK，指示期待的下一个字节序列号。

12. **超时和三重重复ACKs哪种情况表示更严重的网络拥塞？**
    - 答案：三重重复ACKs通常表示更严重的网络拥塞，因为它意味着发送方已经丢失了一个段。

13. **发送方发送了4个段，序列号从100开始，段大小分别为10, 20, 15, 30字节，只有第二个段丢失。接收方发送的最后一个ACK号是多少？**
    - 答案：155（100 + 10 + 15 + 30 - 20）。

14. **为什么TCP连接建立需要三次握手？**
    - 答案：三次握手可以防止半开放连接，并确保双方都能发送和接收数据。

15. **主机如何指示关闭TCP连接？**
    - 答案：通过发送带有FIN标志的TCP段。

16. **网络拥塞的两种表现和原因是什么？**
    - 答案：表现：延迟增加和丢包。原因：发送数据过多过快，超出网络处理能力。

17. **流量控制和拥塞控制的区别是什么？**
    - 答案：流量控制主要针对单个发送者和接收者，防止发送者发送速率过快导致接收者缓冲区溢出；拥塞控制针对整个网络，防止网络过载。

18. **AIMD TCP拥塞控制算法的组成部分是什么？**
    - 答案：
      - 增加发送速率直到发生丢包（加性增益）。
      - 发生丢包时减少发送速率（乘性减损）。
      - 慢启动：连接开始时指数增长发送速率，直到发生第一次丢包。
      - cwnd：控制窗口大小，动态调整以响应网络拥塞。
      - ssthresh：慢启动阈值，丢包时调整cwnd。

以下是根据提供的PDF文件内容整理的复习题和答案：

### 复习题5

1. 网络通信是在进程之间还是主机之间进行？
   - 答案：网络通信是在主机之间进行。

2. 网络服务是否在主机和网络设备上运行？
   - 答案：是的，网络服务在主机和网络设备上运行。

3. 网络层提供哪些服务？
   - 答案：最佳努力交付、多路复用/解复用。

4. 网络层的两个关键功能是什么？
   - 答案：转发和路由。

5. 数据平面和控制平面在哪些网络架构中分别实现？
   - 答案：在SDN（软件定义网络）中分别实现。

6. 关于IP数据包格式：
   - 固定部分的IPv4数据包头部有多少字节？
     - 答案：20字节。
   - IP数据包的最大长度可以是多少字节？
     - 答案：65535字节。
   - 端口号在IP数据包的头部还是有效载荷中？
     - 答案：端口号在IP数据包的有效载荷中，通常是TCP或UDP头部。
   - 当IP数据包头部的TTL字段为0时会发生什么？
     - 答案：数据包将被丢弃。
   - 如果我们想知道传输层协议（TCP/UDP），我们需要检查IP头部还是有效载荷？
     - 答案：我们需要检查IP数据包的有效载荷。

7. 主机是否可以有多个IP地址？路由器是否可以只有一个IP地址？
   - 答案：是的，主机可以有多个IP地址；路由器可以有多个IP地址，但通常不会只有一个。

8. 主机是否与连接到同一路由器的主机在同一个子网中？
   - 答案：是的，连接到同一路由器的主机通常在同一个子网中。

9. IP地址的哪两部分是高阶位和低阶位？高阶位的部分是什么？
   - 答案：高阶位是网络部分，低阶位是主机部分。

10. 主机A和B是否在同一个子网中？
    - 答案：需要具体的IP地址和子网掩码来判断。

11. 分配IP地址给主机的协议是什么？
    - 答案：DHCP（动态主机配置协议）。

12. 分配IP地址给主机需要多少个DHCP消息？
    - 答案：4个。

13. 除了IP地址，还提供了哪些信息给主机？
    - 答案：网关路由器IP地址、网络掩码、DNS服务器IP地址。

14. 广播IP地址是什么？
    - 答案：广播IP地址是用于在同一子网内发送广播消息的地址。

15. 关于NAT：
    - IPv4地址空间耗尽的解决方案是什么？
      - 答案：NAT（网络地址转换）。
    - 当NAT启用的网络中的主机向网络外的主机发送数据包时，除了将本地IP地址转换为公共IP地址外，还需要转换哪个数据包字段？
      - 答案：端口号。
    - NAT启用网络的网关路由器是否需要维护一个表？表项存储哪些信息，如何使用？
      - 答案：是的，需要维护一个转换表，存储（源IP地址，端口号）到（NAT IP地址，新端口号）的映射关系，用于转换进出网络的数据包。
    - 是否可以在NAT启用网络的内部运行具有本地IP地址的服务器？如果可以，解决方案是什么？
      - 答案：可以，使用NAT穿透技术或将服务器配置为使用公网IP地址。

16. 关于IPv6：
    - IPv6中的IP地址是多少字节？
      - 答案：128字节。
    - IPv6路由器是否执行校验和？如何知道答案？
      - 答案：不执行，IPv6数据包没有校验和字段。
    - 运行混合IPv4/IPv6网络的解决方案是什么？如何工作？
      - 答案：隧道技术，通过在IPv4网络中封装IPv6数据包来实现。

17. 关于路由器：
    - 路由器的哪一部分执行路由查找？
      - 答案：路由处理器。
    - 传统转发中，路由器查询哪些数据包字段？
      - 答案：目的IP地址。
    - 输入端口排队为什么是必要的？
      - 答案：如果数据包到达速度超过转发速度，则需要排队。
    - 传入数据包是否可能匹配转发表中的多个条目？如果不是，为什么？如果是，如何做出转发决定？
      - 答案：不是，最长前缀匹配（LPM）确保每个数据包只有一个最佳匹配。

18. 关于通用转发：
    - 流表的每一项包含哪三部分？
      - 答案：匹配、动作和统计。
    - 使用OpenFlow可以实施哪些网络功能？
      - 答案：包过滤、负载均衡、防火墙、NAT等。

### 复习题6

1. **控制平面的主要功能是什么？**
   - 答案：控制平面负责网络中的路由决策和路径选择。

2. **网络控制平面的两种结构方法是什么？传统网络架构使用哪种方法？**
   - 答案：两种结构方法是逐路由器控制（传统）和逻辑集中控制（SDN）。传统网络架构使用逐路由器控制。

3. **链路状态和距离向量两种路由算法的主要区别是什么？**
   - 答案：链路状态算法拥有全局网络拓扑信息，使用洪泛传播和Dijkstra算法计算最短路径；距离向量算法仅知道相邻邻居信息，使用Bellman-Ford方程和迭代过程计算路径。

4. **详细解释Dijkstra链路状态路由算法，包括链路状态洪泛和每个节点的迭代最短路径计算。**
   - 答案：Dijkstra算法分为两个阶段，第一阶段是链路状态的洪泛，通过广播LSP来传播链路状态信息；第二阶段是每个节点使用Dijkstra算法计算到所有其他节点的最短路径，并创建转发表。

5. **详细解释Bellman-Ford距离向量算法，包括Bellman-Ford方程的含义、状态信息扩散过程以及“坏消息传播慢”和“计到无穷”问题。**
   - 答案：Bellman-Ford算法基于Bellman-Ford方程，通过迭代更新路径成本来计算最短路径。状态信息通过邻居间的迭代通信扩散。该算法存在“坏消息传播慢”的问题，即链路成本增加时路径更新缓慢，可能导致“计到无穷”问题。

6. **互联网的可扩展路由解决方案是什么？解释AS（自治系统）及其与ISP的关系，以及内部AS路由与外部AS路由的区别。**
   - 答案：互联网通过AS（自治系统）来实现可扩展路由。AS是一组由单一技术管理的路由器集合，与ISP（互联网服务提供商）的关系是，一个ISP可以拥有一个或多个AS。内部AS路由处理同一AS内的路由，而外部AS路由处理不同AS间的路由。

7. **解释分层OSPF的概念，包括主干、区域、跨区域路由、区域边界路由器、本地路由器、主干路由器和边界路由器。**
   - 答案：分层OSPF使用主干和多个区域来组织网络。主干是中心路由器集合，区域是连接到主干的子网。跨区域路由通过区域边界路由器来实现，本地路由器仅在区域内操作，主干路由器运行OSPF仅限于主干，边界路由器连接到其他AS。

8. **解释BGP协议用于AS间路由的概念，包括eBGP、iBGP、BGP路由/路径的前缀和属性（AS-PATH、NEXT-HOP）以及BGP路径广告。**
   - 答案：BGP是AS间的路由协议。eBGP用于不同AS间的路由信息传播，iBGP用于同一AS内。BGP路由由前缀和属性组成，包括AS-PATH和NEXT-HOP。BGP路径广告是根据AS政策进行路径的接受和传播。

9. **为什么SDN需要集中控制平面？**
   - 答案：SDN的集中控制平面简化了网络管理，避免了路由器配置错误，并提高了流量流的灵活性。同时，它允许开放的（非专有）控制平面实现，促进了创新。

10. **SDN的三个主要特点是什么？**
    - 答案：SDN的三个主要特点是流基于转发（如OpenFlow）、控制平面与数据平面的分离、控制平面功能在数据平面交换机之外、可编程控制应用。

11. **SDN中的南向API和北向API分别是什么？**
    - 答案：南向API是控制器与数据平面交换机之间的通信接口，北向API是控制器与网络控制应用之间的通信接口。

12. **OpenFlow协议的相关信息，包括它操作于哪些设备之间，三类OpenFlow消息，以及哪个消息用于从控制器到交换机安装OpenFlow表项。**
    - 答案：OpenFlow协议操作于控制器和交换机之间。三类消息包括控制器到交换机、异步（交换机到控制器）和对称（其他）。“modify-state”消息用于从控制器到交换机安装OpenFlow表项。

13. **在SDN中，是否还是路由器计算转发表？Dijkstra算法是否仍用于SDN路由？是否还需要洪泛阶段？**
    - 答案：在SDN中，不是路由器计算转发表，而是由SDN控制器计算并安装。Dijkstra算法仍可用于SDN路由，但不需要洪泛阶段，因为控制器已经拥有全局网络状态信息。

14. **ICMP的含义、主要用途以及一些网络应用示例。**
    - 答案：ICMP是互联网控制消息协议，主要用于错误报告、回显请求/回复（如ping）。网络应用示例包括ping和traceroute。

### 复习题7

1. **数据链路层服务包括哪些？**
   - 错误检测与纠正、共享广播频道、链路层寻址、局域网络。

2. **链路层是否在主机和网络设备中实现？**
   - 是的，在每台主机和网络设备（如路由器、交换机）中实现。

3. **二维位奇偶校验能否检测和纠正两位错误？能否检测所有两位错误？能否纠正所有两位错误？**
   - 不能纠正两位错误，能检测但不能纠正所有两位错误。

4. **CRC校验的原理是什么？**
   - 选择CRC位，使得<D,R>能被G整除，用于检测所有小于r+1位的突发错误。

5. **关于MAC：**
   - MAC代表媒体访问控制地址，是48位的唯一地址。
   - MAC协议分为三类：信道分割（如TDMA、FDMA）、随机访问（如ALOHA、CSMA/CD）、轮流访问（如轮询、令牌传递）。
   - 时隙ALOHA工作原理及其效率（最大效率为1/e，约37%）。

6. **关于CSMA/CD：**
   - CS代表载波侦听，不能确保无冲突，因为传播延迟可能导致冲突。
   - CD代表冲突检测，用于在发生冲突时检测并中止传输。
   - 指数退避机制的好处是在发生冲突后通过随机等待时间减少再次冲突的概率。

7. **关于寻址：**
   - MAC地址是48位。
   - MAC地址不包含网络部分，不支持路由。
   - 通过IEEE管理MAC地址分配避免地址冲突。

8. **关于ARP协议：**
   - 需要将IP地址转换为MAC地址。
   - 关键数据结构是ARP表，通过ARP查询和响应生成和更新。

9. **关于路由到其他子网：**
   - 在链路层，当跨子网路由时，需要将IP数据包封装在帧中，并使用下一跳路由器的MAC地址。

10. **关于以太网：**
    - 总线型以太网和交换式以太网的区别。
    - 以太网帧结构。
    - 需要前导码以同步接收器和发送器的时钟。
    - 以太网不需要建立连接，不使用确认机制。

11. **关于以太网交换机：**
    - 允许多对主机同时传输帧。
    - 关键数据结构是转发表，通过泛洪和学习生成和更新。
    - 交换机和路由器的相似之处和不同之处（都是存储转发，但交换机基于MAC地址，路由器基于IP地址）。

12. **关于VLAN：**
    - VLAN的动机。
    - 冲突域和广播域的定义。
    - 广播流量不跨越冲突域，但可以跨越广播域。
    - 典型的广播流量例子包括ARP、DHCP和未知的MAC地址。
    - 端口基础VLAN的定义。
    - 通过将交换机端口分组创建端口基础VLAN。
    - VLAN间转发通过路由完成。
    - VLAN可以跨越多个交换机，通过Trunk端口和802.1Q协议实现。
    - VLAN帧格式，包含VLAN ID信息。


## 网络应用模式

1. The two network app paradigms are client/server and peer-to-peer.
   - True ☑
   - False

2. Which of the following protocol is NOT an application-level protocol?
   - A. UDP ☑
   - B. HTTP
   - C. DNS
   - D. SMTP

3. Persistent HTTP protocol needs multiple TCP connections to transfer multiple HTTP objects.
   - True ☑
   - False

4. HTTP is a stateless protocol, to maintain state for client/server transactions, we can use Web caches.
   - True
   - False ☑

5. The SMTP client means a user agent, and the SMTP server means a mail server.
   - True
   - False ☑

6. Which of the following statement about HTTP and SMTP is TRUE?
   - A. Both HTTP and SMTP clients use the pull mechanism.
   - B. Both HTTP and SMTP clients use the push mechanism.
   - C. HTTP client uses the push mechanism, and the SMTP client uses the pull mechanism.
   - D. HTTP client uses the pull mechanism, and the SMTP client uses the push mechanism ☑

7. When a host cannot get answer from a local DNS server directly, what is the next server to be contacted?
   - A. Another local DNS server.
   - B. The top-level domain DNS server.
   - C. The authoritative DNS server.
   - D. The root DNS server ☑

8. For a DNS record (name, value, NS), the value is
   - A. an IP address of a host.
   - B. a hostname. ☑
   - C. an IP address of a DNS server.
   - D. a domain name.

9. To get the IP address and DNS server information on a Windows host, the command with option to use is：ipconfig /all

10. A big company needs to deploy many servers at different locations to provide service world wide, and these servers are desired to be accessed with the same hostname. To meet this requirement, what type of DNS entries should be added at various DNS servers accessed by local customers?
    - A. A type
    - B. NS type
    - C. CNAME type ☑
    - D. MX type

## TCP和UDP特性

1. Which are the provided by TCP but not by UDP among the following features:
   - 1. In-order delivery of datagrams ☑
   - 2. In-time delivery of datagrams
   - 3. Reliable delivery of datagrams ☑
   - 4. Connection-oriented ☑

2. The full name of UDP is User Datagram Protocol

3. Two TCP segments arrived at the Web server with the same destination port 80, so they will be accepted by the same socket on the Web server.
   - True
   - False ☑

4. The two parts to identify a UDP socket is:
   - A. Source IP and destination port
   - B. Source port and destination port
   - C. Source IP and source port
   - D. Destination IP and destination port ☑

5. For protocols RDT 1.0/2.0/2.1/2.2/3.0, Which of the following RDT protocols solve the packet corruption problem correctly?
   - A. Only RDT 3.0
   - B. Only RDT 2.2/3.0
   - C. Only RDT 2.1/2.2/3.0 ☑
   - D. All RDT protocols except for RDT 1.0

6. Suppose the first TCP segment from a host process to a server process has sequence number 1, then the second TCP segment of the same TCP connection has sequence number 2.
   - True
   - False ☑

7. The receive window in the TCP header is used for flow control.
   - True ☑
   - False

8. If the TCP sender gets duplicated ACKs, it means the receiver has received duplicated segments from the sender.
   - True
   - False ☑

9. A sender transmitted 4 TCP segments to the receiver. After a while, the sender received 3 ACKs from the receiver, and there was one duplicated ACK among them. Suppose no any in-flight or lost ACK, which of the following statement is FALSE?
   - A. The receiver cannot have received the 4th segment. ☑
   - B. The receiver must have received the 1st segment.
   - C. The receiver must have received the 2nd segment.
   - D. The receiver cannot have received both the 2nd and 3rd segments.

10. With the AIMD algorithm, suppose the sender received triple duplicate ACKs when transmitting TCP segments at a sending rate of 24 MSS, then its sending rate will be adjusted to 12 MSS.

## 网络层

1. The function of the dataplane is forwarding, and the function of control plane is routing.
   - True ☑
   - False

2. Which of the following service is provided by the network layer?
   - A. Flow control
   - B. Best effort delivery ✓
   - C. In-order packet delivery
   - D. Detection and retransmisson of lost packet

3. If we want to know whether an IP packet encapsulates a TCP or UDP segment, we need to examine the payload of the IP packet.
   - True
   - False ☑

4. Suppose the forwarding table in a router has the following entries. For an incoming packet with destination IP address 100.20.137.16. The interface to which it be forwarded is:
   - A.1
   - B.2
   - C.5
   - D.3 ☑
   - E.4

5. The protocol for assigning IP addresses for hosts is DHCP

6. For generalized forwarding, each entry in the flow table consists of the following fields: Match, Action, and Stats.

7. For the link state routing algorithm, it tells its neighbors about the shortest distance from itself to all other nodes.
   - True
   - False ☑

8. Which of the following is NOT a feature of SDN?
   - A. Network-wide traffic engineering.
   - B. Distributed generation of forwarding/flow tables ☑
   - C. Separated Control Plane and Data Plane
   - D. Generalized flow-based forwarding.

9. The inter-AS routing protocol is BGP

10. Which router name is NOT a concept in hierarchical OSPF?
    - A. Gateway router. ☑
    - B. Backbone router.
    - C. Area border router.
    - D. Boundary router.

## 数据链路层

1. Which of the following is NOT a service provided by the data link layer?
   - A. Framing
   - B. Reliable link-level delivery
   - C. Flow control
   - D. Routing ☑

2. By performing carrier sensing, collision can be avoided because a host only starts transmission when the channel is idle.
   - True
   - False ☑

3. With two-dimensional parity bit checking, suppose a bit error at the location of row 2 and column 3, and another bit error at location of row 3 and column 2. In this case, the two error bits not only can be detected, but also can be corrected.
   - True ☑
   - False

4. For the CSMA/CD protocol, CD stands for Collision Detection

5. For the 48-bit Ethernet MAC address, the upper-half is the network portion, and the lower-half part is the host portion.
   - True
   - False ☑

6. Four hosts A, B, C and D are connected to different interfaces of a Ethernet switch. Given a sequence of frames transmitted in order: A=>B, B=>C, C=>D, D=>A. How many of them are flooded by the switch?
   - A.3 ☑
   - B.2
   - C.1
   - D.4

7. Which of the following statement is FALSE about VLAN?
   - A. Multiple switches can be grouped into a single VLAN.
   - B. A VLAN forms a broadcast domain.
   - C. A VLAN forms a collision domain. ☑
   - D. A switch can be partitioned into multiple VLANS.

8. Which of the four wireless links has the best quality?
   - A. Wireless link with low SNR and low BER
   - B. Wireless link with low SNR and high BER
   - C. Wireless link with high SNR and low BER. ☑
   - D. Wireless link with high SNR and high BER

9. In IEEE 802.11 Wireless MAC protocol CSMA/CA, CA stands for Collision Avoidance

10. With indirect routing that handles mobility in Cellular Network, when the mobile moves to a visited network, its correspondent is unaware of its movement
    - True ☑
