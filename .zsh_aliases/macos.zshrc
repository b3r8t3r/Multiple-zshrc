declare sys=`uname`

if [ "$sys" = "Darwin" ]
then
        alias myip="ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2"
fi

unset sys
