/*1*/
SELECT COUNT(CID)
FROM Coach_Advise_Match
WHERE MLocation = 'BCstadium';
/*2*/
SELECT MDate, Mtime
FROM Game
WHERE MLocation = 'BCstadium';
/*3*/
SELECT TeamName, MDate , MLocation
FROM Team_play_match
ORDER BY MLocation;
/*4*/
CREATE VIEW Game_Detail AS 
SELECT TeamName, MDate , MLocation
FROM Team_play_match;
/*5*/
SELECT PName
FROM TeamMember, TeamMembers_Lead_Match
WHERE TeamMember.PID = TeamMembers_Lead_Match.PID AND Captain = 'Yes';
/*6*/
SELECT PName, Teamname
FROM TeamMembers_Belong_Team, TeamMember
WHERE TeamMembers_Belong_Team.PID = TeamMember.PID;
/*7*/
SELECT COUNT(Picture)/COUNT(PID)
FROM TeamMember
WHERE PName IS NOT NULL;
/*8*/
SELECT PID, PName, PDOB
FROM TeamMember
WHERE PName LIKE 'a%' ;
/*9*/
SELECT ChName
FROM Championship
GROUP BY ChName;
/*10*/
UPDATE Championship
SET  ChName = 'WCC'
WHERE ChName = 'NCC'AND ChDate='2019/04/25';
/*11*/
DELETE 
FROM Championship 
WHERE ChName ='AAA';
/*12*/
SELECT AVG(Score)
FROM Team_Play_Match 
WHERE TeamName = 'Roar' ;
/*13*/
SELECT SUM(Score)
FROM Team_play_match
WHERE TeamName = 'Saint';
/*14*/
SELECT TeamName
FROM Team_play_match
WHERE Score BETWEEN 2 AND 5 ;
/*15*/
SELECT MAX(Score) 
FROM TeamMembers_Play_Match;
/*16*/
SELECT PName, Role, MDate, MLocation, Mtime
FROM TeamMember Left JOIN TeamMembers_Play_Match on TeamMember.PID = TeamMembers_Play_Match.PID;
/*17*/
SELECT Medal, Championship.ChName, Team.Teamname
FROM Team_Won_Championship, Team, Championship
WHERE Championship.ChName = Team_Won_Championship.ChName AND Team_Won_Championship.ChDate=Championship.ChDate AND Team.Teamname=Team_Won_Championship.Teamname;
/*18*/
SELECT MDate, MLocation, Role, PName
FROM TeamMember RIGHT JOIN TeamMembers_Play_Match ON TeamMembers_Play_Match.PID = TeamMember.PID;
/*19*/
SELECT CName
FROM Coach
GROUP BY CName;
/*20*/
SELECT CName, Teamname
FROM Coach FULL JOIN Coach_At_Team ON Coach.CID =Coach_At_Team.CID;




