fixTemps
	"Fix the values of the temporary variables used in the block that are
	ordinarily shared with the method in which the block is defined."

	home _ home copy.
	home swapSender: nil
