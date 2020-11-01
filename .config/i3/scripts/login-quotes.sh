#!/bin/bash


echo "Arch Linux" > /etc/issue
echo "" >> /etc/issue
echo "" >> /etc/issue
echo "██████╗ ██╗     ███████╗ █████╗ ███████╗███████╗    ██╗      ██████╗  ██████╗ ██╗███╗   ██╗" >> /etc/issue
echo "██╔══██╗██║     ██╔════╝██╔══██╗██╔════╝██╔════╝    ██║     ██╔═══██╗██╔════╝ ██║████╗  ██║" >> /etc/issue
echo "██████╔╝██║     █████╗  ███████║███████╗█████╗      ██║     ██║   ██║██║  ███╗██║██╔██╗ ██║" >> /etc/issue
echo "██╔═══╝ ██║     ██╔══╝  ██╔══██║╚════██║██╔══╝      ██║     ██║   ██║██║   ██║██║██║╚██╗██║" >> /etc/issue
echo "██║     ███████╗███████╗██║  ██║███████║███████╗    ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║" >> /etc/issue
echo "╚═╝     ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝" >> /etc/issue
echo "                                                                                           " >> /etc/issue
echo "" >> /etc/issue
cowfortune >> /etc/issue
echo "" >> /etc/issue
echo "" >> /etc/issue
echo "" >> /etc/issue
cp /etc/issue /tmp/login
sed -i -e 's/^/     /' /tmp/login
cat /tmp/login > /etc/issue

