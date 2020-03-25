;              
CREATE USER IF NOT EXISTS "USER" SALT '1472ccb8e6c0cd52' HASH 'd9b1c606f0cdc22553840e01b93c73a3cc77c1ff70da3e2a84ae695936f0b8b5' ADMIN;        
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_12D223CE_C68F_41F8_940A_BDF8EA97EAD4" START WITH 290 BELONGS_TO_TABLE;               
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B21A6C28_1792_4A42_AA83_8241767ED279" START WITH 3 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B0ABF9C8_DCA7_4C86_AA03_A6EE0879B0BA" START WITH 5 BELONGS_TO_TABLE; 
CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_57CDD879_C94D_46A7_BD9F_002F353A5880" START WITH 2 BELONGS_TO_TABLE; 
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
(259, 'fdsag', 'gfjas;gfkld ;ajd askgl jsdklg;j sdkal; jgfksdal; jfkasd ;jfkl;a jsdkf j;asdkgfasdl; jfks;adj fkl;jasd kfj; sadkfj as;fkasd j;fk asdj;kf jsdl;a jfksda; jfksdj; kf;sdj kfj;asdk fjksd;a jfksd;jfk sdj;ak fjsdal; jfksdaj;f kasd;j fkasdj;k fjsdaklf j;asdkl; jfklsdj;a kfj;sdak fljsdka lj;fkasdl j;fkdls;aj kf;sdjak fj;sdak fjsdkla;f jksdaj; fksdajl; fksdjl;a kfdjl;sk fjsdkl ;jfks ;ajfksd j;afkj;asd klfjsdkl;jf klsdjk fjsdkal ;jfkdlas;j fksdlj;a kfjl;asdk fj;ak sl;djfk sl;');            
CREATE CACHED TABLE "PUBLIC"."USER"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_57CDD879_C94D_46A7_BD9F_002F353A5880") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_57CDD879_C94D_46A7_BD9F_002F353A5880",
    "USERNAME" TEXT,
    "PASSWORD" TEXT,
    "FULLNAME" TEXT,
    "GROUP1" TEXT
);              
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.USER;     
INSERT INTO "PUBLIC"."USER" VALUES
(1, 'user1', '12345', STRINGDECODE('\u0410\u043c\u0438\u0440\u043e\u0432 \u0410\u0437\u0430\u043c\u0430\u0442 \u0416\u0430\u043d\u0431\u043e\u043b\u0430\u0442\u043e\u0432\u0438\u0447'), STRINGDECODE('\u0418\u0421\u041c-18-2'));         
CREATE CACHED TABLE "PUBLIC"."EVENT"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_B0ABF9C8_DCA7_4C86_AA03_A6EE0879B0BA") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B0ABF9C8_DCA7_4C86_AA03_A6EE0879B0BA",
    "TOPIC" TEXT,
    "TEXT" TEXT
);            
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.EVENT;    
INSERT INTO "PUBLIC"."EVENT" VALUES
(1, STRINGDECODE('\u041c\u0435\u0440\u043e\u043f\u0440\u0438\u044f\u0442\u0438\u0435 1'), STRINGDECODE('\u043b\u0432\u0430\u044b\u043e\u0434\u0432\u0430\u043b\u043e\u044b\u0432\u0434\u0436\u043e\u0430\u043b\u044b\u0432\u043e\u0436\u0430\u043b\u0434\u0436\u044b \u043e\u0432\u043b\u0430\u043e\u0436\u044b\u0432\u043b\u0430\u043e\u044b\u0432 \u0434\u043e\u0430\u043b \u044b\u0432\u0434\u0436\u043e\u0430\u043b\u044b\u0432 \u0434\u0436\u043e\u043b\u0430\r\n        \u0430\u043e\u043b \u044b\u0432\u0434\u0436\u0430\u043e \u043b\u044b\u0432\u0434\u043e\u0430 \u043b\u044b\u0432\u0434\u0436\u043e\u0430\u043b \u0434\u0436\u044b\u0432\u043e\u0430\u043b\u0434 \u043e\u0432\u044b \u0434\r\n        \u0430\u043e \u044b\u0432\u043b\u0434\u0430\u0436 \u043e\u043b\u044b\u0432\u0434 \u043e\u0436\u0430\u043b\u0434\u044b\u0432\u0436\u043e\u0430 \u043b\u044b\u0432\u0434\u0436\u043e\u0430 \u043b\u044b\u0432\u0434\u043e\u0436\u0430 \u0434\u044b\u043b'));               
CREATE CACHED TABLE "PUBLIC"."NOTIFICATION"(
    "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_B21A6C28_1792_4A42_AA83_8241767ED279") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_B21A6C28_1792_4A42_AA83_8241767ED279",
    "TOPIC" TEXT,
    "TEXT" TEXT
);     
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.NOTIFICATION;             
INSERT INTO "PUBLIC"."NOTIFICATION" VALUES
(1, STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u041c\u0430\u0440\u043a\u0435\u043b\u043e\u0432 \u043a\u0443\u0440\u0438\u043b \u0432 \u0443\u043d\u0438\u0432\u0435\u0440\u0441\u0438\u0442\u0435\u0442\u0435'), STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u041c\u0430\u0440\u043a\u0435\u043b\u043e\u0432 \u043f\u043e\u0439\u043c\u0430\u043d \u043f\u0440\u0438 \u043a\u0443\u0440\u0435\u043d\u0438\u0438 \u0432 \u0442\u0443\u0430\u043b\u0435\u0442\u0435 \u0433\u043b\u0430\u0432\u043d\u043e\u0433\u043e \u043a\u043e\u0440\u043f\u0443\u0441\u0430, \u043f\u0440\u043e\u0441\u0438\u043c \u043f\u0440\u0438\u043d\u044f\u0442\u044c \u043c\u0435\u0440\u044b')),
(2, STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u0418\u0432\u0430\u043d\u043e\u0432 \u043f\u043e\u043b\u0443\u0447\u0438\u043b \u043f\u0435\u0440\u0432\u043e\u0435 \u043c\u0435\u0441\u0442\u043e'), STRINGDECODE('\u0421\u0442\u0443\u0434\u0435\u043d\u0442 \u0418\u0432\u0430\u043d\u043e\u0432 \u043f\u043e\u043b\u0443\u0447\u0438\u043b \u043f\u0435\u0440\u0432\u043e\u0435 \u043c\u0435\u0441\u0442\u043e \u0432 \u043e\u0431\u043b\u0430\u0441\u043d\u044b\u0445 \u0441\u043e\u0440\u0435\u0432\u043d\u043e\u0432\u0430\u043d\u0438\u044f\u0445 \u043f\u043e \u0431\u043e\u043a\u0441\u0443'));    