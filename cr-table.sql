
---------------------------------

CREATE TABLE customers (
    customerid          integer not null default nextval('customer_seq')
   ,locationid          integer not null
   ,personid            integer not null
   ,companyid           integer
   ,contactid           integer
   ,contacttitle        text
);

---------------------------------

CREATE TABLE employees (
    employeeid         integer not null default nextval('employee_seq')
   ,personid           integer not null
   ,storeid            integer not null
   ,title              text
   ,hiredate           date
   ,reportsto          integer
);

---------------------------------

CREATE TABLE stores (
    storeid            integer not null default nextval('store_seq')
   ,locationid         integer not null
   ,description        text
);

---------------------------------

CREATE TABLE persons (
    personid           integer not null default nextval('person_seq')
   ,locationid         integer not null
   ,firstname          text
   ,lastname           text
   ,birthdate          date
   ,sex                text
   ,homepage           text
);

---------------------------------

CREATE TABLE companies (
    companyid          integer not null default nextval('company_seq')
   ,locationid         integer not null
   ,companyname        text
   ,homepage           text
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
   ,productname       text    not null
   ,productdesc       text    not null
   ,supplierid        integer not null
   ,categoryid        integer not null
   ,unitprice         numeric
);

---------------------------------

CREATE TABLE categories (
    categoryid        integer not null default nextval('category_seq')
   ,categoryname      text    not null
   ,categoryparent    text    not null
);

---------------------------------

CREATE TABLE shippers (
    shipperid         integer not null default nextval('shipper_seq')
   ,locationid        integer not null
   ,companyid         integer
   ,contactid         integer -- personid
   ,contacttitle      text
);

---------------------------------

CREATE TABLE suppliers (
    supplierid        integer not null default nextval('supplier_seq')
   ,locationid        integer not null
   ,companyid         integer
   ,contactid         integer -- personid
   ,contacttitle      text
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



