(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM2 )
		( AT_MK2_ROOM5 )
		( AT_COMMX_HALL4 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM3 )
		)
	)
	(:metric minimize (total-cost))

)
