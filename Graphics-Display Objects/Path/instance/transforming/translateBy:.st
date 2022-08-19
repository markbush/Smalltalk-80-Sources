translateBy: aPoint
	"Answers with a new instance of Path whose elements are translated by aPoint.
	Does not effect the elements of this Path."

	| newPath |
	newPath _ Path new: self size.
	newPath form: self form.
	collectionOfPoints do:
		[:element |
		newPath add:
			(element x + aPoint x) truncated @ (element y + aPoint y) truncated].
	^newPath
