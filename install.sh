#!/bin/bash

REPO_URL="https://github.com/nicknacnic/GoodMorning.git"
REPO_DIR="GoodMorning"

function install() {
    # Clone the repository
    git clone $REPO_URL
    cd $REPO_DIR

    # Prompt for cell number
    read -p "Enter the cell number for receiving messages: " cell_number

    # Prompt for anniversary date (format MM/DD/YY)
    read -p "Enter the anniversary date (format MM/DD/YY): " anniversary_date

    # Extract month and day from anniversary date
    anniversary_month=$(echo $anniversary_date | cut -d'/' -f1)
    anniversary_day=$(echo $anniversary_date | cut -d'/' -f2)

    # Replace placeholders in Message.scpt
    sed -i '' "s/TARGET_CELLPHONE/$cell_number/g" Message.scpt
    sed -i '' "s/dayOfMonth = XX/dayOfMonth = $anniversary_day/g" Message.scpt
    sed -i '' "s/monthOfYear = X/monthOfYear = $anniversary_month/g" Message.scpt
    sed -i '' "s/else if dayOfMonth = XX/else if dayOfMonth = $anniversary_day/g" Message.scpt

    # Instructions for setting up Automator Application
    echo "Please set up the Automator application manually using the modified Message.scpt script."

    # Set up cron job
    (crontab -l 2>/dev/null; echo "0 15 7 * * $(pwd)/cron.sh") | crontab -

    echo "Installation complete. Please ensure you have set up the Automator application."
}

function uninstall() {
    # Remove cron job
    crontab -l | grep -v "$(pwd)/cron.sh" | crontab -

    # Instructions for manually removing the Automator application
    echo "Please manually remove the GoodMorning.app from your Applications folder."

    # Navigate to the parent directory and remove the cloned repository
    cd ..
    rm -rf $REPO_DIR

    echo "Uninstallation complete. The GoodMorning repository has been removed."
}

# Check for flags
if [ "$1" == "-u" ]; then
    uninstall
else
    install
fi
