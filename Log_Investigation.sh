#!/bin/bash
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6


ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6


sudo lsof -i :8080


grep "Failed password" /var/log/auth.log

