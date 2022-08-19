onClass: aClass
	organization _ SystemOrganization.
	className _ aClass isMeta
			ifTrue: [aClass soleInstance name]
			ifFalse: [aClass name].
	meta _ aClass isMeta
