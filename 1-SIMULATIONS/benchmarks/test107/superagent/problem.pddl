(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM8 )
		( AT_MK2_ROOM4 )
		( AT_COMMX_HALL6 )
		( AT_ROBOT_ROOM2 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM9 )
		)
	)
	(:metric minimize (total-cost))

)
