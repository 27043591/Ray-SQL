CREATE DATABASE Mani
GO

USE Mani
GO

DROP TABLE Observation;
DROP TABLE Species;
DROP TABLE Survey;
DROP TABLE SiteLocation;

CREATE TABLE SiteLocation
(
SiteID int primary key,
SiteName VARCHAR (15),
Locationgo VARCHAR (30),
)


CREATE TABLE Survey
(
SurveyID int Primary key,
SiteID int,
SurveyName VARCHAR (15),
SurveyDate date,
CONSTRAINT Survey_SiteID_fk FOREIGN KEY(SiteID) REFERENCES SiteLocation(SiteID))

CREATE TABLE Species
(
SpeciesID int primary key,
SpeciesName VARCHAR(10) ,
Protected bit,
)



CREATE TABLE Observation
(
SurveyID int,
SpeciesID int,
NumberSceen int,
Confirmed bit,
 CONSTRAINT PK_Observation PRIMARY KEY(SurveyID, SpeciesID),
  CONSTRAINT FK_Survey_Observation FOREIGN KEY(SurveyID) REFERENCES Survey(surveyID),
 CONSTRAINT FK_Species_Observation FOREIGN KEY(SpeciesID) REFERENCES Species(SpeciesID))

 insert into SiteLocation values(0,'mani','ind');
 insert into Survey values(0,0,'mani','2018-5-6');
 insert into Species values(0,'mani',5-6-2015);
 insert into Observation values(0,1,2,3);


 Select * from Survey, Observation,Species,SiteLocation
 go