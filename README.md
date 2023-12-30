# GoodMorning
AppleScript to automate good morning texts.

> sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicknacnic/GoodMorning/main/install.sh)"

Reads from specified directory which contains GeneralTexts.txt, AnniversaryText.txt, and MonthiversaryTexts.txt, checks the date to decide which to use, and then appends a heart emoji to be sent to a number of your choosing.

You will then need to create a custom app in Automator:

Start Automator on your Mac (found in your Applications folder).

Choose a Document Type: Select "Application" as the type of document you want to create.

Add AppleScript Action:
    In the search bar in the upper left corner, type "AppleScript".
    Drag "Run AppleScript" from the actions list to the workflow on the right.

Insert Your Script:
    Copy and paste Messages.scpt.
    This should be modified from the install script to include target cellphone number and anniversary date.

Save Your Application:
    Go to File > Save
    Choose a name and location for your Automator application (e.g., "GoodMorning.app" in Applications).

Run Your Application:
    The install script should take care of this, you can check by using
    > crontab -l
