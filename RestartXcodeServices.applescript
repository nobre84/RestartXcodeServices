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
