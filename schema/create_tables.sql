CREATE TABLE "sales" (
  "SPID" text,
  "GeoID" text,
  "PID" text,
  "SaleDate" timestamp without time zone,
  "Amount" integer,
  "Customers" integer,
  "Boxes" integer
);
CREATE TABLE "products" (
  "PID" varchar(6) NOT NULL,
  "Product" text,
  "Category" text,
  "Size" text,
  "Cost_per_box" double precision,
  PRIMARY KEY ("PID")
);
CREATE TABLE "people" (
  "Salesperson" text,
  "SPID" varchar(6) NOT NULL,
  "Team" text,
  "Location" text,
  PRIMARY KEY ("SPID")
);
CREATE TABLE "geo" (
  "GeoID" varchar(4) NOT NULL,
  "Geo" text,
  "Region" text,
  PRIMARY KEY ("GeoID")
);

