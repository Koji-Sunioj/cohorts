SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE '/home/kokogabriel/Desktop/first_purchases.csv'
INTO TABLE Wolt.First_Purchases
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r'
IGNORE 1 ROWS
(@first_purchase_date,user_id,purchase_id,venue_id,product_line)
SET first_purchase_date = STR_TO_DATE(@first_purchase_date, '%d.%m.%y');