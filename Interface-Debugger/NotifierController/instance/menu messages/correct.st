correct
	"Attempt to correct the spelling of the not-understood message and resend."

	self controlTerminate.
	model correct: self.
	self controlInitialize
