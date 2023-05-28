BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"BillingState" VARCHAR(255),
	"Phone" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"IsPersonAccount" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'John','NY','','','True');
INSERT INTO "Account" VALUES(2,'Acme','NY','(212) 555-5555','Prospect','False');
INSERT INTO "Account" VALUES(3,'salesforce.com','CA','(415) 901-7000','Customer','False');
INSERT INTO "Account" VALUES(4,'Global Media','Ontario','(905) 555-1212','Prospect','False');
CREATE TABLE "AssessmentQuestion" (
	id INTEGER NOT NULL, 
	"QuestionCategory" VARCHAR(255), 
	"DataType" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"FormulaResponseDataType" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RelatedQuestionId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "AssessmentQuestion" VALUES(1,'Demographic','Text','Sample_Assessment_Question_2','','Sample Assessment Question 1','');
INSERT INTO "AssessmentQuestion" VALUES(2,'Financial','Currency','Sample_Assessment_Question','','Sample Assessment Question','');
CREATE TABLE "Program" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"StartDate" VARCHAR(255),
	PRIMARY KEY (id)
);
INSERT INTO "Program" VALUES(1,'Sample Program','2023-05-18');
CREATE TABLE "Benefit" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"BenefitStatus" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDateTime" VARCHAR(255), 
	"EnrollmentCount" VARCHAR(255), 
	"MaxBenefitAmount" VARCHAR(255), 
	"MinBenefitAmount" VARCHAR(255), 
	"StartDateTime" VARCHAR(255),  
	"BenefitTypeId" VARCHAR(255), 
	"GoalDefinitionId" VARCHAR(255), 
	"UnitId" VARCHAR(255), 
	"ProgramId" VARCHAR(255),
	PRIMARY KEY (id)
);
INSERT INTO "Benefit" VALUES(1,'True','Sample Benefit','','','','','','','','1','','1','1');
CREATE TABLE "UnitOfMeasure" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UnitCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "UnitOfMeasure" VALUES(1,'UOM','Period','UOM');
CREATE TABLE "BenefitType" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 	 
	"Category" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"UnitofMeasureId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BenefitType" VALUES(1,'Sample Benefit Type','None','','PublicSector','1');
CREATE TABLE "CaseParticipant" (
	id INTEGER NOT NULL, 
	"Role" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"CaseId" VARCHAR(255), 
	"ParticipantId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CaseParticipant" VALUES(1,'Lawyer','Active','4','1');
CREATE TABLE "CarePlan" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"CarePlanTemplateId" VARCHAR(255), 
	"CaseId" VARCHAR(255), 
	"ParticipantId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CarePlan" VALUES(1,'','','Care Plan New','','Active','1','4','1');
CREATE TABLE "CarePlanTemplate" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CarePlanTemplate" VALUES(1,'','Care Plan Template','Published');
CREATE TABLE "Case" (
	id INTEGER NOT NULL, 
	"Comments" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"IsEscalated" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"SuppliedCompany" VARCHAR(255), 
	"SuppliedEmail" VARCHAR(255), 
	"SuppliedName" VARCHAR(255), 
	"SuppliedPhone" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"wkdw__TicketCategory__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Case" VALUES(1,'','','False','','Phone','High','Instructions not clear','New','Sample Case 2: The widgets we received are the wrong size.','','','','','','','','2','2','');
INSERT INTO "Case" VALUES(2,'','','False','','Phone','Low','','On Hold','Sample Case 3: Cannot track our order.','','','','','','','','2','2','');
INSERT INTO "Case" VALUES(3,'','','False','','Phone','High','','Escalated','Sample Case: Our Widgets have not been delivered.','','','','','','','','4','8','');
INSERT INTO "Case" VALUES(4,'','','False','','Web','Medium','','New','Sample Case','','','','','Problem','','0129A000002yVYwQAM','','','');
CREATE TABLE "Case_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVYwQAM','IT');
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVYxQAM','HR_Benefits');
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVYyQAM','HR_Employee_Relations');
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVZ0QAM','HR_Onboarding');
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVZ1QAM','HR_Payroll');
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVZ2QAM','HR_General');
INSERT INTO "Case_rt_mapping" VALUES('0129A000002yVZ3QAM','HR_Leave');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"AssistantName" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"FirstName" VARCHAR(255),
	"HomePhone" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingGeocodeAccuracy" VARCHAR(255), 
	"MailingLatitude" VARCHAR(255), 
	"MailingLongitude" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"OtherCity" VARCHAR(255), 
	"OtherCountry" VARCHAR(255), 
	"OtherGeocodeAccuracy" VARCHAR(255), 
	"OtherLatitude" VARCHAR(255), 
	"OtherLongitude" VARCHAR(255), 
	"OtherPhone" VARCHAR(255), 
	"OtherPostalCode" VARCHAR(255), 
	"OtherState" VARCHAR(255), 
	"OtherStreet" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"IsPersonAccount" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'','','','','','','','','','John','','','Marshal','','','','','','','','','','','','','','','','','','','','','','','True');
INSERT INTO "Contact" VALUES(2,'','','','','','info@salesforce.com','','','(212) 555-5555','Edward','','','Stamos','','New York City','USA','','','','31349','NY','10 Main Rd.','','New York City','USA','','','','','31349','NY','10 Main Rd.','(212) 555-5555','','President and CEO','False');
INSERT INTO "Contact" VALUES(3,'','','','','','info@salesforce.com','','','(212) 555-5555','Howard','','','Jones','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','Buyer','False');
INSERT INTO "Contact" VALUES(4,'','','','','','info@salesforce.com','','','(212) 555-5555','Leanne','','','Tomlin','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','VP Customer Support','False');
INSERT INTO "Contact" VALUES(5,'','','','','Marc R. Benioff is chairman and CEO of salesforce.com. He founded the company in March 1999 with the idea to create an information utility that would make traditional enterprise software technology and business models obsolete. A veteran of 25 years in the software industry, he is now regarded as a pioneer of "The End Of Software," demonstrating how on-demand applications can replace traditional software to deliver immediate benefit at reduced risk. In May 2003, Benioff was appointed by President George W. Bush as co-chair of the President''s Information Technology Advisory Committee (PITAC), a bi-partisan organization of business leaders and academics charged to advise The President on how to maintain the United States'' preeminent position in information technology.','info@salesforce.com','','','(415) 901-7040','Marc','','','Benioff','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','San Francisco','USA','','','','','94105','CA','The Landmark @ One Market, Suite 300','(415) 901-7000','Mr.','Executive Officer','False');
INSERT INTO "Contact" VALUES(6,'','','','','','info@salesforce.com','','','','Geoff','','','Minor','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','Toronto','Canada','','','','','L4B 1Y3','Ontario','150 Chestnut Street','(415) 555-1212','','President','False');
INSERT INTO "Contact" VALUES(7,'','','','','Carole White is looking at moving forward with our products and will act as the champion for us.','info@salesforce.com','','','','Carole','','','White','Employee Referral','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','','','','','','','(415) 555-1212','','VP Sales','False');
INSERT INTO "Contact" VALUES(8,'','','','','','info@salesforce.com','','','(555) 555-1212','Jon','','','Amos','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','','','','','','','(905) 555-1212','','Sales Manager','False');
CREATE TABLE "GoalDefinition" (
	id INTEGER NOT NULL, 
	"Category" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UsageType" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "GoalDefinition" VALUES(1,'','','Sample Goal Definition','Active','Individual','');
COMMIT;
