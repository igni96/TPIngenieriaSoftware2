initialization
withQuantityOfSides: anInteger 

 self assertQuantityOfSidesGreaterThanZero: anInteger.
	^self new initializeWithQuantityOfSides: anInteger.