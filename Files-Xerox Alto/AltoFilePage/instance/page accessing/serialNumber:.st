serialNumber: sn
	self headerWordAt: Sn1 put: (sn wordAt: 1).
	self headerWordAt: Sn2 put: (sn wordAt: 2).
	self headerWordAt: Vn put: 1  "fixed version"
