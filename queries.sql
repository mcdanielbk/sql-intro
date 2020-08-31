create table "Employees"(
                                     "FullName"  text  NOT NULL,
                                     "Salery"    int,
                                     "JobPosition" text,
                                     "PhoneExtention" int,
                                     "IsPartTime"  bool
___________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                              VALUES ('HOUSE', 'DOCTOR', TRUE, 900, 773);
                              INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                               VALUES ('DANIEL', 'NURSE', FALSE, 150, 143);
                               INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                               VALUES ('WILLIE', 'GUARD', TRUE, 350, 363);
                               INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                               VALUES ('NATE', 'COOK', TRUE, 600, 943);
                               INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                               VALUES ('DAVID LAZY', 'COOK', FALSE, 200, 113);
                               INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                               VALUES ('RALPH', 'CLEANER', TRUE, 300, 333);
__________________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> select * from "Employees";
+------------+----------+---------------+------------------+--------------+
| FullName   | Salery   | JobPosition   | PhoneExtention   | IsPartTime   |
|------------+----------+---------------+------------------+--------------|
| HOUSE      | 900      | DOCTOR        | 773              | True         |
| DANIEL     | 150      | NURSE         | 143              | False        |
| WILLIE     | 350      | GUARD         | 363              | True         |
| NATE       | 600      | COOK          | 943              | True         |
| DAVID LAZY | 200      | COOK          | 113              | False        |
| RALPH      | 300      | CLEANER       | 333              | True         |
+------------+----------+---------------+---------
__________________________________________________________________________________________________________________________________________________
Byron@(none):CompanyDataBase> select "FullName", "PhoneExtention" from "Employees" where "IsPartTime" = True;
+------------+------------------+
| FullName   | PhoneExtention   |
|------------+------------------|
| HOUSE      | 773              |
| WILLIE     | 363              |
| NATE       | 943              |
| RALPH      | 333              |
+------------+------------------+
SELECT 4

__________________________________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase>  INSERT INTO "Employees" ("FullName", "JobPosition", "IsPartTime", "Salery", "PhoneExtention")
                               VALUES ('GAVIN', 'DEVELOPER', FALSE, 450, 840);
INSERT 0 1
Time: 0.015s
Byron@(none):CompanyDataBase> SELECT * FROM "Employees";
+------------+----------+---------------+------------------+--------------+
| FullName   | Salery   | JobPosition   | PhoneExtention   | IsPartTime   |
|------------+----------+---------------+------------------+--------------|
| HOUSE      | 900      | DOCTOR        | 773              | True         |
| DANIEL     | 150      | NURSE         | 143              | False        |
| WILLIE     | 350      | GUARD         | 363              | True         |
| NATE       | 600      | COOK          | 943              | True         |
| DAVID LAZY | 200      | COOK          | 113              | False        |
| RALPH      | 300      | CLEANER       | 333              | True         |
| GAVIN      | 450      | DEVELOPER     | 840              | False        |
+------------+----------+---------------+------------------+--------------+


____________________________________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> UPDATE "Employees" SET "Salery" = 500 WHERE "JobPosition" = 'COOK';
UPDATE 2
Time: 0.002s
Byron@(none):CompanyDataBase> SELECT * FROM "Employees";
+------------+----------+---------------+------------------+--------------+
| FullName   | Salery   | JobPosition   | PhoneExtention   | IsPartTime   |
|------------+----------+---------------+------------------+--------------|
| HOUSE      | 900      | DOCTOR        | 773              | True         |
| DANIEL     | 150      | NURSE         | 143              | False        |
| WILLIE     | 350      | GUARD         | 363              | True         |
| RALPH      | 300      | CLEANER       | 333              | True         |
| GAVIN      | 450      | DEVELOPER     | 840              | False        |
| NATE       | 500      | COOK          | 943              | True         |
| DAVID LAZY | 500      | COOK          | 113              | False        |
+------------+----------+---------------+------------------+--------------+


___________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> DELETE FROM "Employees" WHERE "FullName" = 'DAVID LAZY';
You're about to run a destructive command.
Do you want to proceed? (y/n): Y
Your call!
DELETE 1

_________________________________________________________________________________________________________________________________________________


Byron@(none):CompanyDataBase> ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" varchar(10);
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.160s
Byron@(none):CompanyDataBase> select * from "Employees";
+------------+----------+---------------+------------------+--------------+---------------+
| FullName   | Salery   | JobPosition   | PhoneExtention   | IsPartTime   | ParkingSpot   |
|------------+----------+---------------+------------------+--------------+---------------|
| HOUSE      | 900      | DOCTOR        | 773              | True         | <null>        |
| DANIEL     | 150      | NURSE         | 143              | False        | <null>        |
| WILLIE     | 350      | GUARD         | 363              | True         | <null>        |
| RALPH      | 300      | CLEANER       | 333              | True         | <null>        |
| GAVIN      | 450      | DEVELOPER     | 840              | False        | <null>        |
| NATE       | 500      | COOK          | 943              | True         | <null>        |
+------------+----------+---------------+------------------+--------------+---------------+
SELECT 6

___________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> create table "Departments"(
                                  "Id"    SERIAL PRIMARY KEY,
                                  "DepartmentName"  text,
                                  "Building"      text
                                 );

___________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

___________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> Create TABLE "Product"(
                                      "Id" serial primary key,
                                      "Price"  float,
                                      "Name"   text,
                                      "Description" text,
                                      "QuantityInStock"   int
                                     );


CREATE TABLE
Time: 0.168s
Byron@(none):CompanyDataBase> create TABLE "Orders"(
                                 "Id" serial primary key,
                                 "OrderNumber" text,
                                 "DatePlaces"  timestamp,
                                 "Email"    text
                                );
CREATE TABLE
Time: 0.159s
Byron@(none):CompanyDataBase>

___________________________________________________________________________________________________________________________________

create table "ProductOrders"(
                                      "Id"  serial primary key,
                                      "OrderQuanity" int,
                                      "OrderId" INTEGER REFERENCES "Orders" ("Id"),
                                      "ProductsId" INTEGER REFERENCES "Product" ("Id")
                                     );

                                     ___________________________________________________________________________________________________________________________________


Byron@(none):CompanyDataBase> SELECT * FROM "Departments"";
unterminated quoted identifier at or near ""Departments"""
LINE 1: SELECT * FROM "Departments""
                      ^

Time: 0.005s
Byron@(none):CompanyDataBase> SELECT * FROM "Departments";
+------+------------------+------------+
| Id   | DepartmentName   | Building   |
|------+------------------+------------|
| 1    | Development      | Main       |
| 2    | Marketing        | North      |
+------+------------------+------------+



____________________________________________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase>  INSERT INTO "Employees" ("FullName", "Salery", "JobPosition", "PhoneExtention", "IsPartTime", "DepartmentId")
                               VALUES ('Tim Smith', 40000, 'Programmer', 123, false, '1');

                               INSERT INTO "Employees" ("FullName", "Salery", "JobPosition", "PhoneExtention", "IsPartTime", "DepartmentId")
                                VALUES ('Barbara Ramesy', 80000, 'Manager', 234, false, '1');

                                INSERT INTO "Employees" ("FullName", "Salery", "JobPosition", "PhoneExtention", "IsPartTime", "DepartmentId")
                                VALUES ('Tom Jones', 32000, 'Admin', 456, true, '2');




INSERT 0 1
INSERT 0 1
INSERT 0 1
Time: 0.008s
Byron@(none):CompanyDataBase> select * from "Employees";
+----------------+----------+---------------+------------------+--------------+---------------+----------------+
| FullName       | Salery   | JobPosition   | PhoneExtention   | IsPartTime   | ParkingSpot   | DepartmentId   |
|----------------+----------+---------------+------------------+--------------+---------------+----------------|
| HOUSE          | 900      | DOCTOR        | 773              | True         | <null>        | <null>         |
| DANIEL         | 150      | NURSE         | 143              | False        | <null>        | <null>         |
| WILLIE         | 350      | GUARD         | 363              | True         | <null>        | <null>         |
| RALPH          | 300      | CLEANER       | 333              | True         | <null>        | <null>         |
| GAVIN          | 450      | DEVELOPER     | 840              | False        | <null>        | <null>         |
| NATE           | 500      | COOK          | 943              | True         | <null>        | <null>         |
| Tim Smith      | 40000    | Programmer    | 123              | False        | <null>        | 1              |
| Barbara Ramesy | 80000    | Manager       | 234              | False        | <null>        | 1              |
| Tim Smith      | 40000    | Programmer    | 123              | False        | <null>        | 1              |
| Barbara Ramesy | 80000    | Manager       | 234              | False        | <null>        | 1              |
| Tom Jones      | 32000    | Admin         | 456              | True         | <null>        | 2              |
+----------------+----------+--

_____________________________________________________________________________________________________________________________________


Time: 0.027s
Byron@(none):CompanyDataBase>  INSERT INTO "Product" ("Price", "Name", "Description", "QuantityInStock")
                               VALUES ( 99.99, 'Flowbee', 'Perfect For Haircuts', 3);

                               INSERT INTO "Product" ("Price", "Name", "Description", "QuantityInStock")
                                VALUES ( 12.45, 'Widget',  'The Original Widget', 100);

_____________________________________________________________________________________________________________________________________

 INSERT INTO "Orders" ("OrderNumber", "DatePlaces", "Email")
                              VALUES ( 'X529', '2020-01-01 16:55:00', 'person@exmaple.com');

_________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> INSERT INTO "ProductOrders"("OrderId", "ProductsId" ,"OrderQuanity")
                              VALUES (1, '1', '3');

__________________________________________________________________________________________________________________________________

 INSERT INTO "ProductOrders"("OrderId", "ProductsId" ,"OrderQuanity")
                              VALUES (1, '2', '2');

_____________________________________________________________________________________________________________________________________

Time: 0.005s
Byron@(none):CompanyDataBase> SELECT "FullName" FROM "Employees" WHERE "DepartmentId" = 1;
+----------------+
| FullName       |
|----------------|
| Tim Smith      |
| Barbara Ramesy |
| Tim Smith      |
| Barbara Ramesy |
| Tim Smith      |
| Barbara Ramesy |
| Tim Smith      |
| Barbara Ramesy |
+----------------+
SELECT 8
Time: 0.010s
___________________________________________________________________________________________________________________________________

 SELECT "Employees"."PhoneExtention"
                               FROM "Employees"
                               JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
                               WHERE "Departments"."DepartmentName" = 'Marketing';
+------------------+
| PhoneExtention   |
|------------------|
| 456              |
| 456              |
| 456              |
+------------------+

Byron@(none):CompanyDataBase> SELECT "OrderId" FROM "ProductOrders" WHERE "ProductsId" = 2;
+-----------+
| OrderId   |
|-----------|
| 1         |
+-----------+

________________________________________________________________________________________________________________________________

Byron@(none):CompanyDataBase> DELETE FROM "ProductOrders" WHERE "ProductId" = 2;