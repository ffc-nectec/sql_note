SELECT
	ncd_person_ncd_screen.pcucode,
	ncd_person_ncd_screen.pid,
	ncd_person_ncd_screen.`no`,
	ncd_person_ncd_screen.screen_date,

	ncd_person_ncd_screen.height,
	ncd_person_ncd_screen.weight,
	ncd_person_ncd_screen.waist,
	ncd_person_ncd_screen.hbp_s1 as bloodPressureS1,
	ncd_person_ncd_screen.hbp_d1 as bloodPressureD1,
	ncd_person_ncd_screen.hbp_s2 as bloodPressureS2,
	ncd_person_ncd_screen.hbp_d2 as bloodPressureD2,
	ncd_person_ncd_screen.bsl as bloodSugar,
	ncd_person_ncd_screen.alcohol,
	ncd_person_ncd_screen.smoke,
	ncd_person_ncd_screen.screen_q1 as hasDmInFamily,
	ncd_person_ncd_screen.htfamily as hasHtInFamily,
	ncd_person_ncd_screen.user_update,
	ncd_person_ncd_screen.dateupdate,
    ncd_person_ncd_screen.visitno
FROM
	ncd_person_ncd_screen