#!/usr/bin/expect

#一直等待程序的输入
set timeout -1

#设置变量
set will_install o
set express_install 1
set install_as_service i

# 启动安装程序
spawn /usr/src/_jira/atlassian-jira-software-7.2.7-x64.bin

expect {
    "o, Enter" { send "o\r";exp_continue}
    "use default settings" { send "1\r";exp_continue }
    "i, Enter" { send "i\r";exp_continue }
    "y, Enter" { send "y\r" }
}


expect eof
exit