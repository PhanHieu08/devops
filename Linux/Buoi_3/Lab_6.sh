#!/bin/bash

cd ~
touch task.sh
echo "#!/bin/bash" > task.sh
echo "date >> ~/data.log" >> task.sh
echo "ps aux >> ~/data.log" >> task.sh
chmod +x ~/task.sh
~/task.sh
cat ~/data.log
crontab -e 
# add at the last line * * * * * ~/task.sh
