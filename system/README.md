# System Administration and Scripting :gear:

## Overview :mag_right:

This project dives into the realm of system administration on Unix/Linux systems, employing both command-line utilities and scripting to address a variety of system-related tasks. The aim is to demonstrate how automation and scripting can significantly enhance the management and monitoring of system resources, user activities, and service configurations.

## Skills and Knowledge Demonstrated :brain:

1. **System Scripting Proficiency** :computer:  
   Showcased the ability to craft scripts for automating system administration tasks, including managing processes, analyzing system usage, and modifying system configurations. These scripts highlight not only coding skills but also an understanding of system internals.

2. **System Monitoring and Management** :bar_chart:  
   Engaged with tools and commands for monitoring system health, resources, and activity, such as `top`, `ps`, `df`, and `du`. This illustrates a comprehensive approach to keeping a pulse on system performance and optimizing operations.

3. **Process and Service Management** :wrench:  
   Demonstrated command over managing system processes and services, employing commands like `systemctl` and `launchctl` to control service states, showcasing the ability to ensure system stability and reliability.

4. **Filesystem and Storage Analysis** :file_folder:  
   Utilized commands to inspect and manage filesystem usage and disk partitions, revealing an adeptness in managing storage resources and planning for capacity needs.

5. **User Session and Activity Tracking** :detective:  
   Exhibited skills in monitoring and managing user sessions, employing techniques to list active users and manage system access, thus ensuring secure and efficient system use.

6. **Advanced System Configuration** :gear:  
   Addressed advanced system configuration tasks, including network settings, firewall rules, and service configurations, through both manual command-line adjustments and scripting.

## Project Contents :file_folder:

### System Monitoring and Processes
- [**`check_system_uptime.sh`**](https://github.com/aitelkob/init/blob/master/system/check_system_uptime.sh): Displays the system's uptime, showcasing how long the system has been running. ⏱️
- [**`find_running_processes.sh`**](https://github.com/aitelkob/init/blob/master/system/find_running_processes.sh): Lists currently active processes, providing insights into system activity and resource usage. 🔄
- [**`monitor_syslog.sh`**](https://github.com/aitelkob/init/blob/master/system/monitor_syslog.sh): Keeps an eye on the system log files, crucial for troubleshooting and monitoring system events. 📜

### User and Session Management
- [**`list_connected_users.sh`**](https://github.com/aitelkob/init/blob/master/system/list_connected_users.sh): Identifies users currently connected to the system, aiding in user management and security. 👥

### Disk and Filesystem Management
- [**`display_available_space.sh`**](https://github.com/aitelkob/init/blob/master/system/display_available_space.sh): Shows the available disk space, helping in managing storage resources. 💾
- [**`list_partition_tables.sh`**](https://github.com/aitelkob/init/blob/master/system/list_partition_tables.sh): Lists the disk partition tables, providing details on storage organization. 🗄️
- [**`size_of_var_folders.sh`**](https://github.com/aitelkob/init/blob/master/system/size_of_var_folders.sh): Reports the size of directories within `/var`, useful for managing log and cache storage. 📊

### Service and Process Control
- [**`reboot_ssh_service.sh`**](https://github.com/aitelkob/init/blob/master/system/reboot_ssh_service.sh): Demonstrates restarting the SSH service, essential for maintaining remote access security. 🔁
- [**`kill_background_process.sh`**](https://github.com/aitelkob/init/blob/master/system/kill_background_process.sh): Shows how to terminate background processes, ensuring resource availability and system performance. 🛑

### Security and Firewall Management
- [**`list_firewall_rules.sh`**](https://github.com/aitelkob/init/blob/master/system/list_firewall_rules.sh): Enumerates active firewall rules, a cornerstone of system security. 🛡️
- [**`configure_firewall.sh`**](https://github.com/aitelkob/init/blob/master/system/configure_firewall.sh): Guides through configuring firewall rules, highlighting security management capabilities. 🔧

## Conclusion :trophy:

By completing these tasks, I've deepened my expertise in system administration, particularly in automating and scripting solutions for common system management challenges. This project has not only enhanced my technical skills but also underscored the importance of proactive system monitoring, security management, and

