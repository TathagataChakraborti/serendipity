(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM7 )
		( AT_MK2_ROOM6 )
		( AT_COMMX_ROOM12 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM4 )
		)
	)
	(:metric minimize (total-cost))

)
