# GoodMorning
AppleScript to automate good morning texts


Reads from specified directory which contains GeneralTexts.txt, AnniversaryText.txt, and MonthiversaryTexts.txt, checks the date to decide which to use, and then appends a heart emoji to be sent to a number of your choosing. Can be used in tandem with Calendar.app to be sent every morning.

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

Open Calendar
    Create a New Event: Click on the date when you want the script to run, then click on the time. Enter a name for the event (e.g., "Good Morning").

Add an Alert to Run the Application:
    In the event details, look for the option to add an alert, reminder, or notification.
    Choose "Custom," then select "Open file."
    Choose "Other" and select the Automator application you created.
    Set the alert time to "At time of event."

Repeat the Event (Optional): If you want the script to run regularly (like daily or weekly), set the event to repeat according to your preferred schedule.

Save the Event: Make sure everything is set up as you want it, then close the event editor.
