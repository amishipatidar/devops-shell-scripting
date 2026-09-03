# System Information Shell Script

## Description

This project contains a shell script that displays basic system information and demonstrates basic shell scripting commands.

The script accepts user input, creates a directory and file, collects system information, displays running processes, and stores process information in a file using output redirection.

---

## Requirements Completed

- Prints the current date
- Prints the hostname
- Prints the username
- Prints disk usage
- Prints running processes
- Uses variables
- Takes user input using `read -p`
- Creates a directory using `mkdir`
- Creates a file using `touch`
- Stores running processes using `>` output redirection

---

## Commands Used

### 1. mkdir

Creates a directory based on the user's input.

```bash
mkdir -p "$DIR_NAME"
```

### 2. touch

Creates the `processes.txt` file inside the directory.

```bash
touch "$DIR_NAME/processes.txt"
```

### 3. echo

Displays information on the terminal.

```bash
echo "Current Date: $CURRENT_DATE"
```

### 4. df

Displays disk usage.

```bash
df -h
```

### 5. ps

Displays the currently running processes.

```bash
ps
```

### 6. read -p

Takes input from the user.

```bash
read -p "Enter the directory name you want to create: " DIR_NAME
```

### 7. Variables

Variables are used to store system information.

```bash
CURRENT_DATE=$(date)
HOST_NAME=$(hostname)
USERNAME=$(whoami)
DISK_USAGE=$(df -h)
```

### 8. Output Redirection

The running process information is stored in a file using `>`.

```bash
ps > "$DIR_NAME/processes.txt"
```

---

## Script Execution

### Command

```bash
./system_info.sh
```

### User Input

```
Enter the directory name you want to create: system_data
```

### Output

```
=================================
       SYSTEM INFORMATION
=================================

Current Date: Thu Sep  3 18:28:36 IST 2026
Hostname: amishi.local
Username: amishismacbook

Disk Usage:

Filesystem        Size    Used   Avail Capacity iused ifree %iused  Mounted on
/dev/disk3s1s1    460Gi   16Gi   278Gi     6%    459k  2.9G    0%   /
devfs             198Ki   198Ki     0Bi   100%      684     0  100%   /dev
/dev/disk3s6      460Gi   20Ki   278Gi     1%        0  2.9G    0%   /System/Volumes/VM
/dev/disk3s2      460Gi   17Gi   278Gi     6%     2.1k  2.9G    0%   /System/Volumes/Preboot
/dev/disk3s4      460Gi   886Mi   278Gi     1%      527  2.9G    0%   /System/Volumes/Update
/dev/disk1s2      550Mi   6.0Mi   532Mi     2%        1  5.4M    0%   /System/Volumes/xarts
/dev/disk1s1      550Mi   5.8Mi   532Mi     1%       42  5.4M    0%   /System/Volumes/iSCPreboot
/dev/disk1s3      550Mi   1.6Mi   532Mi     1%      108  5.4M    0%   /System/Volumes/Hardware
/dev/disk3s5      460Gi   146Gi   278Gi    35%     2.0M  2.9G    0%   /System/Volumes/Data
map auto_home       0Bi      0Bi     0Bi   100%         0     0      -   /System/Volumes/Data/home
/dev/disk2s1       5.0Gi   1.3Gi   3.7Gi    26%        49   39M    0%   /System/Volumes/Update/SFR/mnt1
/dev/disk3s1       460Gi   16Gi   278Gi     6%      459k  2.9G    0%   /System/Volumes/Update/mnt1

Running Processes:

  PID TTY           TIME CMD
 2806 ttys000     0:00.11 -zsh
 3085 ttys000     0:00.01 /bin/bash ./system_info.sh

Process information has been saved to:

system_data/processes.txt
```

---

## Verification

### 1. Verify Directory and File Creation

The script creates the `system_data` directory using `mkdir` and creates the `processes.txt` file using `touch`.

**Command**

```bash
ls -l system_data
```

**Output**

```
total 8
-rw-r--r--  1 amishismacbook  staff  111  3 Sep 18:28 processes.txt
```

### 2. Verify Process Information

The running process information is stored in `processes.txt` using output redirection.

**Command**

```bash
cat system_data/processes.txt
```

**Output**

```
  PID TTY           TIME CMD
 2806 ttys000     0:00.11 -zsh
 3085 ttys000     0:00.01 /bin/bash ./system_info.sh
```

---

## Project Structure

```
devops-shell-scripting/
├── README.md
├── system_info.sh
└── system_data/
    └── processes.txt
```

---

## Conclusion

The shell script successfully demonstrates:

- Shell variables
- User input using `read -p`
- Directory creation using `mkdir`
- File creation using `touch`
- Output using `echo`
- Disk usage using `df`
- Running processes using `ps`
- Output redirection using `>`
