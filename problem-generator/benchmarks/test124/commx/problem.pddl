(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM3 )
		( AT_MK2_ROOM4 )
		( AT_COMMX_ROOM7 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM8 )
		)
	)
	(:metric minimize (total-cost))

)
