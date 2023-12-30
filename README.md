# GoodMorning

## AppleScript to automate good morning texts.

### Installation
''' sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicknacnic/GoodMorning/main/install.sh)" '''

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

## To Do
- [x] Complete install/uninstall script
- [ ] Introduce logic to keep track of which messages are sent
- [ ] Create bigger text lists
- [ ] Add support for nicknames
