# GoodMorning
AppleScript to automate good morning texts


Reads from specified directory which contains GeneralTexts.txt, AnniversaryText.txt, and MonthiversaryTexts.txt, checks the date to decide which to use, and then appends a heart emoji to be sent to a number of your choosing.

You will then need to create a custom app in Automator:

Start Automator on your Mac (found in your Applications folder).

Choose a Document Type: Select "Application" as the type of document you want to create.

Add AppleScript Action:
    In the search bar in the upper left corner, type "AppleScript".
    Drag "Run AppleScript" from the actions list to the workflow on the right.

Insert Your Script:
    Copy and paste Messages.scpt.
    Modify the XX and X for anniversary, monthiversary, and TARGET_CELL for who receives the messages.

Save Your Application:
    Go to File > Save
    Choose a name and location for your Automator application (e.g., "GoodMorning.app" in Applications).

Run Your Application:
    crontab -e
    0 15 7 * * /path/to/cron.sh is 15 minutes after 7a, every day every month
