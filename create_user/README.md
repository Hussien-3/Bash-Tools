# User Creation Tool (Bash)

## Description

A simple Bash script to **create a new user** on a Linux system and **add them to a specified group**.  
The script also allows you to optionally set a password for the user.

Ideal for **system administrators**, **DevOps engineers**, or **security teams** who want to automate user management.

---

## Features

- Automatically checks and creates group if it doesn't exist
- Creates a new user and assigns them to the group
- Optional password assignment
- Colorful and user-friendly CLI
- Validates if user or group already exists
- Safe execution (requires root access)

---

## Requirements

- Linux-based system
- Bash 4+
- Must be run as **root**

---

## Usage

```bash
sudo ./create_user.sh
```
