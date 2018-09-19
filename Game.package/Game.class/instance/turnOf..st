actions
turnOf: aPlayer
|numberOfPlayers|  
(self hasEnded)
ifTrue: [ AssertionFailure signal:'El juego ya termino' ]
ifFalse: [  
	((players at: turn) =aPlayer)				"Revisa que el jugador que mandan es al que le toca"
	ifTrue: [  										"Si le toca a ese jugador"
		dices do:[:each|
			(players at: turn) throws: each. 	"El jugador del turno tira cada dado"
				
			].
		(self hasEnded)															"Si se paso del maximo su posción final es la última del tablero"
				ifTrue: [ (players at: turn)setPosition: (board numberOfSpaces)   ].
		numberOfPlayers:=players size.			"Tamaño del arreglo de jugadores"
		(turn+1>numberOfPlayers)					"Para que si ya tiraron todos vuelva a empezar"
		ifTrue: [turn:=1.]							
		ifFalse: [ turn:=turn+1. ]
		 ]
	ifFalse:[ AssertionFailure signal:'No es el turno de ese jugador'].
]