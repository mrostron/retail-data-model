
---------------------------------

CREATE TABLE customers (
    customerid          integer not null default nextval('customer_seq')
   ,locationid          integer not null
   ,companyname         text
   ,contactname         text
   ,contacttitle        text
);

---------------------------------

CREATE TABLE stores (
    storeid            integer not null default nextval('store_seq')
   ,locationid         integer not null
   ,description        text
);

---------------------------------

CREATE TABLE employees (
    employeeid         integer not null default nextval('employee_seq')
   ,storeid            integer not null
   ,lastname           text
   ,firstname          text
   ,title              text
   ,titleofcourtesy    text
   ,birthdate          date
   ,hiredate           date
   ,photo              bytea
   ,notes              text
   ,reportsto          integer
   ,photopath          text
);

---------------------------------

CREATE TABLE sales (
    saleid            integer not null default nextval('sale_seq')
   ,customerid        integer
   ,storeid           integer
   ,employeeid        integer
   ,orderdate         date
   ,requireddate      date
   ,shipperid         integer
   ,shipdate          date
   ,shipcost          numeric
);

---------------------------------

CREATE TABLE sale_items (
    saleid            integer not null
   ,productid         integer not null
   ,unitprice         numeric not null
   ,quantity          integer not null
   ,discount          numeric
);

---------------------------------

CREATE TABLE products (
    productid         integer not null default nextval('product_seq')
   ,productname       text
   ,supplierid        integer
   ,categoryid        integer
   ,quantity          text
   ,unitprice         numeric
);

---------------------------------

CREATE TABLE categories (
    categoryid        integer not null default nextval('category_seq')
   ,categoryname      text
   ,description       text
   ,picture           bytea   -- !!!??
);

---------------------------------

CREATE TABLE shippers (
    shipperid      integer not null default nextval('shipper_seq')
   ,locationid     integer not null
   ,companyname    text
   ,contactname    text
   ,contacttitle   text
);

---------------------------------

CREATE TABLE suppliers (
    supplierid     integer not null default nextval('supplier_seq')
   ,locationid     integer not null
   ,companyname    text
   ,contactname    text
   ,contacttitle   text
   ,homepage       text
);

---------------------------------

CREATE TABLE locations (
    locationid     integer not null default nextval('location_seq')
   ,address        text
   ,city           text
   ,state          text
   ,postalcode     text
   ,country        text
   ,phone          text
);


---------------------------------

CREATE TABLE replenishments (
    replenishmentid   integer not null default nextval('replenishment_seq')
   ,supplierid        integer
   ,storeid           integer
   ,employeeid        integer
   ,orderdate         date
   ,requireddate      date
   ,shipperid         integer
   ,shipdate          date
   ,shipcost          numeric
);

---------------------------------

CREATE TABLE replenishment_items (
    replenishmentid   integer not null
   ,productid         integer not null
   ,unitprice         numeric not null
   ,quantity          integer not null
);



