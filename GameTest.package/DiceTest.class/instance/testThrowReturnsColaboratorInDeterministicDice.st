tests
testThrowReturnsColaboratorInDeterministicDice
	|dice|
	dice:= DeterministicDice withQuantityOfSides: 6.
	self assert: (dice throw:6) equals: 6.