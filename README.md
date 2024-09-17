# LinuxBatteryLog
A really simple tool to log battery life tests in linux systems, written in bash.

## Required packages
Ensure that you have the **upower** or **acpi** package installed, depending on what your distro supports:

For Debian/Ubuntu:
```
# upower
sudo apt-get install upower

# acpi
sudo apt-get install acpi
```

For Fedora:
```
# upower
sudo dnf install upower

# acpi
sudo dnf install acpi
```
## How to run

Give the appropriate permissions to the file:
```
chmod +x test.sh
```
Run with:
```
./test.sh
```

