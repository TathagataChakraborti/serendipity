(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM5 )
		( AT_MK2_ROOM8 )
		( AT_COMMX_HALL7 )
		( AT_ROBOT_HALL2 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM12 )
		)
	)
	(:metric minimize (total-cost))

)
