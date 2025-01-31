#comandos iptables

#Listar
iptables -S #cat de comandos
iptables -L --line-numbers #listado con numeros 
-t filter -N reglas_ssh #para crear cadena

#asd


contrack = --ctstate = ## para instalar ## = -A INPUT -m conntrack --ctstate NEW


Iptables –t NAT/FILTER/MANGLE/RAW -A INPUT/OUTPUT/FORWARD –s (source) -d (destino) --ctstate ESTABLISHED/NEW/RELATED -j ACCEPT/DROP
                                                     #-i (input fisico) -o (output fisico)


--INPUT--

iptables -t filter -A INPUT -p tcp --dport 22,80,443 -j ACCEPT #Esta regla acepta todos los paquetes TCP que lleguen a los puertos 22 (SSH), 80 (HTTP) y 443 (HTTPS). Esto significa que tu servidor permitirá conexiones entrantes a estos puertos
iptables -t filter -A INPUT -j DROP # Esta regla rechazará todo el tráfico entrante que no coincida con las reglas anteriores.

--OUTPUT--


iptables -t filter -A OUTPUT -p tcp --dport 22,80,443 -j ACCEPT #Esta regla permite que tu servidor envíe tráfico TCP a los puertos 22, 80 y 443 (para SSH, HTTP y HTTPS, respectivamente).
iptables -t filter -A OUTPUT -j DROP #Esta regla bloqueará todo el tráfico saliente que no coincida con las reglas anteriores.

