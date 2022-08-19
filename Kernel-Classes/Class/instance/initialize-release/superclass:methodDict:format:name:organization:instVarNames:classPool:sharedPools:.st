superclass: sup methodDict: md format: ft name: nm organization: org instVarNames: nilOrArray classPool: pool sharedPools: poolSet
	"Answer an instance of me, a new class, using the arguments of the message
	as the needed information."

	superclass _ sup.
	methodDict _ md.
	format _ ft.
	name _ nm.
	organization _ org.
	instanceVariables _ nilOrArray.
	classPool _ pool.
	sharedPools _ poolSet
