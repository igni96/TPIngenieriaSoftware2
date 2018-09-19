accesing
placeOf: aPlayer 
	(self hasEnded )
	ifTrue: [
		players sort: [:player1 :player2 | player1 position >=player2 position].
		players doWithIndex: [ :each :i|
			(each = aPlayer)
			ifTrue: [ ^i. ]
			
			 ].
		AssertionFailure signal: 'No existe el jugador'.
		]
	ifFalse: [ AssertionFailure signal: 'No se puede dar la posición final en la mitad del juego' ].