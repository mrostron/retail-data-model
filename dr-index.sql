--
-- Name: pk_categories; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE customers DROP CONSTRAINT pk_customers ;
ALTER TABLE employees DROP CONSTRAINT pk_employees ;
ALTER TABLE stores DROP CONSTRAINT pk_stores ;
ALTER TABLE persons DROP CONSTRAINT pk_persons ;
ALTER TABLE companies DROP CONSTRAINT pk_companies ;
ALTER TABLE sales DROP CONSTRAINT pk_sales ;
ALTER TABLE sale_items DROP CONSTRAINT pk_sale_items ;
ALTER TABLE products DROP CONSTRAINT pk_products ;
ALTER TABLE categories DROP CONSTRAINT pk_categories ;
ALTER TABLE shippers DROP CONSTRAINT pk_shippers ;
ALTER TABLE suppliers DROP CONSTRAINT pk_suppliers ;
ALTER TABLE locations DROP CONSTRAINT pk_locations ;
ALTER TABLE replenishments DROP CONSTRAINT pk_repl;
ALTER TABLE replenishment_items DROP CONSTRAINT pk_repl_items ;


