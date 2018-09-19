actions
throw
	|aRandomSeries aRandomInt|
	aRandomSeries := Random new.
	aRandomInt := (aRandomSeries nextInt: (QuantityOfSides)).
	^aRandomInt
	