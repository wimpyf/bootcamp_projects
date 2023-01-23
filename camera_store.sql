CREATE TABLE customerID(
  customer_id INI,
  firstname TEXT,
  lastname TEXT,
  PRIMARY KEY(customer_id)
);

CREATE TABLE paymentID(
  payment_id INI,
  payment_type TEXT,
  PRIMARY KEY(payment_id)
);

CREATE TABLE itemID(
  item_id TEXT,
  item_name TEXT,
  item_type TEXT,
  item_condition TEXT,
  item_price REAL,
  PRIMARY KEY(item_id)
);

CREATE TABLE myItems(
  order_id INI,
  order_date TEXT,
  order_quantity INI,
  item_id TEXT,
  customer_id INI,
  payment_id INI,
  amount REAL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (item_id) REFERENCES itemID(item_id)
  FOREIGN KEY (customer_id) REFERENCES customerID(customer_id)
  FOREIGN KEY (payment_id) REFERENCES paymentID (payment_id)
);

INSERT INTO customerID VALUES
  (001001, 'Douge', 'Polez'),
  (001002, 'Frank', 'Peterson'),
  (001003, 'Fernando', 'Almeida'),
  (001004, 'Martha', 'Brown'),
  (001005, 'Ellie', 'Sullivan'),
  (001006, 'Fynn', 'Sampio'), 
  (001007, 'Camille', 'Bernard'),
  (001008, 'Marc', 'Fernandes'),
  (001009, 'Diego', 'Taylor'),
  (0010010, 'Emma', 'Watson'),
  (0010011, 'Puja', 'Srivastana'),
  (0010012, 'Mecan', 'Thomas'),
  (0010013, 'Roes', 'Domual'),
  (0010014, 'Phil', 'Hughes'),
  (0010015, 'Wyatt', 'Girard'),
  (0010016, 'Lucas', 'Mancini'),
  (0010017, 'Hann', 'Quates'),
  (0010018, 'Smith', 'Chu'),
  (0010019, 'Julia', 'Barnett'),
  (0010020, 'Kat', 'Chase');

INSERT INTO paymentID VALUES
  (01, 'CASH'),
  (02, 'QR CODE'),
  (03, 'CREDIT CARD'),
  (04, 'Installment 0% 10month');

INSERT INTO itemID VALUES
  ('NFB00001', 'Nikon F', 'SLR (Camera)', 'Near Mint', 7500),
  ('RTS00001', 'Rolleiflex 2.8F', 'TRL (Camera)', 'Excellent', 35000),
  ('NSS00002', 'Nikon S', 'Rangefinder (Camera)', 'Near Mint', 148000),
  ('CZS00001', 'Cotax IIa', 'Rangefinder (Camera)', 'Mint', 14100),
  ('NFB00003', 'Nikon F2', 'SLR (Camera)', 'Excellent', 9900),
  ('LMB00001', 'Leica M6', 'Rangefinder (Camera)', 'Like New', 165000),
  ('BVB00001', 'Voigtländer BessaL',  'Rangefinder (Camera)', 'Mint', 6000),
  ('KKS00001', 'KONICA III', 'Rangefinder (Camera)', 'Excellent', 5300),
  ('OPB00001', 'Olympus PEN', 'Half Frame (Camera)', 'Near Mint', 12000),
  ('OOS00002', 'Olympus OM-1', 'SLR (Camera)', 'Good', 5500),
  ('OOB00003', 'Olympus OM-2N', 'SLR (Camera)', 'Excellent', 8000),
  ('OMB00004', 'Olympus mju panorama', 'Point&Shoot (Camera)', 'Near Mint', 7000),
  ('PEB00001', 'PENTAX Espio mini 75Years', 'Point&Shoot (Camera)', 'Near Mint', 9500),
  ('PKS00002', 'PENTAX KM', 'SLR (Camera)', 'Near Mint', 5500),
  ('PMB00003', 'PENTAX MX', 'SLR (Camera)', 'Mint', 7000),
  ('PLB00004', 'PENTAX LX', 'SLR (Camera)', 'Mint', 22000), 
  ('PSS00005', 'PENTAX Spotmatic', 'SLR (Camera)', 'Near Mint', 4500),
  ('LPW00001', 'SMC PENTAX 6×7 55mm f/4', 'Wide Angle (Lens)', 'Near Mint', 8000),
  ('LMS00002', 'MINOLTA MC ROKKOR PG 58mm f/1.2 MF', 'Standard (Lens)', 'Near Mint', 17000),
  ('LOW00003', 'Olympus OM-SYSTEM G.Zuiko Auto-W 21mm f/3.5', 'Wide Angle (Lens)', 'Near Mint', 12000),
  ('LOM00004', 'Olympus OM-System G. Zuiko Auto-S 55mm f/1.2 MF Prime', 'Macro/Close Up (Lens)', 'Near Mint', 12500),
  ('LOW00005', 'Olympus OM-SYSTEM ZUIKO SHIFT 35mm f/2.8 MF', 'Wide Angle (Lens)', 'Near Mint', 9500),
  ('LOS00006', 'Olympus OM-System G.Zuiko Auto-S 55mm f1.2 ', 'Standard (Lens)', 'Near Mint', 11500),
  ('LPS00007', 'PENTAX SMC 50mm f/1.2 K Mount', 'Standard (Lens)', 'Near Mint', 10000), 
  ('LPS00008', 'SMC Pentax 50mm f1.2 Pentax', 'Standard (Lens)', 'Near Mint', 12500);

