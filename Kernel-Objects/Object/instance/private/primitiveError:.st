primitiveError: aString
	"This method is called when the error handling results in a recursion in calling
	on error: or halt or halt:."

	| context key |
	Transcript cr.
	Transcript show: '**System Error Handling Failed** '.
	Transcript show: aString.
	Transcript cr.
	context _ thisContext sender sender.
	3 timesRepeat:
		[context == nil ifFalse: [Transcript print: (context _ context sender); cr]].

	[Transcript show: '**type <s> for more stack; anything else restarts scheduler**'.
	Transcript cr.
	key _ Sensor keyboard.
	key = $s | (key = $S)]
		whileTrue:
			[5 timesRepeat:
				[context == nil
					ifFalse: [Transcript print: (context _ context sender); cr]]].
	ScheduledControllers searchForActiveController
