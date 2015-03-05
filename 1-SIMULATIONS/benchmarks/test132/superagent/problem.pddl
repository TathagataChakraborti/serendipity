(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM5 )
		( AT_MK2_ROOM9 )
		( AT_COMMX_HALL2 )
		( AT_ROBOT_ROOM8 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM7 )
		)
	)
	(:metric minimize (total-cost))

)
