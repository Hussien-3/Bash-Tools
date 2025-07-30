# 🧾 File Info Tool (Bash)

## 📌 Description

A simple Bash script that displays **detailed information about a given file**.  
Useful for system administrators, security analysts, or anyone who wants quick insights into files.

---

## ✅ Features

- Full absolute path
- File type and size
- File permissions
- Owner and group
- Last modification date
- Executable check
- Line count (if text file)
- SHA256 and MD5 hash

---

## 🧪 Requirements

- Bash 4+
- Commands used: `file`, `stat`, `wc`, `sha256sum`, `md5sum`, `realpath`

---

## 🚀 Usage

```bash
./file_info.sh <filename>
```
