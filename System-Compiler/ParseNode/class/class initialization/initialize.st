initialize
	"ParseNode initialize.  VariableNode initialize."

	LdInstType _ 1.
	LdTempType _ 2.
	LdLitType _ 3.
	LdLitIndType _ 4.
	SendType _ 5.
	CodeBases _ #(0 16 32 64 208 ).
	CodeLimits _ #(16 16 32 32 16 ).
	LdSelf _ 112.
	LdTrue _ 113.
	LdFalse _ 114.
	LdNil _ 115.
	LdMinus1 _ 116.
	LdInstLong _ 128.
	Store _ 129.
	StorePop _ 130.
	ShortStoP _ 96.
	SendLong _ 131.
	LdSuper _ 133.
	Pop _ 135.
	Dup _ 136.
	LdThisContext _ 137.
	EndMethod _ 124.
	EndRemote _ 125.
	Jmp _ 144.
	Bfp _ 152.
	JmpLimit _ 8.
	JmpLong _ 160.
	SendPlus _ 176.
	Send _ 208.
	SendLimit _ 16
