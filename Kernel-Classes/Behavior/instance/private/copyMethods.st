copyMethods  "copy all methods from superclasses not on the dynamic lookup chain"
	| noConflicts |
	noConflicts _ true.
	self allSelectors do:
		[:selector | noConflicts _ noConflicts & (self checkMethodFor: selector)].
	noConflicts ifFalse:
		[Transcript cr; show: self name , ' has conflicting inherited methods
  -- consult browser for their names']
