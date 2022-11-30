# Just makes sure that parted is in sbin and ready
cp ./parted /sbin/

chmod -R 777 /sbin/parted

# retrives the line data for 
number=$(parted /dev/block/sda -s print all | grep -w "userdata" | awk '{print $1}')

# Checks if its 28th
if [ $number -eq 28 ]
 then
    echo "All Good"
else
    echo "userdata should be at 28, But its at $number"
    echo "GO BACK AND FOLLOW THE GUIDE CORRECTLY, YOU MISSED THE RENUMBERING STEP"
    echo "CONTINUING WILL BREAK YOUR RECOVERY, And by that YOUR PHONE TOO"
fi
