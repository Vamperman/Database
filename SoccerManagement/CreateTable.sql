CREATE TABLE Team (
Teamname VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Coach (
CID NUMERIC(6) PRIMARY KEY,
CName VARCHAR(25) ,
CDOB  DATE
);

CREATE TABLE Game (
MDate DATE ,
MLocation VARCHAR(25),
MTime CHAR(5),
PRIMARY KEY ( MTime , MLocation , MDate)
);

CREATE TABLE Sponsor (
CompanyName VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Championship (
ChName VARCHAR(20),
ChDate DATE ,
PRIMARY KEY ( ChName , ChDate)
);

CREATE TABLE TeamMember (
PID NUMERIC(6) PRIMARY KEY,
PName VARCHAR(25)  ,
PDOB  DATE ,
Number NUMERIC(2),
Picture VARCHAR(50)
);


CREATE TABLE TeamMembers_Belong_Team (
PID NUMERIC(6),
Teamname VARCHAR(20),
PRIMARY KEY (PID , Teamname),
FOREIGN KEY (PID) REFERENCES TeamMember(PID) ON DELETE CASCADE,
FOREIGN KEY (Teamname) REFERENCES Team( Teamname) ON DELETE CASCADE
);

CREATE TABLE TeamMembers_Lead_Match (
PID NUMERIC(6),
MDate DATE,
MLocation VARCHAR(25),
MTime CHAR(5),
Captain VARCHAR(3)  NOT NULL,

PRIMARY KEY (PID , MTime , MLocation , MDate),
FOREIGN KEY (PID) REFERENCES TeamMember(PID) ON DELETE CASCADE,
FOREIGN KEY (MTime, MLocation, MDate) REFERENCES Game(MTime, MLocation, MDate) ON DELETE CASCADE
);

CREATE TABLE TeamMembers_Play_Match (
PID NUMERIC(6),
MDate DATE  ,
MLocation VARCHAR(25),
MTime CHAR(5),
Role VARCHAR(25) NOT NULL,
Score NUMERIC(6),
PRIMARY KEY (PID , MDate, MLocation , MTime),
FOREIGN KEY (PID ) REFERENCES TeamMember(PID)  ON DELETE CASCADE,
FOREIGN KEY ( MTime, MLocation, MDate) REFERENCES  Game (  MTime, MLocation, MDate) ON DELETE CASCADE
);

CREATE TABLE Coach_At_Team (
Teamname VARCHAR(20) ,
CID NUMERIC(6),
Date Date,
StartTime CHAR(5),
EndTime CHAR(5),
PRIMARY KEY (Teamname , CID, Date),
FOREIGN KEY (Teamname) REFERENCES Team(Teamname) ON DELETE CASCADE,
FOREIGN KEY ( CID) REFERENCES  Coach (CID) ON DELETE CASCADE
);

CREATE TABLE Coach_Advise_Match (

CID NUMERIC(6),
MDate DATE ,
MLocation VARCHAR(25),
MTime CHAR(5),
Teamname VARCHAR(20),
PRIMARY KEY (CID, Mtime, MLocation, MDate, Teamname),
FOREIGN KEY (Teamname) REFERENCES Team(Teamname) ON DELETE CASCADE,
FOREIGN KEY (CID ) REFERENCES Coach(CID) ON DELETE CASCADE,
FOREIGN KEY ( MTime, MLocation, MDate) REFERENCES  Game (  MTime, MLocation, MDate) ON DELETE CASCADE
);

CREATE TABLE Team_Won_Championship (

Teamname VARCHAR(20) ,
ChName VARCHAR(20) ,
ChDate DATE ,
Medal VARCHAR(10),

PRIMARY KEY ( teamname , ChName , ChDate),

FOREIGN KEY (teamname) REFERENCES Team(teamname) ON DELETE CASCADE,
FOREIGN KEY (ChName, ChDate) REFERENCES Championship(ChName, ChDate) ON DELETE CASCADE
);

CREATE TABLE Team_sponsors_match (

Teamname VARCHAR(20)  ,
CompanyName VARCHAR(20) ,
MDate DATE,

MLocation VARCHAR(25),
MTime CHAR(5),


PRIMARY KEY (Teamname, CompanyName , MTime , MLocation , MDate),
FOREIGN KEY (teamname) REFERENCES Team(teamname) ON DELETE CASCADE,
FOREIGN KEY (CompanyName) REFERENCES Sponsor(CompanyName) ON DELETE CASCADE,
FOREIGN KEY ( MTime, MLocation, MDate) REFERENCES  Game (  MTime, MLocation, MDate) ON DELETE CASCADE
);

CREATE TABLE Team_play_match (

TeamName VARCHAR(20) ,
MDate DATE ,

MLocation VARCHAR(25),
MTime CHAR(5),
Score NUMERIC(5),


PRIMARY KEY ( Teamname , MTime , MLocation , MDate),

FOREIGN KEY (teamname) REFERENCES Team(teamname) ON DELETE CASCADE,
FOREIGN KEY ( MTime, MLocation, MDate) REFERENCES  Game (  MTime, MLocation, MDate) ON DELETE CASCADE
);


CREATE TABLE Championship_Has_Match(
ChName VARCHAR(20),
ChDate DATE ,
MDate DATE ,
MLocation VARCHAR(25),
MTime CHAR(5),

PRIMARY KEY(MDate, MLocation, MTime),
FOREIGN KEY ( MTime, MLocation, MDate) REFERENCES  Game (  MTime, MLocation, MDate) ON DELETE CASCADE,
FOREIGN KEY (ChName, ChDate) REFERENCES Championship(ChName, ChDate) ON DELETE CASCADE
);