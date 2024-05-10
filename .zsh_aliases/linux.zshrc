declare sys=`uname`

if [ "$sys" = "Linux" ]
then
        alias myips="ip a | grep inet | grep -v inet6"
        alias poweroff="sudo /usr/sbin/poweroff"
        alias reboot="sudo /usr/sbin/reboot"
        alias halt="sudo /usr/sbin/halt"
        alias shutdown="sudo /usr/sbin/shutdown"
fi

unset sys
