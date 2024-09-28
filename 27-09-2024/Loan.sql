CREATE DATABASE FINANCE;
USE FINANCE;
CREATE TABLE LOANS(
					AccNo int auto_increment not null, 
                    Cust_Name varchar(100),
                    Loan_Amount int,
                    Instalment int, 
                    Int_Rate float, 
                    Start_Date date,
                    Interest int
                    ) ;
                    
SELECT * FROM LOANS;

SELECT AccNo, Cust_Name,Loan_Amount FROM LOANS;

SELECT * FROM LOANS WHERE Instalment<40;

SELECT Acc_No,Loan_Amount FROM LOANS WHERE Start_Date<'2009-04-01';

SELECT Acc_No,Loan_Amount FROM LOANS WHERE Start_Date>'2009-04-019';

SELECT * FROM LOANS WHERE Int_Rate IS NULL;

SELECT * FROM LOANS WHERE Int_Rate IS NOT NULL;

SELECT DISTINCT Loan_Amount FROM LOANS;

SELECT DISTINCT Insatlment FROM LOANS;

SELECT * FROM LOANS WHERE Start_Date>'2008-12-31' AND Instalment>36;

SELECT Cust_Name FROM LOANS WHERE Instalment !=36;

SELECT Cust_Name,Loan_Amount FROM LOANS WHERE Loan_Amount<500000 OR Int_Rate>12;

SELECT * FROM LOANS WHERE Loan_Amount>=400000 AND Loan_Amount<=500000;

SELECT * FROM LOANS WHERE Int_Rate>=11 AND Int_Rate<=12;

SELECT Cust_Name,Loan_Amount FROM LOANS WHERE Insatlemnt IN(24,36,48);

SELECT Acc_No,Cust_Name,Loan_Amount FROM LOANS WHERE Cust_Name LIKE '%Sharma';

SELECT Acc_No,Cust_Name,Loan_Amount FROM LOANS WHERE Cust_Name LIKE '%a';

SELECT Acc_No,Cust_Name,Loan_Amount FROM LOANS WHERE Cust_Name LIKE '%a%';

SELECT Acc_No,Cust_Name,Loan_Amount FROM LOANS WHERE Cust_Name NOT LIKE '%P%';

SELECT Acc_No,Cust_Name,Loan_Amount FROM LOANS WHERE Cust_Name LIKE '%a_';

SELECT * FROM LOANS ORDER BY Loan_Amount ASC;

SELECT * FROM LOANS ORDER BY Start_Date DESC ;

UPDATE LOANS SET Int_Rate=11.50 WHERE Int_rate=NULL;

UPDATE LOANS SET Int_Rate=Int_Rate+00.50 WHERE Loan_Amount>400000;

UPDATE LOANS SET Interest =(Loan_Amount*Int_Rate*Instalments)/12*100;

DELETE FROM LOANS WHERE Cust_Name="K.P. Jain";

ALTER TABLE LOANS ADD COLUMN Category char(1);

SELECT SUM(Loan_Amount) FROM LOANS WHERE Interest>10;

SELECT MAX(Interest) FROM LOANS;

SELECT COUNT(Cust_Name) WHERE Cust_Name LIKE "%Sharma";

SELECT COUNT(Cust_Name) WHERE Interest IS NULL;

SELECT Cust_Name,Int_Rate,Interest FROM LOANS;

SELECT Cust_Name,Int_Rate,Interest FROM LOANS WHERE Instalment>=10;

