showGridded: gridPoint
	"Make the current cursor shape be the receiver, forcing the location of cursor
	to the point nearest gridPoint."
	Sensor primCursorLocPut: ((Sensor cursorPoint grid: gridPoint) + self offset).
	Sensor currentCursor: self
