touch ~/myscript.sh
echo "#!/bin/bash" > ~/myscript.sh
echo "echo 'hello, world!'" >> ~/myscript.sh
ls -l
chmod +x ~/myscript.sh
~/myscript.sh

