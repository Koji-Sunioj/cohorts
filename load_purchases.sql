SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE '/home/kokogabriel/Desktop/purchases.csv'
INTO TABLE Wolt.Purchases
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@purchase_date,user_id,purchase_id,venue_id,product_line)
SET first_purchase_date = STR_TO_DATE(@purchase_date, '%d.%m.%y');