tests
testDiceShouldRaiseExceptionWithNegativeQuantity
	|dice|
	self should: [dice:=Dice withType:(DeterministicDice new) withQuantityOfSides: -6.] raise: AssertionFailure .
