asserting
assertQuantityOfSidesGreaterThanZero: anInteger
	(anInteger <0)
	ifTrue: [ AssertionFailure signal:'The quantity of sides must be greater than zero' ].