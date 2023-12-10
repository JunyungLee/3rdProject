--------------------------------------------------------
--  파일이 생성됨 - 화요일-11월-28-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADDRESS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ADDRESS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ASK_NAS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ASK_NAS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ASK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ASK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CART_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."CART_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 125 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COMMUNITY_PICKED_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."COMMUNITY_PICKED_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COMMUNITY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."COMMUNITY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence FAQ_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."FAQ_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INQUIRY_ANS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."INQUIRY_ANS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INQUIRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."INQUIRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OPTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."OPTIONS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ORDER_DETAIL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ORDER_DETAIL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 35 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PICKED_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."PICKED_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_IMAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."PRODUCT_IMAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_INFO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."RECIPE_INFO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ADMIN" 
   (	"ADMIN_ID" VARCHAR2(40 BYTE), 
	"ADMIN_PWD" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ASK
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ASK" 
   (	"ASK_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"ASK_PRIVATE" VARCHAR2(20 BYTE), 
	"ASK_ANSWERED" VARCHAR2(20 BYTE), 
	"ASK_DATE" DATE, 
	"ASK_CATEGORY" VARCHAR2(40 BYTE), 
	"ASK_CONTENT" VARCHAR2(3000 BYTE), 
	"ASK_TITLE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ASK_ANS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ASK_ANS" 
   (	"ASK_ANS_ID" NUMBER(4,0), 
	"ASK_ANS_CONTENT" VARCHAR2(3000 BYTE), 
	"ASK_ANS_DATE" DATE, 
	"ASK_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."CART" 
   (	"CART_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"QUANTITY" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table COMMUNITY
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."COMMUNITY" 
   (	"COMMUNITY_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"COMM_CONTENT" VARCHAR2(4000 BYTE), 
	"COMM_TITLE" VARCHAR2(100 BYTE), 
	"COMM_HIT" NUMBER(10,0), 
	"COMM_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_PICKED
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."COMMUNITY_PICKED" 
   (	"COMM_PICK_ID" NUMBER(4,0), 
	"COMMUNITY_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."FAQ" 
   (	"FAQ_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"FAQ_DATE" DATE, 
	"FAQ_CONTENT" VARCHAR2(3000 BYTE), 
	"FAQ_TITLE" VARCHAR2(100 BYTE), 
	"FAQ_CATEGORY" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table INQUIRY
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."INQUIRY" 
   (	"INQ_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"PRODUCT_ID" NUMBER(4,0), 
	"INQ_PRIVATE" VARCHAR2(20 BYTE), 
	"INQ_ANSWERED" VARCHAR2(20 BYTE), 
	"INQ_DATE" DATE, 
	"INQ_CATEGORY" VARCHAR2(40 BYTE), 
	"INQ_CONTENT" VARCHAR2(3000 BYTE), 
	"INQ_TITLE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table INQUIRY_ANS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."INQUIRY_ANS" 
   (	"ANS_ID" NUMBER(4,0), 
	"ANS_CONTENT" VARCHAR2(3000 BYTE), 
	"ANS_DATE" DATE, 
	"INQ_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."NOTICE" 
   (	"NOTICE_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"NOTICE_DATE" DATE, 
	"NOTICE_CONTENT" VARCHAR2(3000 BYTE), 
	"NOTICE_TITLE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table OPTIONS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."OPTIONS" 
   (	"OPTION_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"OPTION_NAME" VARCHAR2(50 BYTE), 
	"OPTION_PRICE" NUMBER(7,0), 
	"OPTION_STOCK" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ORDERS" 
   (	"ORDER_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"ORDER_STATUS" VARCHAR2(50 BYTE), 
	"ORDER_DATE" DATE, 
	"MEMO" VARCHAR2(200 BYTE), 
	"TOTAL_CNT" NUMBER(3,0), 
	"TOTAL_PRICE" NUMBER(7,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDER_DETAIL
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ORDER_DETAIL" 
   (	"ORDER_DETAIL_ID" NUMBER(4,0), 
	"QUANTITY" NUMBER(3,0), 
	"PRODUCT_PRICE" NUMBER(7,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"OPTION_ID" NUMBER(4,0), 
	"REVIEW_STATUS" VARCHAR2(10 BYTE), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"ORDER_ID" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PICKED
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."PICKED" 
   (	"PICK_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"PRODUCT_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."PRODUCT" 
   (	"PRODUCT_ID" NUMBER(4,0), 
	"SELLER_ID" VARCHAR2(40 BYTE), 
	"BRAND" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"IMAGE" VARCHAR2(100 BYTE), 
	"PRICE" NUMBER(7,0), 
	"DISCOUNT_RATE" NUMBER(3,0), 
	"ACCEPT_DATE" DATE, 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"APPROVAL_STATUS" VARCHAR2(30 BYTE), 
	"PRODUCT_STATUS" VARCHAR2(50 BYTE), 
	"SUBMIT_DATE" DATE, 
	"OPTION_CHECK" VARCHAR2(20 BYTE), 
	"ORIGIN" VARCHAR2(40 BYTE), 
	"MANUFACTURING_DATE" DATE, 
	"EXPIRATION_DATE" DATE, 
	"CAUTION" VARCHAR2(1000 BYTE), 
	"NOTIFICATION" VARCHAR2(3000 BYTE), 
	"CATEGORY_NAME" VARCHAR2(40 BYTE), 
	"STOCK" NUMBER(3,0), 
	"DISCOUNTED_PRICE" NUMBER(7,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT_IMAGE
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."PRODUCT_IMAGE" 
   (	"IMAGE_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"PRODUCT_PHOTO" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table RECIPE_INFO
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."RECIPE_INFO" 
   (	"PIC_ID" NUMBER(4,0), 
	"COMMUNITY_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"RECIPE_PHOTO" VARCHAR2(100 BYTE), 
	"RECIPE_CONTENT" VARCHAR2(4000 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."REVIEW" 
   (	"REVIEW_ID" NUMBER(4,0), 
	"ORDER_DETAIL_ID" NUMBER(4,0), 
	"RATING" NUMBER(2,0), 
	"REVIEW_IMAGE" VARCHAR2(100 BYTE), 
	"REVIEW_CONTENT" VARCHAR2(3000 BYTE), 
	"REVIEW_DATE" DATE, 
	"USER_ID" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SELLER
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."SELLER" 
   (	"SELLER_ID" VARCHAR2(40 BYTE), 
	"COMPANY_NAME" VARCHAR2(50 BYTE), 
	"REPRESENTATIVE" VARCHAR2(40 BYTE), 
	"CUSTOMER_CENTER" VARCHAR2(50 BYTE), 
	"CUSTOMER_EMAIL" VARCHAR2(40 BYTE), 
	"REGISTRATION_NUM" VARCHAR2(50 BYTE), 
	"SELLER_PASSWORD" VARCHAR2(40 BYTE), 
	"SELLER_TYPE" VARCHAR2(20 BYTE), 
	"SELLER_STATUS" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."USERS" 
   (	"USER_ID" VARCHAR2(40 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"USER_PASSWORD" VARCHAR2(100 BYTE), 
	"USER_EMAIL" VARCHAR2(40 BYTE), 
	"USER_BIRTH" VARCHAR2(30 BYTE), 
	"USER_STATUS" VARCHAR2(30 BYTE), 
	"USER_DATE" DATE, 
	"USER_GENDER" VARCHAR2(20 BYTE), 
	"USER_ADDRESS" VARCHAR2(150 BYTE), 
	"USER_PHONENUM" VARCHAR2(50 BYTE)
   ) ;
REM INSERTING into OKITCHEN.ADMIN
SET DEFINE OFF;
REM INSERTING into OKITCHEN.ASK
SET DEFINE OFF;
REM INSERTING into OKITCHEN.ASK_ANS
SET DEFINE OFF;
REM INSERTING into OKITCHEN.CART
SET DEFINE OFF;
Insert into OKITCHEN.CART (CART_ID,PRODUCT_ID,USER_ID,QUANTITY) values (126,1,'skyjn01',1);
REM INSERTING into OKITCHEN.COMMUNITY
SET DEFINE OFF;
REM INSERTING into OKITCHEN.COMMUNITY_PICKED
SET DEFINE OFF;
REM INSERTING into OKITCHEN.FAQ
SET DEFINE OFF;
REM INSERTING into OKITCHEN.INQUIRY
SET DEFINE OFF;
REM INSERTING into OKITCHEN.INQUIRY_ANS
SET DEFINE OFF;
REM INSERTING into OKITCHEN.NOTICE
SET DEFINE OFF;
REM INSERTING into OKITCHEN.OPTIONS
SET DEFINE OFF;
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (1,1,'샤인머스켓 2송이',20000,100);
REM INSERTING into OKITCHEN.ORDERS
SET DEFINE OFF;
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP113','test','cancel',to_date('23/11/26','RR/MM/DD'),'문 앞 자유 출입 가능',2,118000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP762','test','paid',to_date('23/11/26','RR/MM/DD'),'기타장소 기타 장소: 산꼭대기 파란지붕 집 입니다. ',2,116000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP259','test','paid',to_date('23/11/26','RR/MM/DD'),'문 앞 자유 출입 가능',2,116000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP312','test','paid',to_date('23/11/27','RR/MM/DD'),'문 앞 자유 출입 가능',2,54000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP510','test','paid',to_date('23/11/27','RR/MM/DD'),'문 앞 경비실 호출 경비실 호출 방법: 경비실 호출 버튼을 누른 후 402호 라고 말해주세요',2,72000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP916','test','paid',to_date('23/11/27','RR/MM/DD'),' ',2,248000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP409','skyjn01','paid',to_date('23/11/27','RR/MM/DD'),'문 앞 경비실 호출 경비실 호출 방법: 경비실 버튼을 눌러주세요',2,204000);
REM INSERTING into OKITCHEN.ORDER_DETAIL
SET DEFINE OFF;
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (23,5,100000,1,0,null,'test','IMP113');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (24,5,10000,2,0,null,'test','IMP762');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (25,3,20000,3,0,null,'test','IMP762');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (26,5,10000,2,0,null,'test','IMP259');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (27,3,20000,3,0,null,'test','IMP259');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (28,3,10000,5,0,null,'test','IMP312');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (29,3,10000,5,0,null,'test','IMP510');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (30,3,20000,3,0,null,'test','IMP510');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (31,7,30000,4,0,null,'test','IMP916');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (32,10,100000,1,0,null,'test','IMP916');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (33,9,20000,3,0,null,'skyjn01','IMP409');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (34,3,30000,4,0,null,'skyjn01','IMP409');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (22,2,30000,4,0,null,'test','IMP113');
REM INSERTING into OKITCHEN.PICKED
SET DEFINE OFF;
Insert into OKITCHEN.PICKED (PICK_ID,USER_ID,PRODUCT_ID) values (2,'skyjn01',3);
REM INSERTING into OKITCHEN.PRODUCT
SET DEFINE OFF;
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,ORIGIN,MANUFACTURING_DATE,EXPIRATION_DATE,CAUTION,NOTIFICATION,CATEGORY_NAME,STOCK,DISCOUNTED_PRICE) values (1,'1','브랜디','샤인머스켓','1.jpeg',100000,20,to_date('23/11/16','RR/MM/DD'),'내용','승인','전시',to_date('23/11/16','RR/MM/DD'),'Y','미국',to_date('23/11/16','RR/MM/DD'),to_date('23/11/16','RR/MM/DD'),'"주의사항','1','1',80,1000);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,ORIGIN,MANUFACTURING_DATE,EXPIRATION_DATE,CAUTION,NOTIFICATION,CATEGORY_NAME,STOCK,DISCOUNTED_PRICE) values (2,'1','브랜디','명품 곶감','2.jpeg',10000,null,to_date('23/11/16','RR/MM/DD'),'내용','승인','전시',to_date('23/11/16','RR/MM/DD'),'N','미국',to_date('23/11/16','RR/MM/DD'),to_date('23/11/16','RR/MM/DD'),'"주의사항','1','1',95,10000);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,ORIGIN,MANUFACTURING_DATE,EXPIRATION_DATE,CAUTION,NOTIFICATION,CATEGORY_NAME,STOCK,DISCOUNTED_PRICE) values (3,'1','브랜디','휴게소 우동','4.jpeg',20000,null,to_date('23/11/16','RR/MM/DD'),'내용','승인','전시',to_date('23/11/16','RR/MM/DD'),'N','미국',to_date('23/11/16','RR/MM/DD'),to_date('23/11/16','RR/MM/DD'),'"주의사항','1','1',85,100000);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,ORIGIN,MANUFACTURING_DATE,EXPIRATION_DATE,CAUTION,NOTIFICATION,CATEGORY_NAME,STOCK,DISCOUNTED_PRICE) values (4,'1','브랜디','특 A급 소고기','3.jpeg',30000,20,to_date('23/11/16','RR/MM/DD'),'내용','승인','전시',to_date('23/11/16','RR/MM/DD'),'N','미국',to_date('23/11/16','RR/MM/DD'),to_date('23/11/16','RR/MM/DD'),'"주의사항','1','1',90,20000);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,ORIGIN,MANUFACTURING_DATE,EXPIRATION_DATE,CAUTION,NOTIFICATION,CATEGORY_NAME,STOCK,DISCOUNTED_PRICE) values (5,'1','브랜디','간장게장','5.jpeg',10000,20,to_date('23/11/16','RR/MM/DD'),'내용','승인','전시',to_date('23/11/16','RR/MM/DD'),'N','한국',to_date('23/11/16','RR/MM/DD'),to_date('23/11/16','RR/MM/DD'),'"주의사항','1','1',94,30000);
REM INSERTING into OKITCHEN.PRODUCT_IMAGE
SET DEFINE OFF;
REM INSERTING into OKITCHEN.RECIPE_INFO
SET DEFINE OFF;
REM INSERTING into OKITCHEN.REVIEW
SET DEFINE OFF;
REM INSERTING into OKITCHEN.SELLER
SET DEFINE OFF;
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS) values ('1','농심','김서영','010-1122-3333','testtest@test.com','1','1234','개인',null);
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS) values ('user',null,null,null,null,null,null,null,null);
REM INSERTING into OKITCHEN.USERS
SET DEFINE OFF;
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('test','이주녕','1234','test@test.com','20011127','Y',to_date('23/11/16','RR/MM/DD'),'FEMALE',' ','010111111111');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('skyjn01','이주녕','$2a$10$ZAlZ4N.75NL2RViCPZUSNeyGpQtCPkrIwrYTLai5dj.RykNus0wTK','skyjn01@naver.com','2001-11-27','Y',to_date('23/11/27','RR/MM/DD'),'FEMALE','서울 강남구 가로수길 12 1111111111111','01083826875');
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ADMIN_PK" ON "OKITCHEN"."ADMIN" ("ADMIN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ASK_ANS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ASK_ANS_PK" ON "OKITCHEN"."ASK_ANS" ("ASK_ANS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ASK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ASK_PK" ON "OKITCHEN"."ASK" ("ASK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."CART_PK" ON "OKITCHEN"."CART" ("CART_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMMUNITY_PICKED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."COMMUNITY_PICKED_PK" ON "OKITCHEN"."COMMUNITY_PICKED" ("COMM_PICK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMMUNITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."COMMUNITY_PK" ON "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index FAQ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."FAQ_PK" ON "OKITCHEN"."FAQ" ("FAQ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INQUIRY_ANS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."INQUIRY_ANS_PK" ON "OKITCHEN"."INQUIRY_ANS" ("ANS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INQUIRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."INQUIRY_PK" ON "OKITCHEN"."INQUIRY" ("INQ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."NOTICE_PK" ON "OKITCHEN"."NOTICE" ("NOTICE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ORDERS_PK" ON "OKITCHEN"."ORDERS" ("ORDER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_DETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ORDER_DETAIL_PK" ON "OKITCHEN"."ORDER_DETAIL" ("ORDER_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PICKED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PICKED_PK" ON "OKITCHEN"."PICKED" ("PICK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_IMAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PRODUCT_IMAGE_PK" ON "OKITCHEN"."PRODUCT_IMAGE" ("IMAGE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PRODUCT_PK" ON "OKITCHEN"."PRODUCT" ("PRODUCT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RECIPE_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."RECIPE_INFO_PK" ON "OKITCHEN"."RECIPE_INFO" ("PIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."REVIEW_PK" ON "OKITCHEN"."REVIEW" ("REVIEW_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SELLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."SELLER_PK" ON "OKITCHEN"."SELLER" ("SELLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."TABLE1_PK" ON "OKITCHEN"."OPTIONS" ("OPTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."USERS_PK" ON "OKITCHEN"."USERS" ("USER_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ADMIN_ID")
  USING INDEX "OKITCHEN"."ADMIN_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ASK
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ASK" MODIFY ("ASK_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ASK" ADD CONSTRAINT "ASK_PK" PRIMARY KEY ("ASK_ID")
  USING INDEX "OKITCHEN"."ASK_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ASK_ANS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ASK_ANS" MODIFY ("ASK_ANS_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ASK_ANS" ADD CONSTRAINT "ASK_ANS_PK" PRIMARY KEY ("ASK_ANS_ID")
  USING INDEX "OKITCHEN"."ASK_ANS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."CART" MODIFY ("CART_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("CART_ID")
  USING INDEX "OKITCHEN"."CART_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY" MODIFY ("COMMUNITY_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."COMMUNITY" ADD CONSTRAINT "COMMUNITY_PK" PRIMARY KEY ("COMMUNITY_ID")
  USING INDEX "OKITCHEN"."COMMUNITY_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMUNITY_PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" MODIFY ("COMM_PICK_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" ADD CONSTRAINT "COMMUNITY_PICKED_PK" PRIMARY KEY ("COMM_PICK_ID")
  USING INDEX "OKITCHEN"."COMMUNITY_PICKED_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."FAQ" MODIFY ("FAQ_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."FAQ" ADD CONSTRAINT "FAQ_PK" PRIMARY KEY ("FAQ_ID")
  USING INDEX "OKITCHEN"."FAQ_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY" MODIFY ("INQ_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."INQUIRY" ADD CONSTRAINT "INQUIRY_PK" PRIMARY KEY ("INQ_ID")
  USING INDEX "OKITCHEN"."INQUIRY_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INQUIRY_ANS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY_ANS" MODIFY ("ANS_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."INQUIRY_ANS" ADD CONSTRAINT "INQUIRY_ANS_PK" PRIMARY KEY ("ANS_ID")
  USING INDEX "OKITCHEN"."INQUIRY_ANS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."NOTICE" MODIFY ("NOTICE_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NOTICE_ID")
  USING INDEX "OKITCHEN"."NOTICE_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OPTIONS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."OPTIONS" MODIFY ("OPTION_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."OPTIONS" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("OPTION_ID")
  USING INDEX "OKITCHEN"."TABLE1_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ORDER_ID")
  USING INDEX "OKITCHEN"."ORDERS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" MODIFY ("ORDER_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_PK" PRIMARY KEY ("ORDER_DETAIL_ID")
  USING INDEX "OKITCHEN"."ORDER_DETAIL_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PICKED" MODIFY ("PICK_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PICKED" ADD CONSTRAINT "PICKED_PK" PRIMARY KEY ("PICK_ID")
  USING INDEX "OKITCHEN"."PICKED_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("PRODUCT_ID")
  USING INDEX "OKITCHEN"."PRODUCT_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT_IMAGE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT_IMAGE" MODIFY ("IMAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT_IMAGE" ADD CONSTRAINT "PRODUCT_IMAGE_PK" PRIMARY KEY ("IMAGE_ID")
  USING INDEX "OKITCHEN"."PRODUCT_IMAGE_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECIPE_INFO
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."RECIPE_INFO" MODIFY ("PIC_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."RECIPE_INFO" ADD CONSTRAINT "RECIPE_INFO_PK" PRIMARY KEY ("PIC_ID")
  USING INDEX "OKITCHEN"."RECIPE_INFO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."REVIEW" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_ID")
  USING INDEX "OKITCHEN"."REVIEW_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."SELLER" MODIFY ("SELLER_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."SELLER" ADD CONSTRAINT "SELLER_PK" PRIMARY KEY ("SELLER_ID")
  USING INDEX "OKITCHEN"."SELLER_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX "OKITCHEN"."USERS_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ASK
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ASK" ADD CONSTRAINT "ASK_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ASK_ANS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ASK_ANS" ADD CONSTRAINT "ASK_ANS_FK1" FOREIGN KEY ("ASK_ID")
	  REFERENCES "OKITCHEN"."ASK" ("ASK_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."CART" ADD CONSTRAINT "CART_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."CART" ADD CONSTRAINT "CART_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY" ADD CONSTRAINT "COMMUNITY_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" ADD CONSTRAINT "COMMUNITY_PICKED_FK1" FOREIGN KEY ("COMMUNITY_ID")
	  REFERENCES "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" ADD CONSTRAINT "COMMUNITY_PICKED_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."FAQ" ADD CONSTRAINT "FAQ_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY" ADD CONSTRAINT "INQUIRY_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."INQUIRY" ADD CONSTRAINT "INQUIRY_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIRY_ANS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY_ANS" ADD CONSTRAINT "INQUIRY_ANS_FK1" FOREIGN KEY ("INQ_ID")
	  REFERENCES "OKITCHEN"."INQUIRY" ("INQ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."NOTICE" ADD CONSTRAINT "NOTICE_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPTIONS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."OPTIONS" ADD CONSTRAINT "OPTIONS_FK1" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDERS" ADD CONSTRAINT "ORDERS_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK3" FOREIGN KEY ("OPTION_ID")
	  REFERENCES "OKITCHEN"."OPTIONS" ("OPTION_ID") DISABLE;
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK4" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK5" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "OKITCHEN"."ORDERS" ("ORDER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PICKED" ADD CONSTRAINT "PICKED_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."PICKED" ADD CONSTRAINT "PICKED_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT" ADD CONSTRAINT "PRODUCT_FK1" FOREIGN KEY ("SELLER_ID")
	  REFERENCES "OKITCHEN"."SELLER" ("SELLER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_IMAGE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT_IMAGE" ADD CONSTRAINT "PRODUCT_IMAGE_FK1" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_INFO
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."RECIPE_INFO" ADD CONSTRAINT "RECIPE_INFO_FK1" FOREIGN KEY ("COMMUNITY_ID")
	  REFERENCES "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."RECIPE_INFO" ADD CONSTRAINT "RECIPE_INFO_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."REVIEW" ADD CONSTRAINT "REVIEW_FK1" FOREIGN KEY ("ORDER_DETAIL_ID")
	  REFERENCES "OKITCHEN"."ORDER_DETAIL" ("ORDER_DETAIL_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."REVIEW" ADD CONSTRAINT "REVIEW_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
