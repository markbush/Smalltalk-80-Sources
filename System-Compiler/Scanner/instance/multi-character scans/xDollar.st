xDollar
	"form a Character literal"

	self step. "pass over $"
	token _ self step.
	tokenType _ #number "really should be Char, but rest of compiler doesn't know"
