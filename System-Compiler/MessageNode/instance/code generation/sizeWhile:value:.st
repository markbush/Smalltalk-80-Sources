sizeWhile: encoder value: forValue
	"Size code for <A> whileTrue: <B>, or <A> whileFalse: <B>"
	| cond stmt branchSize stmtSize loopSize |
	stmt _ arguments at: 1.
	stmtSize _ (stmt sizeForEvaluatedEffect: encoder) + 2. "loop jump is 2 bytes"
	selector key == #whileTrue:
		ifTrue: [branchSize _ self sizeBranch: stmtSize]
		ifFalse: [branchSize _ 2 "BTP is always 2 bytes"].
	loopSize _ (receiver sizeForEvaluatedValue: encoder) + branchSize + stmtSize.
	sizes _ Array with: stmtSize with: loopSize.
	^ loopSize + (forValue ifTrue: [1] ifFalse: [0]) "push nil (for value) takes 1 byte"
