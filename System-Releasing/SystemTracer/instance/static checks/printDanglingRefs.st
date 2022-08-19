printDanglingRefs   "SystemTracer new printDanglingRefs."
	"Use this method to locate calls on classes and other global objects
	which are to be clamped from the system"
	| class x clamped f dangling |
	clamped _ Set new.
	"clamp entire categories of classes: "
	(SystemOrganization categories select: [:x | 'ClampThis*' match: x]) do:
		[:str |
		(SystemOrganization superclassOrder: str) do:
			[:class | clamped add: class name]].
	"clamp individual classes and other Globals: "
	(Array with: #AltoFile with: #AltoFileDirectory with: #AltoFilePage) do:
		[:x | clamped add: x].
	Smalltalk allBehaviorsDo:
		[:class |
		(class organization categories select:
				[:name | ('clampme*' match: name)]) do:
			[:name | Transcript print: class; space; nextPutAll: name; cr; endEntry.
			class removeCategory: name].
		].
	f_ Disk file: 'dangling.st'.
	clamped do:
		[:name |
		dangling _ self allCallsOn: (Smalltalk associationAt: name) clampedBy: clamped.
		dangling isEmpty ifFalse:
			[f cr; nextPutAll: name; cr.
			dangling do:
				[:x | f tab; nextPutAll: x; cr]]].
	f close
