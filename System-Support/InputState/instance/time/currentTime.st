currentTime
	"Answer the time on the system clock in milliseconds since midnight."
	timeProtect critical:
		[deltaTime = 0
			ifFalse: [baseTime _ baseTime + (deltaTime * 1000 // 60).
		 			 deltaTime _ 0]].
	^baseTime
