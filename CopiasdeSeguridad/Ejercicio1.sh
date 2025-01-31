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
    iptables -t filter -A FORWARD -s 192.168.0.4 -d 192.168.1.20 , 192.168.1.10 -p tcp --dport 20,21 -j ACCEPT #1er Piso"
    iptables -t filter -A FORWARD -s 192.168.0.4 -d 192.168.2.254 -p tcp --dport 20,21 -j ACCEPT #2do Piso"
    iptables -t filter -A FORWARD -s 192.168.2.1 -d 192.168.50.100 -p tcp --dport 20,21 -j ACCEPT #Zulo"
    iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #Servidor FTP
D)
    iptables -t filter -A INPUT -i lo -j ACCEPT #Director
    iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #Director
    iptables -t filter -A INPUT -i lo -j ACCEPT #RRHH
    iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #RRHH


e)
    iptables -t filter -A INPUT -s 192.168.0.2 -p tcp --dport 100000 -j ACCEPT #Impresora"
    iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #Impresora
    iptables -t filter -A INPUT -s 192.168.2.1 -d 192.168.50.130 -p tcp --dport 10000 -j ACCEPT #Zulo"
f)
    iptables -t filter -A INPUT -s 192.168.0.2 -j ACCEPT #Uso general"
    iptables -t filter -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP #USOGENERAL
