offEnd: aString
	" notify a problem beyond 'here' (in lookAhead token).  Don't be offEnded!"
	^ self notify: aString at: mark
