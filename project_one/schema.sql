-- schema (Ian Riley)
CREATE TABLE Users (
  "uid" CHARACTER(5) PRIMARY KEY,
  "name" VARCHAR(64) NOT NULL,
  "gender" CHARACTER(1) NOT NULL CHECK("gender" = 'M' OR "gender" = 'F')
);

CREATE TABLE Friends (
  "uid1" CHARACTER(5) NOT NULL,
  "uid2" CHARACTER(5) NOT NULL,
  FOREIGN KEY ("uid1") REFERENCES Users("uid"),
  FOREIGN KEY ("uid2") REFERENCES Users("uid"),
  CONSTRAINT "fid" PRIMARY KEY("uid1", "uid2"),
  "startdate" DATE
);

CREATE TABLE Comments (
  "cid" INTEGER PRIMARY KEY,
  "poster" CHARACTER(5) NOT NULL,
  "recipient" CHARACTER(5) NOT NULL,
  FOREIGN KEY ("poster") REFERENCES Users("uid"),
  FOREIGN KEY ("recipient") REFERENCES Users("uid"),
  "text" VARCHAR(64) NOT NULL,
  "posttime" TIMESTAMP
);
