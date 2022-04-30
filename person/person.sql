SELECT
	person.idcard,
	person.fname,
	person.lname,
	person.hcode,
	person.pcucodeperson,
	person.birth,
	person.pid,
    person.sex,
    person.dateupdate,

	person.marystatus,
	cstatus.statusname,

	person.familyno,
	person.familyposition,
	cfamilyposition.famposname,

	person.father,
	person.fatherid,
	person.mother,
	person.motherid,
	person.mate,
	person.mateid,

	ctitle.titlename,
	`person`.`rightcode`,
	`person`.`rightno`,
	`person`.`hosmain`,
	`person`.`hossub`,

	persondeath.deadcause,
	persondeath.deaddate,
	persondeath.cdeatha,
	persondeath.cdeathb,
	persondeath.cdeathc,
	persondeath.cdeathd,
	persondeath.odisease,

	personbehavior.ciga,
	personbehavior.wisky,
	personbehavior.exercise,
	personbehavior.bigaccidentever,
	personbehavior.tonic,
	personbehavior.habitfoming,
	personbehavior.drugbyyourseft,
	personbehavior.sugar,
	personbehavior.salt,
	personbehavior.dateupdate

FROM person
    LEFT JOIN personbehavior ON
        person.pcucodeperson=personbehavior.pcucodeperson
            AND
        person.pid=personbehavior.pid
	LEFT JOIN ctitle ON
		person.prename=ctitle.titlecode
	LEFT JOIN cfamilyposition ON
		person.familyposition=cfamilyposition.famposcode
	LEFT JOIN cstatus ON
		person.marystatus=cstatus.statuscode
	LEFT JOIN persondeath ON
		person.pcucodeperson=persondeath.pcucodeperson
			AND
		person.pid=persondeath.pid
WHERE
	(person.typelive <= 3 OR person.typelive = 5)
	AND person.hcode != 1