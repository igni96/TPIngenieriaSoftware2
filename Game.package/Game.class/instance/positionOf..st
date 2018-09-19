accesing
positionOf: aPlayer 
	players do:[:each | 
		(aPlayer=each)
		ifTrue: [^(each position)]].
	
	AssertionFailure signal:'No existe el jugador solicitado'.
	
	
	