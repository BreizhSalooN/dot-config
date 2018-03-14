#!/bin/bash

# Une fois le script modifié, éxécuter "$ chmod +x NFSmount.sh" dans un terminal pour le rendre éxécutable.
# Pour lancer le script "$ sudo ./NFSmount.sh" dans un terminal.

### Test que le script est lance en root
if [ $EUID -ne 0 ]; then
  echo "Le script doit être lancé en root: $ sudo $0" 1>&2
  exit 1
fi
  
### Script NFS
echo "  "
echo -e "\033[34m======================================================\033[0m"
echo "	NFS Mount/Unmount pour Thinkdata."
echo -e "\033[34m======================================================\033[0m"
echo "  "

read -n 1 -p "  Que faire patron ? mount(m), unmount(u)" ans;

case $ans in
    m|M)
        mount 192.168.2.44:/mnt/Thinkdata /mnt/NFS	
	clear        
	exit;;
    u|U)
        umount /mnt/NFS
	clear        
	exit;;
esac

