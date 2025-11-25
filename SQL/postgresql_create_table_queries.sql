CREATE TABLE cities (
id INT PRIMARY KEY,
city TEXT
);

CREATE TABLE restaurant_types(
id INT PRIMARY KEY,
type TEXT
);

CREATE TABLE restaurants (
id INT PRIMARY KEY,
restaurant_name TEXT,
restaurant_type_id INT,
income_percentage NUMERIC,
city_id INT
);

CREATE TABLE members(
id INT PRIMARY KEY,
first_name TEXT,
surname TEXT,
sex TEXT,
email TEXT,
city_id INT,
monthly_budget NUMERIC
);

CREATE TABLE orders(
id INT PRIMARY KEY,
order_date DATE,
hour INT,
member_id INT,
restaurant_id INT,
total_order NUMERIC
);



CREATE TABLE meals(
id INT PRIMARY KEY,
meal_name TEXT,
restaurant_id INT,
meal_type_id INT,
serve_type_id INT,
price NUMERIC
);

CREATE TABLE order_details(
id INT PRIMARY KEY,
order_id INT,
meal_id INT
);

CREATE TABLE meal_types(
id INT PRIMARY KEY,
meal_type TEXT
);

CREATE TABLE serve_types(
id INT PRIMARY KEY,
serve_type TEXT
);

CREATE TABLE monthly_member_totals (
    member_id INT,
    first_name TEXT,
    surname TEXT,
    sex CHAR,
    email TEXT,
    city TEXT,
    year INT,
    month INTL,
    order_count INT,
    meals_count INT,
    monthly_budget NUMERIC,
    total_expense NUMERIC,
    balance NUMERIC,
    commission NUMERIC,
    PRIMARY KEY (member_id, year, month)
);
