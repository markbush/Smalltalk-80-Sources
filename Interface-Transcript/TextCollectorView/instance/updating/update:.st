update: aParameter
	self topView isCollapsed ifTrue: [model appendEntry].
	(self controller isKindOf: TextCollectorController)
		ifTrue:
			[aParameter == #appendEntry
				ifTrue: [^controller appendEntry].
			aParameter == #update
				ifTrue: [^controller changeText: model contents asText].
			aParameter == #refresh
				ifTrue:	[^controller viewToTop]]
