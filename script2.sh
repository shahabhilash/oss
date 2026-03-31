#!/bin/bash

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "--------------------------"

if dpkg -l | grep -q python3; then
    echo "python3 is installed"
else
    echo "python3 is NOT installed"
fi

echo ""
echo "Package Info:"

case $PACKAGE in
    python3)
        echo "Python is an open-source programming language"
        ;;
    apache2)
        echo "Apache is a web server"
        ;;
    mysql-server)
        echo "MySQL is a database"
        ;;
    *)
        echo "No info available"
        ;;
esac
