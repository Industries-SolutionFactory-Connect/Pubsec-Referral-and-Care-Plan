BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"AccountNumber" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"PersonAssistantName" VARCHAR(255), 
	"PersonAssistantPhone" VARCHAR(255), 
	"PersonBirthdate" VARCHAR(255), 
	"PersonDepartment" VARCHAR(255), 
	"PersonDoNotCall" VARCHAR(255), 
	"PersonEmail" VARCHAR(255), 
	"PersonEmailBouncedDate" VARCHAR(255), 
	"PersonEmailBouncedReason" VARCHAR(255), 
	"PersonHasOptedOutOfEmail" VARCHAR(255), 
	"PersonHasOptedOutOfFax" VARCHAR(255), 
	"PersonHomePhone" VARCHAR(255), 
	"PersonLeadSource" VARCHAR(255), 
	"PersonMailingCity" VARCHAR(255), 
	"PersonMailingCountry" VARCHAR(255), 
	"PersonMailingGeocodeAccuracy" VARCHAR(255), 
	"PersonMailingLatitude" VARCHAR(255), 
	"PersonMailingLongitude" VARCHAR(255), 
	"PersonMailingPostalCode" VARCHAR(255), 
	"PersonMailingState" VARCHAR(255), 
	"PersonMailingStreet" VARCHAR(255), 
	"PersonMobilePhone" VARCHAR(255), 
	"PersonOtherCity" VARCHAR(255), 
	"PersonOtherCountry" VARCHAR(255), 
	"PersonOtherGeocodeAccuracy" VARCHAR(255), 
	"PersonOtherLatitude" VARCHAR(255), 
	"PersonOtherLongitude" VARCHAR(255), 
	"PersonOtherPhone" VARCHAR(255), 
	"PersonOtherPostalCode" VARCHAR(255), 
	"PersonOtherState" VARCHAR(255), 
	"PersonOtherStreet" VARCHAR(255), 
	"PersonTitle" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"IsPersonAccount" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','','','','','','','','','','','','','John','','','Marshal','','','','','','','','False','','','','False','False','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','True');
