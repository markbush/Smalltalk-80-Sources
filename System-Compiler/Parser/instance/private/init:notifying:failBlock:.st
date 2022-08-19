init: sourceStream notifying: req failBlock: aBlock
	requestor _ req.
	failBlock _ aBlock.
	correctionDelta _ 0.
	super scan: sourceStream.
	prevMark _ hereMark _ mark.
	self advance
