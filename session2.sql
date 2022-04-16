--SELECT name 
--FROM tracks 
--WHERE Composer = 'Jimi Hendrix';

-- SELECT InvoiceId, InvoiceDate, total 
-- FROM invoices 
-- WHERE total > 10 
-- LIMIT 4;

-- SELECT * 
-- FROM invoices  
-- WHERE total > 10 
-- ORDER BY InvoiceDate DESC 
-- LIMIT 10;

-- SELECT CustomerId, InvoiceDate, BillingCity, total 
-- FROM invoices
-- ORDER BY BillingCity ASC, total DESC;
-- 

SELECT * FROM invoices WHERE NOT BillingCountry = 'USA' ORDER BY total DESC;

SELECT * FROM invoices WHERE BillingCountry='USA' OR BillingCountry='Germany' ORDER BY InvoiceId ASC; 

/* invoices tablosunda fatura tarihi (InvoiceDate) 01-01-2012 ile 02-01-2013 
tarihleri arasındaki faturaların tüm bilgilerini listeleyiniz (sondaki 00:00:00 koymazsam son row cikmiyor 83 te kaliyor */ (

SELECT * 
FROM invoices
WHERE InvoiceDate >= '2012-01-01' AND InvoiceDate <= '2013-01-02 00:00:00';


SELECT * 
FROM invoices
WHERE InvoiceDate BETWEEN '2012-01-01' AND '2013-01-02 00:00:00'; -- burda da ayni mantik son saati koymalisin son row dahil olmasi icin 

/* invoices tablosunda fatura tarihi (InvoiceDate) 2009 ila 2011 tarihleri arasındaki
en yeni faturayı listeleyen sorguyu yazınız */ 

SELECT * 
FROM invoices
WHERE InvoiceDate 
BETWEEN '2009-01-01' AND '2011-12-31 00:00:00' 
ORDER by InvoiceDate DESC 
LIMIT 1;

/* customers tablosunda Belgium, Norway veya  Canada ,USA  ülkelerinden sipariş veren
müşterilerin FirstName, LastName, country bilgilerini listeyiniz	*/

SELECT FirstName, LastName, country
FROM customers
WHERE country IN ('USA', 'Belgium', 'Norway', 'Canada');



