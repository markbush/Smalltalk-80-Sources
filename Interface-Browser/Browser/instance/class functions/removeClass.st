removeClass
	| class |
	self changeRequest ifFalse: [^self].
	class _ self nonMetaClass.
	(self confirm: 'Are you certain that you
want to remove the class ', class name, '?')
		ifTrue:
		[class subclasses size > 0
			ifTrue: [self notify: class name , ' has subclasses'].
		class removeFromSystem.
		self newClassList: nil]