INSERT INTO myItems VALUES
  (202208010001, '2022-08-01', 1, 'OOB00003', 001001, 03, 8000),
  (202208010002, '2022-08-01', 1, 'LOS00006', 001001, 03, 11500),
  (202208010003, '2022-08-01', 1, 'OOB00003', 001002, 03, 8000),
  (202208010004, '2022-08-01', 1, 'LOS00006', 001003, 03, 11500),
  (202208010005, '2022-08-01', 1, 'PMB00003', 001004, 02, 7000),
  (202208020001, '2022-08-02', 1, 'LMB00001', 001001, 03, 165000),
  (202208020002, '2022-08-02', 1, 'NSS00002', 001001, 04, 148000),
  (202208020003, '2022-08-02', 1, 'KKS00001', 001007, 02, 5300),
  (202208020004, '2022-08-02', 1, 'NFB00001', 001008, 04, 7500),
  (202208020005, '2022-08-02', 1, 'PEB00001', 001009, 03, 9500),
  (202208020006, '2022-08-02', 1, 'OMB00004', 0010010, 02, 7000),
  (202208030001, '2022-08-03', 1, 'LOW00003', 0010014, 04, 12000),
  (202208030002, '2022-08-03', 1, 'PKS00002', 0010012, 03, 5500),
  (202208030003, '2022-08-03', 1, 'OOS00002', 0010020, 03, 5500),
  (202208030004, '2022-08-03', 1, 'LOS00006', 0010014, 03, 11500),
  (202208030005, '2022-08-03', 1, 'PEB00001', 0010019, 03, 9500),
  (202208030006, '2022-08-03', 1, 'RTS00001', 0010015, 03, 35000);


.mode markdown
.header on

.print รายชื่อลูกค้าและรายละเอียด
SELECT 
  m.order_id,
  m.order_date,
  c.customer_id,
  c.firstname, 
  c.lastname,
  i.item_name,
  p.payment_type,
  m.amount
FROM myItems AS m
JOIN customerID AS c ON c.customer_id = m.customer_id 
JOIN itemID AS i ON i.item_id = m.item_id 
JOIN paymentID AS p ON p.payment_id = m.payment_id
ORDER BY firstname; 


.print จำนวนลูกค้าทั้งหมดที่ซื้อสินค้า
WITH sub AS (
  SELECT 
  order_date AS Date,
  firstname,
  lastname ,
  item_name AS Product,
  item_price AS Price,
  order_quantity AS Quantity,
  amount
FROM myItems
JOIN customerID ON customerID.customer_id = myItems.customer_id
JOIN itemID ON myItems.item_id = itemID.item_id
ORDER BY firstname
)
SELECT COUNT(*) FROM sub;

.print Who ordered Olympus (camera or lens) ?
SELECT 
    c.customer_id AS ID,
    c.firstname AS FirstName,
    c.lastname AS LastName,
    i.item_name AS Product,
    m.order_quantity AS Quantity
FROM myItems AS m
JOIN customerID AS c ON c.customer_id = m.customer_id
JOIN itemID AS i ON i.item_id = m.item_id
JOIN paymentID AS p ON p.payment_id = m.payment_id
WHERE i.item_name LIKE 'O%';
  
