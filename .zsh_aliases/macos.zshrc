alias shutdown="sudo shutdown -h +1 'Computer is going to poweroff'"
alias halt="sudo halt"
alias poweroff="sudo shutdown -h now"
alias reboot="sudo shutdown -r now 'Computer is going to reboot'"

alias myip="ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2"
alias ch+x="sudo chmod +x"
