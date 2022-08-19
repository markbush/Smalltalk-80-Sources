initialize2: encoder
	"VariableNode initialize."

	NodeNil _ encoder encodeVariable: 'nil'.
	NodeTrue _ encoder encodeVariable: 'true'.
	NodeFalse _ encoder encodeVariable: 'false'.
	NodeSelf _ encoder encodeVariable: 'self'.
	NodeThisContext _ encoder encodeVariable: 'thisContext'.
	NodeSuper _ encoder encodeVariable: 'super'
