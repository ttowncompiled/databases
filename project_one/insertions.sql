INSERT INTO Users (uid, name, gender)
VALUES (00001, 'Ruby', 'F');
INSERT INTO Users (uid, name, gender)
VALUES (00002, 'Weiss', 'F');
INSERT INTO Users (uid, name, gender)
VALUES (00003, 'Blake', 'F');
INSERT INTO Users (uid, name, gender)
VALUES (00004, 'Yang', 'F');
INSERT INTO Users (uid, name, gender)
VALUES (00005, 'Jaune', 'M');
INSERT INTO Users (uid, name, gender)
VALUES (00006, 'Nora', 'F');
INSERT INTO Users (uid, name, gender)
VALUES (00007, 'Pyrrha', 'F');
INSERT INTO Users (uid, name, gender)
VALUES (00008, 'Ren', 'M');
INSERT INTO Users (uid, name, gender)
VALUES (00009, 'Sun', 'M');
INSERT INTO Users (uid, name, gender)
VALUES (00010, 'Neptune', 'M');

INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00001, 00002, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00002, 00001, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00001, 00003, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00003, 00001, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00001, 00004, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00004, 00001, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00002, 00003, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00003, 00002, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00002, 00004, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00004, 00002, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00003, 00004, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00004, 00003, '01-JAN-2015');

INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00005, 00006, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00006, 00005, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00005, 00007, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00007, 00005, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00005, 00008, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00008, 00005, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00006, 00007, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00007, 00006, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00006, 00008, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00008, 00006, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00007, 00008, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00008, 00007, '01-JAN-2015');

INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00009, 00010, '01-JAN-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00010, 00009, '01-JAN-2015');

INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00003, 00009, '01-FEB-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00009, 00003, '01-FEB-2015');

INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00004, 00010, '01-FEB-2015');
INSERT INTO Friends (uid1, uid2, startdate)
VALUES (00010, 00004, '01-FEB-2015');
