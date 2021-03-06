USE Sales;

CREATE TABLE companies (
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (company_id)
);

-- this is how to DROP the NOT NULL constraint / ADD the NULL constraint
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

-- this is how to ADD the NOT NULL constraint
ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

INSERT INTO companies (headquarters_phone_number, company_name)
VALUES ('+1 (202) 555-0196', 'Company A');



ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;
-- CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;
