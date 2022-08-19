valueAt: aPoint put: value
	"0 and 1 are white and black;  2 is transparent.
	3 is a weird value which look like 1"
	shape valueAt: aPoint put: 1 - (value//2).
	figure valueAt: aPoint put: value\\2
