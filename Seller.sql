CREATE  TABLE seller ( 
	id Integer  NOT NULL AUTO_INCREMENT, 
	name VARCHAR(255) NOT NULL, 
	lastName VARCHAR(255) NOT NULL, 
	PRIMARY KEY(id)); 
	
	SHOW COLUMNS  FROM seller ;
	SHOW FIELDS FROM  seller ; 
	| id | name    | lastname   |
	
+----+---------+------------+
|  2 | Yahya   | Yahya |
|  3 | Jack    | DOOR       |
|  4 | ANTONIO | PEORTA     |
|  5 | Noel    | jose       |
+----+---------+------------+
	
	INSERT INTO seller(name , lastName) VALUES('Yahya' , 'Yahya');
	INSERT INTO seller(name , lastName) VALUES('Jack' , 'DOOR');
	INSERT INTO seller(name , lastName) VALUES('ANTONIO' , 'PEORTA');
	INSERT INTO seller(name , lastName) VALUES('Noel' , 'jose');
	
	
	UPDATE seller 
	SET sellername = 'ZOUHAIR' WHERE id = 3 ; 
	
	DELETE  FROM  seller WHERE id = 1 ;
	--Seller with index  during the creation of the table 
	
	
	CREATE TABLE seller ( 
		id INTEGER NOT NULL AUTO_INCREMENT, 
		name VARCHAR(250) NOT NULL , 
		lastName VARCHAR(255) NOT NULL, 
		PRIMARY KEY(id),
		INDEX index_name (name), 
		INDEX index_lastName(lastName), 
		INDEX index_nameAndLastName(name , lastName)
	)	; 
	
	-- CREATE INDEX  AFTER  CREATION THE TABLE 
	CREATE INDEX  index_name ON seller(name); 
	
	--Composite/Multi-Column Index
	CREATE INDEX index_name_lastName ON seller(name, lastName); 
	 --Unique INDEX 
	 CREATE UNIQUE INDEX uniqueNameIndex ON seller(name); 
	 
	 CREATE FULLTEXT INDEX idx_fulltext_name ON seller(name);
	 
	 ALTER  TABLE seller ADD INDEX index_name(name); 
	 ALTER TABLE seller ADD UNIQUE unique_index_name(name); 
	 
	 --LIST INDEXES
	 SHOW INDEX  FROM  seller; 
	 SHOW KEYS FROM seller; 
	 --MORE INFO 
	 SELECT 
	 	TABLE_NAME, 
	 	COLUMN_NAME, 
	 	INDEX_NAME, 
	 	INDEX_TYPE, 
	 	NON_UNIQUE 
	 FROM INFORMATION_SCHEMA.STATISTICS
	 	WHERE TABLE_NAME = 'seller'
	 	ORDER BY INDEX_NAME, SEQ_IN_INDEX;
	 --DROP INDEX 
	 DROP INDEX index_name ON seller ; 
	 --or 
	 ALTER TABLE seller DROP INDEX indexLastName; 
	 
	 --INDEX  FOR TABLE seller
	 CREATE INDEX index_name_lastname ON seller(name , lastName); 
	 CREATE INDEX index_lastname_name ON  seller(lastName, name); 
	 
	 EXPLAIN SELECT * FROM seller WHERE name = 'Yahya';
	 
	 -- bad design database IMPLEMENTATION
	 CREATE TABLE bad_design (
    order_id INT, --ORDERS
    customer_name VARCHAR(100), --customers
    customer_email VARCHAR(100),
    product_name VARCHAR(100), --PRODUCTS
    product_price DECIMAL(10,2),
    order_date DATE
);
	 
	
	 
	
 
	
	
	
	
	
	
	
)