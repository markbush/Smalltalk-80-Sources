sameAsStoredFile
	"Answer true if File instance is correct enough so that it doesn't have to be
	reinitialized.  This allows reopen to go more quickly for certain
	implementations.  For example, in a local file system, a write date and time
	may guarantee that it hasn't changed since we closed this file.  This is the
	default. "

	^false
