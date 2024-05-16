
INSERT INTO Team VALUES ('Roar');
INSERT INTO Team VALUES ('Lily');
INSERT INTO Team VALUES ('Saint');

INSERT INTO TeamMember VALUES (120000, 'Luffy', '1994/04/24', 52, '~/images/luffy.jpg');
INSERT INTO TeamMember VALUES (260000, 'Zoro', '1990/07/11', 26, '~/images/Zoro.jpg');
INSERT INTO TeamMember VALUES (550000, 'Nami', '2000/02/15', 42, '~/images/Nami.jpg');
INSERT INTO TeamMember VALUES (112930, 'Aaron', '1934/12/02', 42, '~/images/Aaron.jpg');

INSERT INTO Coach VALUES ( 123948, 'Simon', '1989/10/23');
INSERT INTO Coach  VALUES ( 111143, 'Ryan', '1980/05/12');

INSERT INTO Game VALUES ( '2020/05/01', 'BCstadium', '14:23');
INSERT INTO Game VALUES  ( '2020/05/01', 'BCstadium', '10:00');
INSERT INTO Game VALUES  ( '2020/10/01', 'BCstadium', '10:00');
INSERT INTO Game VALUES  ( '2021/05/01', 'NYstadium', '10:00');
INSERT INTO Game VALUES  ( '1990/05/22', 'Pstadium', '08:00');

INSERT INTO Sponsor VALUES ('Rob Coffin');
INSERT INTO Sponsor VALUES ('Weber');

INSERT INTO Championship VALUES ('NCC', '2020/04/25');
INSERT INTO Championship VALUES ('NCC', '2019/04/25');
INSERT INTO Championship VALUES ('OXG', '2020/10/16');

INSERT INTO TeamMembers_Belong_Team VALUES(120000, 'Roar');
INSERT INTO TeamMembers_Belong_Team VALUES(120000, 'Lily');
INSERT INTO TeamMembers_Belong_Team VALUES(112930, 'Saint');

INSERT INTO TeamMembers_Lead_Match VALUES( 120000, '2020/05/01','BCstadium', '14:23', 'Yes');
INSERT INTO TeamMembers_Lead_Match VALUES( 120000, '2020/05/01', 'BCstadium', '10:00','No');

INSERT INTO TeamMembers_Play_Match VALUES(120000, '2020/05/01','BCstadium', '10:00', 'forward', 2);
INSERT INTO TeamMembers_Play_Match VALUES(120000, '2020/05/01', 'BCstadium', '14:23', 'goalkeeper', 0);


INSERT INTO Coach_At_Team VALUES('Roar', 123948, '2020/04/23', '12:00', '14:00');
INSERT INTO Coach_At_Team VALUES( 'Saint', 123948, '2020/04/23', '15:00', '16:00');


INSERT INTO Coach_Advise_Match VALUES(123948, '2020/05/01', 'BCstadium', '14:23', 'Roar');
INSERT INTO Coach_Advise_Match VALUES(111143, '2020/05/01', 'BCstadium', '14:23', 'Saint');
INSERT INTO Coach_Advise_Match VALUES(123948, '2021/05/01', 'NYstadium', '10:00', 'Saint');

INSERT INTO Team_Won_Championship VALUES('Roar', 'NCC', '2020/04/25', 'gold');
INSERT INTO Team_Won_Championship VALUES('Roar', 'OXG', '2020/10/16', 'gold');

INSERT INTO Team_Sponsors_Match VALUES('Roar', 'Weber', '2020/05/01', 'BCstadium', '14:23');
INSERT INTO Team_Sponsors_Match VALUES('Roar', 'Rob coffin', '2020/05/01', 'BCstadium', '14:23');

INSERT INTO Team_play_match VALUES('Roar', '2020/05/01', 'BCstadium', '14:23', 3);
INSERT INTO Team_play_match VALUES('Roar', '2021/05/01', 'NYstadium', '10:00', 0);
INSERT INTO Team_play_match VALUES('Saint', '2020/05/01','BCstadium', '14:23', 1);

INSERT INTO Championship_Has_Match VALUES('NCC', '2020/04/25', '2021/05/01', 'NYstadium', '10:00');
INSERT INTO Championship_Has_Match VALUES('OXG', '2020/10/16', '2020/05/01', 'BCstadium', '14:23');
INSERT INTO Championship_Has_Match VALUES('OXG', '2020/10/16', '2020/05/01', 'BCstadium', '10:00');
