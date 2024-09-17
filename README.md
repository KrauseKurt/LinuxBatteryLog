# LinuxBatteryLog
A tool to log battery life tests for linux

## Required packages
Ensure that you have the **upower** or **acpi** package installed, depending on what your distro supports

For Debian/Ubuntu:
```
# For upower
sudo apt-get install upower

# For acpi
sudo apt-get install acpi
```

For Fedora:
```
# For upower
sudo dnf install upower

# For acpi
sudo dnf install acpi
```
## How to run
```
chmod +x battery_life_test.sh
./battery_life_test.sh
```
