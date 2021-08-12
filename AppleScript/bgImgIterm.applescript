--Change the background picture in iTerm by arguments--
on run argv
	tell application "iTerm"
		tell current session of current window
			set background image to "/Users/mayorov/Pictures/iTerm/" & (argv as text)
		end tell
	end tell
end run
