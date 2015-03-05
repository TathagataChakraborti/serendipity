(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM8 )
		( AT_MK2_ROOM13 )
		( AT_COMMX_HALL3 )
		( AT_ROBOT_HALL1 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM8 )
		)
	)
	(:metric minimize (total-cost))

)
