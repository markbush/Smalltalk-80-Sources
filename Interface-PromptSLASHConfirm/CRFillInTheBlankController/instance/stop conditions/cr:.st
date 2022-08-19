cr: characterStream
	"The carriage return was typed by the user.  This designates that the receiver should give up control."

	sensor keyboard. 	"gobble cr"
	characterStream isEmpty ifFalse:
		[self replaceSelectionWith:
			(Text string: characterStream contents emphasis: emphasisHere)].
	self accept
