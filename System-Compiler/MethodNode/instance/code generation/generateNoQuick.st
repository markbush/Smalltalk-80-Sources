generateNoQuick
	"Assumes would have been quick.  Forces numArgs > 0 so will compile real code.
	The debugger needs this to look simulate a quick return"

	arguments _ Array new: 1.
	^ self generate: #(0 0 0)
