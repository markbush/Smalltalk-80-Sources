scaleBy: aPoint
	"Answers with a new Path scaled by aPoint.  Does not effect the current data in
	this Path."

	| newPath |
	newPath _ Path new: self size.
	newPath form: self form.
	collectionOfPoints do:
		[:element |
		newPath add:
				(aPoint x * element x) truncated @ (aPoint y * element y) truncated].
	^newPath
