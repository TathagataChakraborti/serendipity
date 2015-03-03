(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM7 )
		( AT_MK2_ROOM12 )
		( AT_COMMX_HALL7 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM7 )
		)
	)
	(:metric minimize (total-cost))

)
