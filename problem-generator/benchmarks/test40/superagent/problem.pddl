(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM4 )
		( AT_MK2_ROOM10 )
		( AT_COMMX_ROOM9 )
		( AT_ROBOT_ROOM3 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM11 )
		)
	)
	(:metric minimize (total-cost))

)
