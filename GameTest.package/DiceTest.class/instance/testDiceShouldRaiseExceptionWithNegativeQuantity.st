tests
testDiceShouldRaiseExceptionWithNegativeQuantity
	|dice|
	self should: [dice:=Dice withQuantityOfSides: -6.] raise: AssertionFailure .
	