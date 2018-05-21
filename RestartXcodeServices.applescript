repeat 3 times
	try
		do shell script "pkill -9 \"IBDesignablesAgentCocoaTouch\""
	on error theError
	end try
	delay 0.25
end repeat

repeat 3 times
	try
		do shell script "pkill -9 \"SourceKitService\""
	on error theError
	end try
	delay 0.25
end repeat

repeat 3 times
	try
		do shell script "pkill -9 \"Interface Builder Cocoa Touch Tool\""
	on error theError
	end try
	delay 0.25
end repeat

try
	do shell script "/bin/launchctl list | grep SimDevice | awk '{print $3}' | xargs -I %s /bin/launchctl stop %s"
on error theError
end try
