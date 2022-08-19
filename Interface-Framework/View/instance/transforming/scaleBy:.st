scaleBy: aScale
	"The x component of aScale (a Point) specifies the scale in the x direction;
	the y component specifies the scale in the y direction. aScale can, optionally,
	be an instance of Integer or Float in order to specify uniform scaling in both
	directions. Scales the View by aScale. The scale is concatenated with the current
	transformation of the receiver and is applied when View|transform is sent. This
	happens automatically in the process of displaying the receiver, for example."

	self setTransformation: (transformation scaleBy: aScale)
