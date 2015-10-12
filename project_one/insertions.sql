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

INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (0, 00001, 00001, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (1, 00001, 00002, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (2, 00001, 00003, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (3, 00001, 00004, 'I love my sister', '01-JUN-2015 08:01:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (4, 00001, 00005, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (5, 00001, 00006, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (6, 00001, 00007, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (7, 00001, 00008, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (8, 00001, 00009, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (9, 00001, 00010, 'OMG school is awesome', '01-JUN-2015 08:00:00.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (10, 00004, 00001, 'uhhh', '01-JUN-2015 08:01:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (11, 00008, 00009, 'how are you', '01-JUN-2015 09:01:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (12, 00008, 00009, 'uhhh dude', '01-JUN-2015 10:01:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (13, 00009, 00008, 'just out of class, you', '01-JUN-2015 11:01:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (14, 00009, 00010, 'he wont stop texting', '01-JUN-2015 12:01:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (15, 00010, 00009, 'just talk to him', '01-JUN-2015 12:10:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (16, 00004, 00003, 'we are going to be best friends', '01-JUN-2015 12:15:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (17, 00003, 00004, 'uhhh', '01-JUN-2015 12:20:15.00');
INSERT INTO Comments (cid, poster, recipient, text, posttime)
VALUES (18, 00003, 00009, 'want to hang out', '01-JUN-2015 12:30:00.00');
