from: beginPoint to: endPoint withForm: aForm
	| newSelf |
	newSelf _ super new: 2.
	newSelf add: beginPoint.
	newSelf add: endPoint.
	newSelf form: aForm.
	^newSelf
