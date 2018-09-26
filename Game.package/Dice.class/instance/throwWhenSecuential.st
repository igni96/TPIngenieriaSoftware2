actions
throwWhenSecuential
	futureThrows := (futureThrows select: [:number | (number < (QuantityOfSides+1)) & (number>0) ]).			"Me quedo solo con los valores que esten entre 1 y quantity of sides "
	nextThrow :=nextThrow+1.
	^(futureThrows at: nextThrow).
	
	