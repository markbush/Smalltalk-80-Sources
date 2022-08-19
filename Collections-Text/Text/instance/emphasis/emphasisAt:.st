emphasisAt: characterIndex
	"Answer the code for characters in the run beginning at characterIndex."

	self size = 0 ifTrue: [^1].	"null text tolerates access"
	^runs at: characterIndex
