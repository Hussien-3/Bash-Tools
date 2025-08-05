🔎 ProtoScanner

**ProtoScanner** is a simple interactive Bash tool that scans a specific protocol (e.g., HTTP, FTP, SSH...) on a given IP or domain using all relevant Nmap scripts.

---

## What It Does

- Asks the user for:
  - The protocol name (e.g., `ftp`, `http`, `ssh`)
  - The target IP address or domain
- Runs all Nmap NSE scripts related to that protocol
- Scans all ports (`-p-`)
- Saves the output in a text report

---

## Usage

### 1. Clone or download the tool:

```bash
git clone https://github.com/yourusername/protoscanner.git
cd protoscanner
```
