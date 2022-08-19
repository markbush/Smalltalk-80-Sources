clamp: obj
	refcts at: (self oopOf: obj) put: Clamped.
	(obj isKindOf: Behavior)
		ifTrue:
			[writeDict at: obj put: #writeClamped:.
			Smalltalk removeKey: obj name.
			SystemOrganization removeElement: obj name]
