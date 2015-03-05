(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM1 )
		( AT_MK2_ROOM1 )
		( AT_COMMX_ROOM3 )
		( AT_ROBOT_HALL5 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM10 )
		)
	)
	(:metric minimize (total-cost))

)
