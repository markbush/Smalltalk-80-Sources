cr
	"When a carriage return is encountered, simply increment the pointer into the paragraph."

	"When displaying line stopped in endOfRun, primitive hasn't incremented
				lastIndex when cr stop occurs, hence, "
				lastIndex_ lastIndex + 1.
				^false
