# Both Linux and macOS
ps aux | grep sshd | grep -v grep # Lists the processes, filters for 'sshd', excludes the grep command itself.

