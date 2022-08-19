methodReturnTop
	exit _ method size + 1.
	lastJumpPc _ lastReturnPc _ lastPc.
	statements addLast: stack removeLast
