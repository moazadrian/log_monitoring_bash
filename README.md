# Log Monitoring Bash Script 🚀

## 📌 Overview
This script monitors log files for errors and sends alerts if a threshold is exceeded. It is useful for DevOps engineers to automate log monitoring and trigger alerts when system failures occur.

## 🔹 Features
✅ Scans logs for "ERROR" messages  
✅ Triggers an alert when errors exceed the threshold  
✅ Can be automated with a cron job  
✅ Lightweight and efficient for real-time monitoring  

## 📂 Installation & Usage

### **Prerequisites**
- Unix/Linux environment (Mac, Linux, or WSL for Windows)
- Basic knowledge of Bash scripting
- A log file to monitor

### **Steps to Install & Run**
```bash
# Clone this repository
git clone https://github.com/your-username/log-monitoring-bash.git
cd log-monitoring-bash

# Create a sample log file
echo -e "INFO: Server started\nERROR: Database connection failed\nINFO: Request received\nERROR: Timeout occurred" > app.log

# Make the script executable
chmod +x log_monitor.sh

# Run the script
./log_monitor.sh
```

### **Expected Output:**
```
🚨 Alert! 2 errors found in the log file!
```

## ⚙️ Automating with Cron Job
To run the script every 5 minutes automatically:
```bash
crontab -e
```
Add this line at the bottom:
```
*/5 * * * * /path/to/log_monitor.sh
```
This ensures continuous log monitoring and alerting.

## 📜 Code Explanation
```bash
#!/bin/bash

LOG_FILE="app.log"   # Path to the log file
ERROR_THRESHOLD=2     # Set the error limit for alerts

# Count the number of error messages in the log file
ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

if [ "$ERROR_COUNT" -ge "$ERROR_THRESHOLD" ]; then
    echo "🚨 Alert! $ERROR_COUNT errors found in the log file!"
else
    echo "✅ All good! No critical errors detected."
fi
```

### **How it Works:**
1. Reads the `app.log` file.
2. Counts occurrences of "ERROR" messages.
3. If the count is **greater than or equal** to `ERROR_THRESHOLD`, an alert is triggered.

## 🚀 Future Enhancements
- **Email Notifications**: Send alerts via email when errors occur.
- **Slack/Discord Integration**: Forward alerts to a monitoring channel.
- **Multiple Log File Support**: Monitor Nginx, database, and application logs.
- **Dockerizing the Script**: Run it inside a container for easy deployment.

## 🏆 Contributing
Feel free to submit **issues, feature requests, or pull requests**!  
Fork this repository and contribute to improving the project. 🚀

## 📜 License
This project is open-source and available under the **MIT License**.

## 🔗 Connect
👨‍💻 **GitHub:** (https://github.com/moazadrian) 
💼 **LinkedIn:** (https://linkedin.com/in/moazadrian)  

---
🚀 **Happy Coding & Keep Automating!** 🔥
