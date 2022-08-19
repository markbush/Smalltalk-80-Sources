howToUse
	"An instance of Delay will respond to the message #wait by
	suspending the active process for a certain amount of time.

	The time for resumption of the active process is specified
	when the Delay is created.

	The resumption time can be specified relative to the current
	time with the messages {Delay forMilliseconds: anInteger} and
	{Delay forSeconds: anInteger}.
	Delays created in this way can be sent the message #wait
	again after they have finished a previous delay.

	The resumption time can also be specified at an absolute time
	with respect to the system's millisecond clock with the message
	{Delay untilMillisecond: anInteger}.
	Delays created in this way cannot be sent the message #wait
	repeatedly.
	"
