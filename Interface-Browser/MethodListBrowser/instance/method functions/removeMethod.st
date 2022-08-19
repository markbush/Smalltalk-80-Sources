removeMethod
	(super removeMethod) ifTrue:
		[methodList _ methodList copyWithout: methodName.
		self changed: #methodName]
