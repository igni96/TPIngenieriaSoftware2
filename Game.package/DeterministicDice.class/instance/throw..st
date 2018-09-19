actions
throw: anInteger
(anInteger<(QuantityOfSides+1) )
ifTrue: [^anInteger.]
ifFalse:[AssertionFailure signal: 'The dice cant throw a value greater than its maximum value']