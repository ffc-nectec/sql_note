# Person

src: https://github.com/ffc-nectec/airsync/blob/bd62f7de63ce246722f7b8f9e48891e121b68fe5/impl/airsync-jhcis-db/src/main/kotlin/ffc/airsync/person/NewQueryPerson.kt#L193

map data is
```
personbehavior.ciga
    null:   is null
    1   :   NEVER
    2   :   RARELY
    3   :   OCCASIONALLY
    4   :   USUALLY
    else:   UNKNOWN

personbehavior.wisky
    null:   is null
    1   :   NEVER
    2   :   RARELY
    3   :   OCCASIONALLY
    4   :   USUALLY
    else:   UNKNOWN

personbehavior.exercise
    null:   is null
    0   :   Frequency.NEVER
    1   :   Frequency.RARELY
    2   :   Frequency.OCCASIONALLY
    3   :   Frequency.USUALLY
    else   :   Frequency.UNKNOWN

personbehavior.bigaccidentever
    0   :   false
    1   :   true
    else:   is null

personbehavior.tonic
    0   :   false
    1   :   true
    else:   is null

personbehavior.habitfoming
    null: is null
    0   :   false
    9   :   false
    else:   true

personbehavior.drugbyyourseft
    0   :   false
    1   :   true
    else:   is null

personbehavior.sugar
    0   :   false
    1   :   true
    else:   is null

personbehavior.salt
    0   :   false
    1   :   true
    else:   is null
```