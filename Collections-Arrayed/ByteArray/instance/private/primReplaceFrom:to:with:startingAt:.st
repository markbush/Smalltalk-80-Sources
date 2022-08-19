primReplaceFrom: start to: stop with: replacement startingAt: repStart
	"This destructively replaces elements from start to stop in the receiver
	starting at index, repStart, in the collection, replacement.  Answer the
	receiver.  No range checks are performed - this may be primitively implemented."

	<primitive: 105>
	super replaceFrom: start to: stop with: replacement startingAt: repStart
