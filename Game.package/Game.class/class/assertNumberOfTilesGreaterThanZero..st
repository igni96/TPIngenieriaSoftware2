asserting
assertNumberOfTilesGreaterThanZero: anInteger
	(anInteger <0)
	ifTrue: [ AssertionFailure signal:'The number of tiles in the board must be greater than zero' ].