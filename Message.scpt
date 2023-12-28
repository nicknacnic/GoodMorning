set today to current date
set dayOfMonth to day of today
set monthOfYear to month of today as number

-- Determine the file path based on the date
set filePath to "/path/to/text/directory"
if (dayOfMonth = XX) and (monthOfYear = X) then -- your anniversary
	set filePath to filePath & "AnniversaryText.txt" -- Path to your anniversary text file
else if dayOfMonth = XX then -- your monthiversary
	set filePath to filePath & "MonthiversaryTexts.txt" -- Path to your monthiversary text file
else
	set filePath to filePath & "GeneralTexts.txt" -- Path to your general text file
end if

try
	-- Read the file
	set fileRef to POSIX file filePath as alias
	set fileContents to read fileRef
	
	-- Handle different line endings
	if fileContents contains return then
		set AppleScript's text item delimiters to return
	else
		set AppleScript's text item delimiters to linefeed
	end if
	set messages to text items of fileContents
	
	-- Reset text item delimiters
	set AppleScript's text item delimiters to ""
	
	-- Check for messages and select a random one (if not anniversary)
	if (count of messages) > 0 then
		if (dayOfMonth = XX) and (monthOfYear = X) then
			set chosenMessage to item 1 of messages -- Always use the first message for anniversary
		else
			set randomIndex to random number from 1 to (count of messages)
			set chosenMessage to item randomIndex of messages
		end if
	else
		error "No messages found in the file."
	end if
	
	-- Define an array of colored heart emojis
	set heartEmojis to {"❤️", "🧡", "💛", "💚", "💙", "💜", "🖤", "🤍", "🤎", "💖", "💗", "💓", "💞", "💕", "💘", "💝"}
	-- Randomly select a heart emoji
	set randomEmojiIndex to random number from 1 to (count of heartEmojis)
	set chosenEmoji to item randomEmojiIndex of heartEmojis
	-- Append the selected emoji to the message
	set chosenMessage to chosenMessage & " " & chosenEmoji
	
on error errMsg number errNum
	display dialog "Error: " & errMsg & " (Error number " & errNum & ")"
	return
end try

tell application "Messages"
	-- Attempt to find the iMessage service
	set myService to 1st account whose service type = iMessage
	
	-- Set the recipient's phone number or email address
	set targetBuddy to "TARGET_CELLPHONE" -- Replace with the recipient's phone number or iMessage email
	
	-- Send the message
	set theBuddy to participant targetBuddy of myService
	send chosenMessage to theBuddy
end tell
