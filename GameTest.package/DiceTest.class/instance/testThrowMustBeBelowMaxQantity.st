tests
testThrowMustBeBelowMaxQantity
	|dice|
	dice:= DeterministicDice withQuantityOfSides: 6.
	self should:  [dice throw:7.] raise: AssertionFailure .