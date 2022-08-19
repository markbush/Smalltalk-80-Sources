skip: anInteger
	"Set position to position+anInteger. A subclass might choose to be more
	helpful and select the minimum of self size and position+anInteger or
	maximum of 1 and position+anInteger for the repositioning."

	self position: position + anInteger