INSERT INTO "Account" VALUES(2,'','','100000000.0','New York','USA','','','','31349','NY','10 Main Rd.','','(212) 555-5555','','Manufacturing','','','Acme','680','','','','','','False','','','','False','False','','','','','','','','','','','','','','','','','','','','','','(212) 555-5555','','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','Prospect','','False');
INSERT INTO "Account" VALUES(3,'','','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','Founded in March 1999, salesforce.com (http://www.salesforce.com) builds and delivers customer relationship management (CRM) applications as scalable online services. The salesforce.com product suite - Team Edition, Professional Edition, Enterprise Edition, Wireless Edition and Offline Edition - gives companies of all sizes a complete 360-degree view of the customer. The company''s award-winning CRM solutions provide integrated online sales force automation, customer service and support management, and marketing automation applications to help companies meet the complex challenges of global customer communication. Salesforce.com has received considerable recognition in the industry, including Editors'' Choice and two Five-Star ratings from PC Magazine, two Deploy Awards from InfoWorld, Red Herring 100, Upside Hot 100, Investor''s Choice Award from Enterprise Outlook, Editors'' Choice from TMCLabs, Top 10 CRM Implementation from Aberdeen Group, and InfoWorld''s 2001 CRM Technology of the Year. Founded in 1999, salesforce.com is headquartered in San Francisco, with offices in Europe and Asia.','(415) 901-7040','','Technology','','','salesforce.com','','','','','','','False','','','','False','False','','','','','','','','','','','','','','','','','','','','','','(415) 901-7000','','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','','','','Customer','http://www.salesforce.com','False');
INSERT INTO "Account" VALUES(4,'','','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','GBM is the worldwide leader in technology news and information on the Web and the producer of the longest-running and farthest-reaching television shows about technology. GBM''s network of sites combines breakthrough interactive technology with engaging content and design and is consistently ranked as the Internet''s leading content network in terms of both audience size and revenue, serving millions of users each day. The company''s television programming is broadcast by the USA Network and the Sci-Fi Channel to more than 70 million households and is syndicated to broadcast television stations in the nation''s top 120 markets, including the top 10 markets.','','','Media','','','Global Media','14668','','','','','','False','','','','False','False','','','','','','','','','','','','','','','','','','','','','','(905) 555-1212','','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','Prospect','','False');
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
INSERT INTO "AssessmentQuestion" VALUES(1,'Demographic','Text','Sample_Assessment_Question_1','','Sample Assessment Question 1','');
INSERT INTO "AssessmentQuestion" VALUES(2,'Financial','Currency','Sample_Assessment_Question','','Sample Assessment Question','');
CREATE TABLE "Benefit" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"BenefitFrequency" VARCHAR(255), 
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
	PRIMARY KEY (id)
);
INSERT INTO "Benefit" VALUES(1,'True','','Sample Benefit','','','','','','','','1','','1');
CREATE TABLE "BenefitType" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Category" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BenefitType" VALUES(1,'Sample Benefit Type','','','PublicSector');
CREATE TABLE "CarePlan" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"CarePlanTemplateId" VARCHAR(255), 
	"CaseId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CarePlan" VALUES(1,'','','Care Plan New','','Active','1','4');
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
CREATE TABLE "CaseParticipant" (
	id INTEGER NOT NULL, 
	"Role" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"CaseId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CaseParticipant" VALUES(1,'Lawyer','Active','4');
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
	"DoNotCall" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
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
INSERT INTO "Contact" VALUES(1,'','','','','','False','','','','','John','False','False','','','Marshal','','','','','','','','','','','','','','','','','','','','','','','True');
INSERT INTO "Contact" VALUES(2,'','','','','','False','info@salesforce.com','','','(212) 555-5555','Edward','False','False','','','Stamos','','New York City','USA','','','','31349','NY','10 Main Rd.','','New York City','USA','','','','','31349','NY','10 Main Rd.','(212) 555-5555','','President and CEO','False');
INSERT INTO "Contact" VALUES(3,'','','','','','False','info@salesforce.com','','','(212) 555-5555','Howard','False','False','','','Jones','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','Buyer','False');
INSERT INTO "Contact" VALUES(4,'','','','','','False','info@salesforce.com','','','(212) 555-5555','Leanne','False','False','','','Tomlin','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','VP Customer Support','False');
INSERT INTO "Contact" VALUES(5,'','','','','Marc R. Benioff is chairman and CEO of salesforce.com. He founded the company in March 1999 with the idea to create an information utility that would make traditional enterprise software technology and business models obsolete. A veteran of 25 years in the software industry, he is now regarded as a pioneer of "The End Of Software," demonstrating how on-demand applications can replace traditional software to deliver immediate benefit at reduced risk. In May 2003, Benioff was appointed by President George W. Bush as co-chair of the President''s Information Technology Advisory Committee (PITAC), a bi-partisan organization of business leaders and academics charged to advise The President on how to maintain the United States'' preeminent position in information technology.','False','info@salesforce.com','','','(415) 901-7040','Marc','False','False','','','Benioff','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','San Francisco','USA','','','','','94105','CA','The Landmark @ One Market, Suite 300','(415) 901-7000','Mr.','Executive Officer','False');
INSERT INTO "Contact" VALUES(6,'','','','','','False','info@salesforce.com','','','','Geoff','False','False','','','Minor','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','Toronto','Canada','','','','','L4B 1Y3','Ontario','150 Chestnut Street','(415) 555-1212','','President','False');
INSERT INTO "Contact" VALUES(7,'','','','','Carole White is looking at moving forward with our products and will act as the champion for us.','False','info@salesforce.com','','','','Carole','False','False','','','White','Employee Referral','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','','','','','','','(415) 555-1212','','VP Sales','False');
INSERT INTO "Contact" VALUES(8,'','','','','','False','info@salesforce.com','','','(555) 555-1212','Jon','False','False','','','Amos','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','','','','','','','(905) 555-1212','','Sales Manager','False');
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
CREATE TABLE "UnitOfMeasure" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UnitCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "UnitOfMeasure" VALUES(1,'','UOM','Period','UOM');
COMMIT;
