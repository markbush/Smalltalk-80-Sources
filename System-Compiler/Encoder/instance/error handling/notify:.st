notify: string
	| req |
	requestor == nil
		ifFalse:
			[req _ requestor.
			self release.
			req notify: string].
	^false
