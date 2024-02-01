// User list
CREATE (:User {name: 'Keanu Reeves', height: 1.85, dateOfBirth: datetime('1964-09-02')});
CREATE (:User {name: 'James Smith', height: 1.75, dateOfBirth: datetime('1990-05-15')});
CREATE (:User {name: 'Mary Johnson', height: 1.60, dateOfBirth: datetime('1985-09-20')});
CREATE (:User {name: 'John Williams', height: 1.80, dateOfBirth: datetime('1992-03-10')});
CREATE (:User {name: 'Patricia Brown', height: 1.65, dateOfBirth: datetime('1988-11-05')});
CREATE (:User {name: 'Robert Jones', height: 1.70, dateOfBirth: datetime('1995-07-25')});
CREATE (:User {name: 'Linda Garcia', height: 1.64, dateOfBirth: datetime('2000-01-26')});
CREATE (:User {name: 'Barbara Hernandez', height: 1.62, dateOfBirth: datetime('1993-06-30')});
CREATE (:User {name: 'William Young', height: 1.75, dateOfBirth: datetime('1987-04-08')});
CREATE (:User {name: 'Elizabeth Lee', height: 1.60, dateOfBirth: datetime('1994-09-03')});
CREATE (:User {name: 'John Clark', height: 1.78, dateOfBirth: datetime('1983-01-22')});
CREATE (:User {name: 'Jennifer Scott', height: 1.68, dateOfBirth: datetime('1997-08-14')});


// All users with height greater than 1.70
// Variable
WITH 1.70 AS _height
// Query - find users with height > _height
MATCH(u:User) // 12 users
WHERE u.height > _height // 5 users
// Return
RETURN u

// Greater than or equal to 30
WITH 30 AS _age,
datetime() AS now
MATCH(u:User) // 12 users
WHERE date(now).year - u.dateOfBirth.year >= _age
RETURN u

// current_year = 2024
// birth_year = 1990
// current_age = 2024 - 1990 = 34

// Name contains John
WITH 'John' AS _name
MATCH(u:User)
WHERE u.name CONTAINS _name
RETURN u.name

// Delete all data in neo4j
MATCH(n) DETACH DELETE n;