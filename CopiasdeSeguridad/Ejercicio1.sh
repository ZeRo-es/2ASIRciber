a) 
 iptables -t filter -A OUTPUT -p tcp --dport 80,443 -j ACCEPT "Servidor web"
 iptables -t filter -A INPUT -p tcp --dport 80,443 -j ACCEPT "Servidor web"
 iptables -t filter -A INPUT -j DROP "servidor web"
b)
iptables -t filter -A FORWARD -s 192.168.200.50 -d 192.168.3.1 -p tcp --dport 3306 -j ACCEPT "servidores"
iptables -t filter -A FORWARD -s 192.168.3.254 -d 192.168.0.2 -p tcp --dport 3306 -j ACCEPT "3er piso"
iptables -t filter -A FORWARD -s 192.168.0.4 -d 192.168.1.254 -p tcp --dport 3306 -j ACCEPT "1 piso"
iptables -t filter -A INPUT -s 192.168.1.1 -p tcp --dport 3306 -j ACCEPT "servidor BBDD"
iptables -t filter -A INPUT -j DROP "servidor BBDD"
c)
iptables -t filter -A INPUT -s 192.168.200.1 -p tcp --dport 20,21 -j ACCEPT "servidor FTP"
iptables -t filter -A INPUT -j DROP "servidor FTP"
iptables -t filter -A FORWARD -s 192.168.200.60 -d 192.168.3.1 -p tcp --dport 20,21 -j ACCEPT "servidores"
iptables -t filter -A FORWARD -s 192.168.3.254 -d 192.168.0.2,192.168.0.3 -p tcp --dport 20,21 -j ACCEPT "3r piso" 
iptables -t filter -A FORWARD -s 192.168.0.4 -d 192.168.2.254 -p tcp --dport 20,21 -j ACCEPT "2do piso" 
iptables -t filter -A FORWARD -s 192.168.2.1 -d 192.168.50.100 -p tcp --dport 20,21 -j ACCEPT "zulo" 
iptables -t filter -A FORWARD -s 192.168.0.4 -d 192.168.1.10,192.168.1.20 -p tcp --dport 20,21 -j ACCEPT "1er piso" 

D)iptables -t filter -A INPUT -p tcp --dport 22,80,443 -j ACCEPT
e)iptables -t filter -A INPUT -p tcp --dport 22,80,443 -j ACCEPT