#!/bin/bash

sudo cp dic.rb /usr/local/bin/dic
sudo chmod 755 /usr/local/bin/dic

if [ -f /usr/local/bin/dic ]; then
   echo "succeed to install dic!"
else
   echo "failure to install dic..."
fi
