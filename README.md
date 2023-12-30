# GoodMorning

## AppleScript to automate good morning texts.
> [!NOTE]
> Built for MacOS Big Sur 11.7+, for older Macs pre-shortcut/Sonoma build.


### Installation
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicknacnic/GoodMorning/main/install.sh)"
```

### Function
AppleScript reads from specified directory which contains GeneralTexts.txt, AnniversaryText.txt, and MonthiversaryTexts.txt, checks the date to decide which to use, and then appends a heart emoji to be sent to a number of your choosing.

### User-Requirements
Create an Automator app.
1. Start Automator on your Mac (found in your Applications folder).
2. Choose a Document Type: Select "Application" as the type of document you want to create.
3. Add AppleScript Action:
    - In the search bar in the upper left corner, type "AppleScript".
    - Drag "Run AppleScript" from the actions list to the workflow on the right.
4. Insert Your Script:
    - Copy and paste Messages.scpt.
    - This should be modified from the install script to include target cellphone number and anniversary date.
5. Save Your Application:
    - Go to File > Save
    - Choose a name and location for your Automator application (e.g., "GoodMorning.app" in Applications).
6. Check Your Application:
    - The install script should take care of this, you can check by using crontab.
    > crontab -l

> [!TIP]
> To troubleshoot if the cronjob is running/erroring try the below:
```
grep cron /var/log/system.log # if error code 1 see warnings below
sudo launchctl list | grep cron # to check if cron is running
```
## To Do
- [x] Complete install/uninstall script
- [ ] Introduce logic to keep track of which messages are sent
- [ ] Create bigger text lists
- [ ] Add support for nicknames
- [ ] iOS port to shortcuts

> [!WARNING]
> Known issues for Security & Privacy Preferences to add Cron to disk access folders.
> - Investigating automation of app creation on-device to remove user input requirements.
> - Investigating options to sudo install cron accessing folders

You may need to manually open System Preferences, Security & Privacy, Privacy, scroll down to Full Disk Access, click the + sign, shift+apple+g to go to /usr/sbin and manually select cron.
