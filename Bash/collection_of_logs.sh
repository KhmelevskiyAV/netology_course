#hi! ) may be useful to you at work )
   #chmod +x name.sh # for execution to perform load information collection
#!/bin/bash
while true; do
    date >> /var/log/system_info.log
    uname -a >> /var/log/system_info.log
    cat /proc/loadavg >> /var/log/system_info.log
    free -m >> /var/log/system_info.log
    df -h >> /var/log/system_info.log
    sleep 5
done

   #0 if everything is ok, output if something went wrong / to analyze the log above, specify the path and name
