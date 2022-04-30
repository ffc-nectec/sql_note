SELECT
	personchronic.pcucodeperson,
	person.hcode,
	personchronic.chroniccode,
	personchronic.datedxfirst,
	personchronic.pid,
	cdisease.diseasecode,
	cdisease.mapdisease,
	cdisease.diseasename,
	cdisease.diseasenamethai,
	cdisease.code504,
	cdisease.code506,
	cdisease.codechronic,
	cdisease.codeoccupa
FROM person
	JOIN personchronic
		ON person.pcucodeperson=personchronic.pcucodeperson
		AND person.pid=personchronic.pid
	INNER JOIN cdisease
		ON personchronic.chroniccode=cdisease.diseasecode
ORDER BY person.hcode