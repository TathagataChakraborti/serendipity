(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM6 )
		( AT_MK2_ROOM3 )
		( AT_COMMX_ROOM12 )
		( AT_ROBOT_ROOM13 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM1 )
		)
	)
	(:metric minimize (total-cost))

)
