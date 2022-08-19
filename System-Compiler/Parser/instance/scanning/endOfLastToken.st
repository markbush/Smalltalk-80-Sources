endOfLastToken
	hereType == #doIt ifTrue: [^ prevMark + prevToken + 1 + correctionDelta].
	tokenType == #doIt ifTrue: [^ prevMark + prevToken + correctionDelta].
	^ prevMark + prevToken - 1 + correctionDelta
