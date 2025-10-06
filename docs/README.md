# 🧠 DevOps Practice Project

Personal learning project focused on developing practical DevOps skills.
The goal is to build a solid foundation in **Linux, Bash scripting, task automation, and CI/CD**, integrating tools such as **GitHub Actions**, **Docker**, and **Kubernetes** as you go.

---

## 📘 Project Objectives

- Automate maintenance tasks on Linux systems.
- Practice Bash scripting with best practices.
- Implement basic CI/CD workflows using GitHub Actions.
- Document the learning process and environment evolution.

---

## 📂 Repository Structure
├── scripts/ # Bash automation scripts
├── docs/ # Technical documentation
└── .github/ # CI/CD workflows

---

## 🧩 Current Scripts

### 🧹 `clean_logs.sh`
Deletes `.log` files older than X days within a specified directory.
Ideal for automated system maintenance.

**Usage:**
```bash
bash scripts/clean_logs.sh /var/log 7 # Deletes the .log files older than 7 days in /var/log.
```

### 💾 `backup.sh`
Creates a compressed backup of a file or directory in the specified destination.

**Usage:**
```bash
bash scripts/backup.sh /etc /backups # Generates a file named backup-YYYYMMDD-HHMM.tar.gz in the destination folder.
```

### 📊 `system_report.sh`
Generates a system report including CPU, memory, and disk usage.

**Usage:**
```bash
bash scripts/system_report.sh # Save the result to system_report.txt
```

### 🧠 `check_processes.sh`
Monitors whether specific processes are running and displays alerts if any are not.

**Usage:**
```bash
bash scripts/check_processes.sh nginx sshd cron
```

---

## CI/Cd with GitHub Actions
A basic workflow (.github/workflows/bash-lint.yml) is used to validate Bash script syntax using ShellCheck on each push.
This ensures code quality and consistency as the project evolves.

---

## 🚀 Next Steps
- [ ] Add Docker integration.
- [ ] Create a complete CI/CD pipeline.
- [ ] Deploy containers with Kubernetes.
- [ ] Integrate monitoring with Prometheus or Grafana.

---

## 🧑‍💻 Author
Franco Espinoza
FullStack Developer and future DevOps Engineer
Project created for educational and practical purposes.