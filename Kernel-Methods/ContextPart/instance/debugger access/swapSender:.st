swapSender: coroutine
	"Replace the receiver's sender with coroutine and answer the receiver's previous sender.
	For use in coroutining."

	| oldSender |
	oldSender _ sender.
	sender _ coroutine.
	^oldSender
