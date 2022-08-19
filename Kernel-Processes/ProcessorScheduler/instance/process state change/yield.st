yield
	"Give other Processes at the current priority a chance to run"

	| semaphore |
	semaphore _ Semaphore new.
	[semaphore signal] fork.
	semaphore wait
