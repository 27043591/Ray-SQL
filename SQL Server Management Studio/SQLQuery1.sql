CREATE DATABASE SPJ2
GO

USE SPJ2
GO
DROP TABLE SPJ;
DROP TABLE S;
DROP TABLE P;
DROP TABLE J;

CREATE TABLE S(
S# varchar(2)  NOT NULL,
SNAME varchar(10) NULL,
STATUS int NULL,
CITY varchar(10) NULL,
CONSTRAINT S_S#_pk PRIMARY KEY(S#));

CREATE TABLE P(
P# varchar(2)  NOT NULL,
PNAME varchar(10) NULL,
COLOR varchar(8) NULL,
WEIGHT int NULL,
CITY varchar(10) NULL,
CONSTRAINT P_P#_pk PRIMARY KEY(P#));
/* CREATE TABLE J */
CREATE TABLE J(
J# varchar(2)  NOT NULL,
JNAME varchar(10) NULL,
CITY varchar(10) NULL,
CONSTRAINT J_J#_pk PRIMARY KEY(J#));
/* CREATE TABLE SPJ */
CREATE TABLE SPJ (
	S# varchar(2) NOT NULL,
	P# varchar(2) NOT NULL,
	J# varchar(2) NOT NULL,
	QTY int NULL,
 CONSTRAINT PK_SPJ PRIMARY KEY(S#,P#,J#),
 CONSTRAINT FK_S_SPJ FOREIGN KEY(S#) REFERENCES S(S#),
 CONSTRAINT FK_P_SPJ FOREIGN KEY(P#) REFERENCES P(P#),
 CONSTRAINT FK_J_SPJ FOREIGN KEY(J#) REFERENCES J(J#));

/* INSERT VALUES TO S TABLE */
insert into S values ('s1','Smith',20,'London');
insert into S values ('s2','Jones',10,'Paris');
insert into S values ('s3','Blake',30,'Paris');
insert into S values ('s4','Clark',20,'London');
insert into S values ('s5','Adams',30,'Athens');
/* INSERT VALUES TO P TABLE */
insert into P values ('p1','Nut','Red',12,'London');
insert into P values ('p2','Bolt','Green',17,'Paris');
insert into P values ('p3','Screw','Blue',17,'Rome');
insert into P values ('p4','Screw','Red',14,'London');
insert into P values ('p5','Cam','Blue',12,'Paris');
insert into P values ('p6','Cog','Red',19,'London');
/* INSERT VALUES TO J TABLE */
insert into J values ('j1','Sorter','Paris');
insert into J values ('j2','Punch','Rome');
insert into J values ('j3','Reader','Athens');
insert into J values ('j4','Console','Athens');
insert into J values ('j5','Collator','London');
insert into J values ('j6','Terminal','Oslo');
insert into J values ('j7','Tape','London');



/* INSERT VALUES TO SPJ TABLE */
insert into SPJ values ('s1', 'p1', 'j1',200);
insert into SPJ values ('s1', 'p1', 'j4',700);
insert into SPJ values ('s2', 'p3', 'j1',400);
insert into SPJ values ('s2', 'p3', 'j2',200);
insert into SPJ values ('s2', 'p3', 'j3',200);
insert into SPJ values ('s2', 'p3', 'j4',500);
insert into SPJ values ('s2', 'p3', 'j5',600);
insert into SPJ values ('s2', 'p3', 'j6',400);
insert into SPJ values ('s2', 'p3', 'j7',800);
insert into SPJ values ('s2', 'p5', 'j2',100);
insert into SPJ values ('s3', 'p3', 'j1',200);
insert into SPJ values ('s3', 'p4', 'j2',500);
insert into SPJ values ('s4', 'p6', 'j3',300);
insert into SPJ values ('s4', 'p6', 'j7',300);
insert into SPJ values ('s5', 'p2', 'j2',200);
insert into SPJ values ('s5', 'p2', 'j4',100);
insert into SPJ values ('s5', 'p5', 'j5',500);
insert into SPJ values ('s5', 'p5', 'j7',100);
insert into SPJ values ('s5', 'p6', 'j2',200);
insert into SPJ values ('s5', 'p1', 'j4',100);
insert into SPJ values ('s5', 'p3', 'j4',200);
insert into SPJ values ('s5', 'p4', 'j4',800);
insert into SPJ values ('s5', 'p5', 'j4',400);
insert into SPJ values ('s5', 'p6', 'j4',500);
 
 SELECT * from S