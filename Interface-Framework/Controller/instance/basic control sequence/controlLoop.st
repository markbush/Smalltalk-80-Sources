controlLoop
	"Sent by Controller|startUp as part of the standard control sequence.
	Controller|controlLoop sends the message Controller|isControlActive to test
	for loop termination. As long as true is returned, the loop continues. When
	false is returned, the loop ends. Each time through the loop, the message
	Controller|controlActivity is sent."

	[self isControlActive] whileTrue: [Processor yield. self controlActivity]
