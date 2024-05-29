CREATE TABLE PRODUCT (
    product_id int primary key,
product_namet VARCHAR(50) NOT NULL,
    price NUMERIQUE(10, 2) NOT NULL,
    CONSTRAINT CHK_Price CHECK (Prix >= 0)
);

CREATE TABLE ORDERS (
Customer_ID INT PRIMARY KEY,
    product_id INT  PRIMARY KEY,
    OrderDate DATE,
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
);
CREATE TABLE CUSTOMER (
    Customer_ID INT PRIMARY KEY,
    Customer_name VARCHAR2(50) NOT NULL,

    Tel VARCHAR2(100),
    CONSTRAINT CHK_Tel CHECK (Tel LIKE '%77%.%')
    
);
INSERT INTO PRODUCT (product_id, product_name,Category,price) VALUES ('P01','SAMSUNG_GALASY20','smartphone',3292);
INSERT INTO PRODUCT (product_id, product_name,Category,price) VALUES ('P02','Asus_notebook','PC',4592);
INSERT INTO CUSTOMER (Customer_ID, Customer_nam,Tel,) VALUES ('C01','Ali',71312009);
INSERT INTO CUSTOMER (Customer_ID, Customer_nam,Tel,) VALUES ('C02','Asma',77312009);

