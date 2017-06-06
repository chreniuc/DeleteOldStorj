# DeleteOldStorj 
Deletes old log files made by storjshare.

## Usage
```console
# git clone https://github.com/kznamst/DeleteOldStorj.git
# cd DeleteOldStorj
# chmod +x cleanStorj.sh
 Modify the path to your logs(you can add multiple paths, in case you have multiple nodes)
# crontab -e
In cron add: 
# 00 09 * * * /home/storj/DeleteOldStorj/cleanStorj.sh >> /dev/null 2>&1
That means that it will be executed every day at 9, don't forget to change the path: /path/to/DeleteOldStorj/cleanStorj.sh 
```
