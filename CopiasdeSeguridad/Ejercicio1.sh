a) 
 iptables -t filter -A INPUT -p tcp --dport 80,443 -j ACCEPT #Servidor web
 iptables -t filter -A INPUT -i lo -j ACCEPT #Servidor web
 iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #Servidor web
b)
iptables -t filter -A INPUT -s 192.168.0.4 -p tcp --dport 3306 -j ACCEPT #Servidor BBDD
iptables -t filter -A INPUT -i lo -j ACCEPT #Servidor BBDD
iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #Servidor BBDD
c)
iptables -t filter -A INPUT -s 192.168.0.2 -p tcp --dport 20,21 -j ACCEPT #Servidor FTP"
iptables -t filter -A INPUT -s 192.168.0.3 -p tcp --dport 20,21 -j ACCEPT #Servidor FTP"
iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #Servidor FTP

 

D)iptables -t filter -A INPUT -p tcp --dport 22,80,443 -j ACCEPT
e)iptables -t filter -A INPUT -p tcp --dport 22,80,443 -j ACCEPT