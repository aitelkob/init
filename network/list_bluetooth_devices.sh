#!/bin/bash

# Function to list Bluetooth devices on Linux
list_bluetooth_linux() {
    # Attempt to use bluetoothctl
    if command -v bluetoothctl &>/dev/null; then
        echo "Listing Bluetooth devices using bluetoothctl:"
        bluetoothctl devices
    else
        echo "bluetoothctl not found. Attempting hcitool..."
        if command -v hcitool &>/dev/null; then
            hcitool dev
        else
            echo "Bluetooth tools (bluetoothctl, hcitool) not available."
        fi
    fi
}

# Function to list Bluetooth devices on macOS
list_bluetooth_macos() {
    echo "Listing Bluetooth devices using system_profiler (this might take a moment):"
    system_profiler SPBluetoothDataType
}

# Detect operating system and call the appropriate function
case "$(uname)" in
    "Linux") list_bluetooth_linux ;;
    "Darwin") list_bluetooth_macos ;;
    *)
        echo "Unsupported operating system."
        ;;
esac

