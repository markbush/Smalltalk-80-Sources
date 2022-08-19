setTempNamesIfCached: aBlock
	TempNameCache == nil ifTrue: [^self].
	TempNameCache key == self
		ifTrue: [aBlock value: TempNameCache value]
