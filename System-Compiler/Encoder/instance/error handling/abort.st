abort
	| req |
	requestor == nil
		ifFalse:
			[req _ requestor.
			self release.
			req abort].
	^false
