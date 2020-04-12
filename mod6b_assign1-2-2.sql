/*

	Module Six, Chapter Four Exercises Part B
	Chelsea Smith
	ITSE 2309
	
*/
USE ap_DB;

--1
SELECT dbo.GLAccounts.AccountNo, AccountDescription,  dbo.InvoiceLineItems.InvoiceID
FROM  GLAccounts LEFT OUTER JOIN  InvoiceLineItems
	ON dbo.GLAccounts.AccountNo  = dbo.InvoiceLineItems.AccountNo
WHERE InvoiceID is null

/* I got a different result */


--2
SELECT dbo.Invoices.InvoiceID
FROM dbo.Invoices LEFT OUTER JOIN dbo.InvoiceLineItems
	ON dbo.Invoices.InvoiceID = dbo.InvoiceLineItems.InvoiceID
WHERE dbo.InvoiceLineItems.InvoiceID IS NULL;


--3
SELECT *
FROM dbo.InvoiceLineItems LEFT OUTER JOIN dbo.Invoices
	ON dbo.InvoiceLineItems.InvoiceID = dbo.Invoices.InvoiceID
WHERE dbo.Invoices.InvoiceID IS NULL;

--4
SELECT ContactUpdates.VendorID
FROM ContactUpdates LEFT OUTER JOIN Vendors
	ON ContactUpdates.VendorID = Vendors.VendorID
WHERE Vendors.VendorID IS NULL;
 /* There was none in mine and showed an error message in mine
 
 */

 --5
 
 USE ap_DB;
SELECT Vendors.VendorID, VendorName
FROM Vendors LEFT OUTER JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
WHERE Invoices.VendorID IS NULL;

	
