pointNearestLine: point1 to: point2
	"Answers the closest integer point to the receiver on the line determined by (point1, point2)."

	| relPoint delta |
	delta _ point2 - point1. 			"normalize coordinates"
	relPoint _ self - point1.
	delta x = 0 ifTrue: [^point1 x@y].
	delta y = 0 ifTrue: [^x@point1 y].
	delta x abs > delta y abs 		"line more horizontal?"
		ifTrue: [^x@(point1 y + (x * delta y // delta x))]
		ifFalse: [^(point1 x + (relPoint y * delta x // delta y))@y]

	"43@55 pointNearestLine: 10@10 to: 100@200"
