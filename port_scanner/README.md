# Bash-Tools

Bash-Tools

# Bash Port Scanner

## Description

This is a lightweight port scanner written in pure Bash. It scans a given IP address or domain name over a range of ports and identifies which ports are **open** or **closed** using TCP connections.

Useful for:

- Basic network reconnaissance
- Quick checks on services
- Learning Bash scripting and network behavior

---

## ⚙️ Features

- Written in **pure Bash** (no external tools required)
- Allows custom **port ranges**
- Uses `/dev/tcp` with `timeout` to test TCP connections
- Color-coded output (green for open, red for closed)

---

## Requirements

- Linux or macOS
- Bash 4+
- `timeout` command (usually available by default)

---

## Usage

```bash
./port_scanner.sh <target> [start_port] [end_port]
```
