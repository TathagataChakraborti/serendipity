(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM1 )
		( AT_MK2_ROOM5 )
		( AT_COMMX_ROOM10 )
		( AT_ROBOT_ROOM13 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM3 )
		)
	)
	(:metric minimize (total-cost))

)
