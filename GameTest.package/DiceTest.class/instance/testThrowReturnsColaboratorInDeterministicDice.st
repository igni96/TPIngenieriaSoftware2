tests
testThrowReturnsColaboratorInDeterministicDice
	|dice|
	dice:= Dice withType:  (DeterministicDice new) withQuantityOfSides: 6.
	self assert: (dice throw) equals: 5.