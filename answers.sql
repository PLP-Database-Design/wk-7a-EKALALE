CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);


INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (103, 'Emily Clark', 'Phone');



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);


INSERT INTO Orders (OrderID, CustomerName) VALUES (101, 'John Doe');
INSERT INTO Orders (OrderID, CustomerName) VALUES (102, 'Jane Smith');
INSERT INTO Orders (OrderID, CustomerName) VALUES (103, 'Emily Clark');

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2);
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (101, 'Mouse', 1);
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (102, 'Tablet', 3);
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (102, 'Keyboard', 1);
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (102, 'Mouse', 2);
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (103, 'Phone', 1);