.print มีกี่คนที่ซื้อกล้อง Olympus(camera or Lens)?
SELECT COUNT(*) FROM(
  SELECT 
      c.customer_id AS ID,
      c.firstname AS FirstName,
      c.lastname AS LastName,
      i.item_name AS Product,
      m.order_quantity AS Quantity
  FROM myItems AS m
  JOIN customerID AS c ON c.customer_id = m.customer_id
  JOIN itemID AS i ON i.item_id = m.item_id
  JOIN paymentID AS p ON p.payment_id = m.payment_id
  WHERE i.item_name LIKE 'O%'
  );

.print มีกี่คนที่ซื้อกล้อง Pentax(camera or Lens)?
with sub AS (
  SELECT 
    order_id, 
    firstname, lastname, 
    item_name, 
    item_price 
  FROM myItems
  JOIN customerID ON customerID.customer_id = myItems.customer_id
  JOIN itemID ON myItems.item_id = itemID.item_id
  WHERE item_name LIKE 'P%'
)

SELECT COUNT(*) FROM sub;


.print What type of items from my store?
SELECT DISTINCT item_type AS ProductType FROM itemID;


.print มีสินค้าอะไรบ้าง?
SELECT item_name AS ProductName FROM itemID;

.print ใครบ้างที่ผ่อนสินค้า 0% 10เดือน
SELECT 
    m.order_date AS Date,
    c.firstname AS FirstName,
    c.lastname AS Lastname,
    i.item_name AS Product,
    p.payment_type AS Payment,
    i.item_price AS Price
FROM myItems AS m 
JOIN customerID AS c ON c.customer_id = m.customer_id
JOIN itemID AS i ON i.item_id = m.item_id
JOIN paymentID AS p ON p.payment_id = m.payment_id
WHERE p.payment_type = 'Installment 0% 10month'
ORDER BY i.item_price DESC;

.print มีกี่คนใช้บัตรเครดิตจ่าย?
WITH sub AS (
  SELECT 
      m.order_date AS Date,
      c.firstname AS FirstName,
      c.lastname AS Lastname,
      i.item_name AS Product,
      p.payment_type AS Payment,
      i.item_price AS Price
  FROM myItems AS m 
  JOIN customerID AS c ON c.customer_id = m.customer_id
  JOIN itemID AS i ON i.item_id = m.item_id
  JOIN paymentID AS p ON p.payment_id = m.payment_id
  WHERE p.payment_type = 'CREDIT CARD'
  ORDER BY i.item_price DESC
)
SELECT COUNT(*) FROM sub;

.print ใครที่ซื้อกล้อง Pentax KM ?
SELECT 
    m.order_id AS oderID, 
    c.firstname, 
    c.lastname, 
    i.item_name AS ProductName, 
    i.item_type AS Type,
    i.item_price AS Price
FROM myItems AS m
JOIN customerID AS c ON c.customer_id = m.customer_id
JOIN itemID AS i ON m.item_id = i.item_id
WHERE item_name = 'PENTAX KM';

.print ลูกค้าคนไหนที่ซื้อของเยอะที่สุด
SELECT
  c.customer_id AS ID,
  c.firstname, 
  c.lastname, 
  COUNT(order_quantity) AS total
  FROM myItems AS m
  JOIN customerID AS c ON c.customer_id = m.customer_id 
  JOIN itemID AS i ON i.item_id = m.item_id 
  GROUP BY firstname  
  ORDER BY COUNT(order_quantity) DESC
  LIMIT 1;


.print รายได้รวมทั้งหมด
WITH sub AS (
  SELECT 
    order_date AS Date,
    firstname,
    lastname ,
    item_name AS Product,
    item_price AS Price,
    order_quantity AS Quantity,
    amount
  FROM myItems
  JOIN customerID ON customerID.customer_id = myItems.customer_id
  JOIN itemID ON myItems.item_id = itemID.item_id
  ORDER BY firstname
)
SELECT SUM(amount) FROM sub;

.print รายได้ของวันที่ 2022-08-02
SELECT SUM(amount) FROM (
  SELECT 
      customerID.firstname,
      customerID.lastname,
      amount 
  FROM myItems
  JOIN customerID ON customerID.customer_id = myItems.customer_id
  WHERE STRFTIME('%Y-%m-%d', order_date) = '2022-08-02' 
  ORDER BY firstname
);

.print รายได้รวมของเดือนสิงหาคม
SELECT SUM(amount) FROM(  
  SELECT 
      customerID.firstname,
      customerID.lastname,
      amount 
  FROM myItems
  JOIN customerID ON customerID.customer_id = myItems.customer_id
  WHERE STRFTIME('%Y-%m', order_date) = '2022-08' 
);
