SELECT
	visit.pcucode,
	visit.visitno,
	visit.visitdate,
	visit.pcucodeperson,
	visit.pid,
	visit.timeservice,
	visit.timestart,
	visit.timeend,
	visit.symptoms,
	visit.vitalcheck,
	visit.weight,
	visit.height,
	visit.pressure,
	visit.pressure2,
	visit.pressurelevel,
	visit.temperature,
	visit.pulse,
	visit.respri,
	visit.username,
	visit.flagservice,
	visit.dateupdate,
	visit.bmilevel,
	visit.flag18fileexpo,
	visit.rightcode,
	visit.rightno,
	visit.hosmain,
	visit.hossub,
	visit.waist,
	visit.ass,
	visit.healthsuggest1 as suggest,
	visit.diagnote
FROM
	visit
JOIN person ON
	person.pcucodeperson = visit.pcucode AND
	person.pid = visit.pid

    WHERE visit.dateupdate >= NOW() - INTERVAL 3 YEAR
        AND
    visit.timestart IS NOT NULL
		AND
	visit.timeend IS NOT NULL
        AND
    visit.pid <> 0
        	AND
   person.hcode <> 1