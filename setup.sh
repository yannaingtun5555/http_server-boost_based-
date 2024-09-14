#!/bin/bash


SOURCE_DIR="./error"
TARGET_DIR="/var/www/html/error"

setup_error_directory() {
    echo "Setting up error directory..."

    # Check if the source directory exists
    if [ -d "$SOURCE_DIR" ]; then
        echo "Source directory found. Moving to target location..."
        
        # Create target directory if it doesn't exist
        sudo mkdir -p "$TARGET_DIR"

        # Move contents to target directory
        sudo mv "$SOURCE_DIR"/* "$TARGET_DIR"

        echo "Error directory moved to $TARGET_DIR."
    else
        echo "Source directory $SOURCE_DIR does not exist!"
        exit 1
    fi
}

# Function to setup permissions
setup_permissions() {
    echo "Setting up permissions for $TARGET_DIR..."

    # Set ownership and permissions
    sudo chown -R $(whoami):$(whoami) "$TARGET_DIR"
    sudo chmod -R 755 "$TARGET_DIR"
    sudo find "$TARGET_DIR" -type f -exec chmod 644 {} \;

    echo "Permissions setup successfully."
}

# Run setup functions
setup_error_directory
setup_permissions

echo "Setup completed successfully."
