accesing
wonBy: aPlayer 
	players do:[:each | 
		(aPlayer=each)
		ifTrue: [
		
			(each position=board numberOfSpaces )
			ifTrue: [ ^true ]
			ifFalse: [ ^false ]
			]
		
			].
	
	AssertionFailure signal:'No existe el jugador solicitado'.