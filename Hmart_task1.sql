CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE Categories (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT NOT NULL
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_date DATE,
    total_amount REAL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE OrderDetails (
    order_detail_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);