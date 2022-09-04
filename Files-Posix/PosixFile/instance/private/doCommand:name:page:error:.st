doCommand: command name: name page: page  error: e
	| result |
	result _ self doPrimCommand: command name: name page: page.
	(result == false or: [ result isNil] ) ifTrue: [ 
		e isNil ifFalse: [ error _ self errorString: self lastError.
				self error: e]].
	^result
