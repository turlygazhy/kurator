;              
CREATE USER IF NOT EXISTS "USER" SALT 'b6509d36e6bfd04e' HASH 'd06314ada153b399aee5eefc9c770eacd43dccbde8fc1076db904561a961df7c' ADMIN;        
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_6C82DF9F_3233_4923_99CA_819D2C459B95" START WITH 1 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_12D223CE_C68F_41F8_940A_BDF8EA97EAD4" START WITH 322 BELONGS_TO_TABLE;               
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B21A6C28_1792_4A42_AA83_8241767ED279" START WITH 3 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B0ABF9C8_DCA7_4C86_AA03_A6EE0879B0BA" START WITH 37 BELONGS_TO_TABLE;
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_57CDD879_C94D_46A7_BD9F_002F353A5880" START WITH 3 BELONGS_TO_TABLE; 
CREATE CACHED TABLE "PUBLIC"."KURATOR"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_12D223CE_C68F_41F8_940A_BDF8EA97EAD4") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_12D223CE_C68F_41F8_940A_BDF8EA97EAD4",
    "TOPIC" TEXT,
    "TEXT" TEXT
);          
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.KURATOR;  
INSERT INTO "PUBLIC"."KURATOR" VALUES
(66, 'fsdaf', 'cvdsf'),
(98, 'dfsaf', 'fdasfd'),
(130, 'fdsafgsdaf', 'gdasfsdagsdagdsf'),
(226, 'yjds', '123123123'),
(290, 'gjfkdls;jgkl', 'jgfklsd;gjkl');             
CREATE CACHED TABLE "PUBLIC"."STUDENT"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_6C82DF9F_3233_4923_99CA_819D2C459B95") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_6C82DF9F_3233_4923_99CA_819D2C459B95",
    "LASTNAME" TEXT,
    "FIRSTNAME" TEXT,
    "PATRONYMIC" TEXT,
    "GENDER" INT,
    "NATIONALITY" TEXT,
    "CITIZENSHIP" TEXT,
    "REGION_MAIN" TEXT,
    "CITY_MAIN" TEXT,
    "ADDRESS_MAIN" TEXT,
    "REGION_ACTUAL" TEXT,
    "CITY_ACTUAL" TEXT,
    "ADDRESS_ACTUAL" TEXT,
    "LIVING_TYPE" INT,
    "DORMITORY_TYPE" INT,
    "SOCIAL_CATEGORY" TEXT,
    "MERRIED" BOOLEAN,
    "CHILD_COUNT" INT,
    "GROUP1" TEXT,
    "PHONE" TEXT
);     
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.STUDENT;  
CREATE CACHED TABLE "PUBLIC"."EVENT"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_B0ABF9C8_DCA7_4C86_AA03_A6EE0879B0BA") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B0ABF9C8_DCA7_4C86_AA03_A6EE0879B0BA",
    "TOPIC" TEXT,
    "TEXT" TEXT
);            
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.EVENT;    
INSERT INTO "PUBLIC"."EVENT" VALUES
(1, STRINGDECODE('\u041c\u0435\u0440\u043e\u043f\u0440\u0438\u044f\u0442\u0438\u0435 1'), STRINGDECODE('\u043b\u0432\u0430\u044b\u043e\u0434\u0432\u0430\u043b\u043e\u044b\u0432\u0434\u0436\u043e\u0430\u043b\u044b\u0432\u043e\u0436\u0430\u043b\u0434\u0436\u044b \u043e\u0432\u043b\u0430\u043e\u0436\u044b\u0432\u043b\u0430\u043e\u044b\u0432 \u0434\u043e\u0430\u043b \u044b\u0432\u0434\u0436\u043e\u0430\u043b\u044b\u0432 \u0434\u0436\u043e\u043b\u0430\r\n        \u0430\u043e\u043b \u044b\u0432\u0434\u0436\u0430\u043e \u043b\u044b\u0432\u0434\u043e\u0430 \u043b\u044b\u0432\u0434\u0436\u043e\u0430\u043b \u0434\u0436\u044b\u0432\u043e\u0430\u043b\u0434 \u043e\u0432\u044b \u0434\r\n        \u0430\u043e \u044b\u0432\u043b\u0434\u0430\u0436 \u043e\u043b\u044b\u0432\u0434 \u043e\u0436\u0430\u043b\u0434\u044b\u0432\u0436\u043e\u0430 \u043b\u044b\u0432\u0434\u0436\u043e\u0430 \u043b\u044b\u0432\u0434\u043e\u0436\u0430 \u0434\u044b\u043b')),
(5, 'name', 'text');          
CREATE CACHED TABLE "PUBLIC"."NOTIFICATION"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_B21A6C28_1792_4A42_AA83_8241767ED279") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B21A6C28_1792_4A42_AA83_8241767ED279",
    "TOPIC" TEXT,
    "TEXT" TEXT
);     
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.NOTIFICATION;             
INSERT INTO "PUBLIC"."NOTIFICATION" VALUES
(1, STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u041c\u0430\u0440\u043a\u0435\u043b\u043e\u0432 \u043a\u0443\u0440\u0438\u043b \u0432 \u0443\u043d\u0438\u0432\u0435\u0440\u0441\u0438\u0442\u0435\u0442\u0435'), STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u041c\u0430\u0440\u043a\u0435\u043b\u043e\u0432 \u043f\u043e\u0439\u043c\u0430\u043d \u043f\u0440\u0438 \u043a\u0443\u0440\u0435\u043d\u0438\u0438 \u0432 \u0442\u0443\u0430\u043b\u0435\u0442\u0435 \u0433\u043b\u0430\u0432\u043d\u043e\u0433\u043e \u043a\u043e\u0440\u043f\u0443\u0441\u0430, \u043f\u0440\u043e\u0441\u0438\u043c \u043f\u0440\u0438\u043d\u044f\u0442\u044c \u043c\u0435\u0440\u044b')),
(2, STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u0418\u0432\u0430\u043d\u043e\u0432 \u043f\u043e\u043b\u0443\u0447\u0438\u043b \u043f\u0435\u0440\u0432\u043e\u0435 \u043c\u0435\u0441\u0442\u043e'), STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u0418\u0432\u0430\u043d\u043e\u0432 \u043f\u043e\u043b\u0443\u0447\u0438\u043b \u043f\u0435\u0440\u0432\u043e\u0435 \u043c\u0435\u0441\u0442\u043e \u0432 \u043e\u0431\u043b\u0430\u0441\u043d\u044b\u0445 \u0441\u043e\u0440\u0435\u0432\u043d\u043e\u0432\u0430\u043d\u0438\u044f\u0445 \u043f\u043e \u0431\u043e\u043a\u0441\u0443'));    
CREATE CACHED TABLE "PUBLIC"."USER"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_57CDD879_C94D_46A7_BD9F_002F353A5880") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_57CDD879_C94D_46A7_BD9F_002F353A5880",
    "USERNAME" TEXT,
    "PASSWORD" TEXT,
    "FULLNAME" TEXT,
    "GROUP1" TEXT,
    "USER_TYPE_ID" INT
);      
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.USER;     
INSERT INTO "PUBLIC"."USER" VALUES
(1, 'user1', '12345', STRINGDECODE('\u0410\u043c\u0438\u0440\u043e\u0432 \u0410\u0437\u0430\u043c\u0430\u0442 \u0416\u0430\u043d\u0431\u043e\u043b\u0430\u0442\u043e\u0432\u0438\u0447'), STRINGDECODE('\u0418\u0421\u041c-18-2'), 1),
(2, 'user2', '12345', STRINGDECODE('\u0437\u0430\u043c \u0434\u0435\u043a\u0430\u043d\u0430 \u043f\u043e \u0412\u0420'), NULL, 2);   
