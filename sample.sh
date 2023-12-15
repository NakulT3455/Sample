
ls /opt/www

if [ $? -eq 0 ]     
then
    echo "Process is running"
else
    systemctl start httpd
    if [ $? -eq  0 ]
    then
        echo " Server started succesfully"
    else
        echo " Server not started, contact admin"
    fi
fi

echo "Script ended succesfully."