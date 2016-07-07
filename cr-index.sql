
ALTER TABLE ONLY customers            ADD CONSTRAINT pk_customers    PRIMARY KEY (customerid);
ALTER TABLE ONLY employees            ADD CONSTRAINT pk_employees    PRIMARY KEY (employeeid);
ALTER TABLE ONLY stores               ADD CONSTRAINT pk_stores       PRIMARY KEY (storeid);
ALTER TABLE ONLY persons              ADD CONSTRAINT pk_persons      PRIMARY KEY (personid);
ALTER TABLE ONLY companies            ADD CONSTRAINT pk_companies    PRIMARY KEY (companyid);
ALTER TABLE ONLY sales                ADD CONSTRAINT pk_sales        PRIMARY KEY (saleid);
ALTER TABLE ONLY sale_items           ADD CONSTRAINT pk_sale_items   PRIMARY KEY (saleid, productid);
ALTER TABLE ONLY products             ADD CONSTRAINT pk_products     PRIMARY KEY (productid);
ALTER TABLE ONLY categories           ADD CONSTRAINT pk_categories   PRIMARY KEY (categoryid);
ALTER TABLE ONLY shippers             ADD CONSTRAINT pk_shippers     PRIMARY KEY (shipperid);
ALTER TABLE ONLY suppliers            ADD CONSTRAINT pk_suppliers    PRIMARY KEY (supplierid);
ALTER TABLE ONLY locations            ADD CONSTRAINT pk_locations    PRIMARY KEY (locationid);
ALTER TABLE ONLY replenishments       ADD CONSTRAINT pk_repl         PRIMARY KEY (replenishmentid);
ALTER TABLE ONLY replenishment_items  ADD CONSTRAINT pk_repl_items   PRIMARY KEY (replenishmentid, productid);

