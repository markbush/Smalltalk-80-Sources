acceptText: aText from: aController
	textMode == #classDefinition ifTrue:
		[^ self acceptClass: aText from: aController].
	textMode == #methodDefinition ifTrue:
		[^ self acceptMethod: aText from: aController].
	textMode == #categories ifTrue:
		[organization changeFromString: aText string.
		self newCategoryList: category.
		^true].
	textMode == #protocols ifTrue:
		[self selectedClass organization changeFromString: aText string.
		self selectedClass reorganize.
		self selectedClass logOrganizationChange.
		self textMode: #protocol; newProtocolList: nil.
		^ true].
	textMode == #comment ifTrue:
		[self selectedClass comment: aText string.
		self textMode: #comment; newProtocolList: nil.
		^ true].
	textMode == #hierarchy ifTrue:
		[aController flash].
	^ false
