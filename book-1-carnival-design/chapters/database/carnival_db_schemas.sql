create table Dealerships (
  dealership_id INT PRIMARY KEY,
  business_name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50),
  website VARCHAR(1000),
  tax_id VARCHAR(50)
);

create table Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone_number VARCHAR(50),
  street VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50),
  zipcode VARCHAR(50),
  company_name VARCHAR(50)
);

create table EmployeeType (
  employee_type_id INT PRIMARY KEY,
  name VARCHAR(20)
);

create table Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email_address VARCHAR(50),
  phone VARCHAR(50),
  dealership_id INT,
  employee_type_id INT,
  FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
  FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id)
);

create table SalesTypes (
  sales_type_id INT PRIMARY KEY,
  type VARCHAR(8)
);



create table VehicleTypes (
  vehicle_type_id INT PRIMARY KEY,
  body_type VARCHAR(5),
  make VARCHAR(50),
  model VARCHAR(50)
);

create table Vehicles (
  vehicle_id INT PRIMARY KEY,
  vin_number VARCHAR(50),
  engine_type VARCHAR(2),
  vehicle_type_id INT,
  exterior_color VARCHAR(50),
  interior_color VARCHAR(50),
  floor_price INT,
  msr_price INT,
  miles_count INT,
  year_of_car INT,
  FOREIGN KEY (vehicle_type_id) REFERENCES vehicleTypes (vehicle_type_id)
);

create table Sales (
  sale_id INT PRIMARY KEY,
  sales_type_id INT,
  vehicle_id INT,
  employee_id INT,
  customer_id INT,
  dealership_id INT,
  price DECIMAL(8,2),
  deposit INT,
  purchase_date DATE,
  pickup_date DATE,
  invoice_number VARCHAR(50),
  payment_method VARCHAR(50),
  FOREIGN KEY (sales_type_id) REFERENCES salesTypes (sales_type_id),
  FOREIGN KEY (vehicle_id) REFERENCES vehicles (vehicle_id),
  FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id)
);




