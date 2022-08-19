clear
	"Re-initialize the text to contain no characters."

	contents _ Text new.
	self beginEntry.
	self changed: #update
	"Transcript clear"
