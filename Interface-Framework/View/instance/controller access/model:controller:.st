model: aModel controller: aController
	"Set the receiver's model to aModel, add the receiver to aModel's list of dependents,
	and set the receiver's controller to aController. Subsequent changes to aModel
	(see Model|change) will result in View|update: messages being sent to the
	receiver. nil for the value of aController indicates that the default
	controller is to be used when needed. If aController is not nil, its view is set to the
	receiver and its model is set to aModel."

	model ~~ nil & (model ~~ aModel)
		ifTrue: [model removeDependent: self].
	aModel ~~ nil & (aModel ~~ model)
		ifTrue: [aModel addDependent: self].
	model _ aModel.
	aController ~~ nil
		ifTrue:
			[aController view: self.
			aController model: aModel].
	controller _ aController
