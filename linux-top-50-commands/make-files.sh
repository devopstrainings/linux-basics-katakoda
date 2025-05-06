list=(ls pwd cd mkdir file touch cp mv rm cat head tail vim find locate grep sed awk cut sort uniq wc df du top ps free iostat vmstat dmidecode uptime who ping ip netstat ss traceroute telnet nc nslookup dig curl wget chmod chown chgrp sudo ssh su scp rsync telnet nc zip unzip tar time watch date history)

x=1
for i in ${list[*]}; do 
   if [ $(echo -n $x |wc -c) -eq 1 ] ; then 
      p="0" 
     else 
      p="" 
   fi 
   touch $p$x-$i.md 
   x=$(($x+1))
done
