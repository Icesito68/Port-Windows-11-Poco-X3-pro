
# Just makes sure that parted is in sbin and ready
cp ./parted /sbin/

chmod -R 777 /sbin/parted

# retrives the line data for 
number=$(parted /dev/block/sda -s print all | grep -w "userdata" | awk '{print $1}')

# Checks if its 28th
if [ $number -eq 28 ]
 then
    echo "All good"
else
    echo "GO BACK AND FOLLOW THE GUIDE CORRECTLY"
    echo "YOU MISSED THE RENUMBERING STEP,"
    echo "DO NOT CONTINUE, YOU WILL BREAK YOUR SYSTEM,"
fi
