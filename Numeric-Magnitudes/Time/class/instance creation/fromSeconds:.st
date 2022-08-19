fromSeconds: secondCount
	"Answer with a Time that is secondCount seconds since midnight."

	| secondsInHour hours |
	hours _ secondCount truncated // 3600.
	secondsInHour _ secondCount truncated \\ 3600.
	^self new hours: hours
			   minutes: secondsInHour // 60
			   seconds: secondsInHour \\ 60
