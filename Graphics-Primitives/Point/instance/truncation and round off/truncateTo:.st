truncateTo: grid
	"Answer a new Point that is the receiver's x and y truncated to grid x and grid y."

	^(x truncateTo: grid) @ (y truncateTo: grid)
