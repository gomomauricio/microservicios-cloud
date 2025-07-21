
 ----------------Schema--------------
 
--DROP TABLE IF EXISTS products ;
--
--CREATE TABLE products(
--                           id int primary key auto_increment,
--                           name varchar(100) not null,
--                           sku varchar(100) not null,
--                           price bigint ,
--                           description varchar(100) );
-- table company
--DROP TABLE IF EXISTS company ;

CREATE TABLE IF NOT EXISTS company(
                                      id int primary key auto_increment,
                                      name varchar(32) not null,
									  founder varchar(128),
									  logo varchar(255),
									  foundation_date date   );
-- index for name
--create index name_company on company("name");


-- table web site
--DROP TABLE IF EXISTS web_site ;
CREATE TABLE IF NOT EXISTS web_site(
                                        id int primary key auto_increment,
                                        id_company int,
                                        name varchar(32) not null,
									    category varchar(32) not null,
									    description text,
									    foreign key (id_company) references company(id) on delete cascade );



-- 
--  
----------------Data------------- 
--INSERT INTO products (name,sku,price,description) 
--VALUES  ('Sony','sku', 1000,'Lector grafico') ;
----('Andres', 'Guzman', 'Java'),
----('Pepe', 'Doe', 'Python'),
----('John', 'Dow', 'JavaScript'),
----('Maria', 'Roe', 'Java'),
----('Josefa', 'Rae', 'Java') ; 

-- data for companies
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Facebook', 'Mark Zuckerberg', 'facebook.jpg', '2004-02-04');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Google', 'Larry Page', 'google.png', '1998-09-04');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Amazon', 'Jeff Bezos', 'amazon.jpg', '1994-07-05');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Microsoft', 'Bill Gates', 'microsoft.png', '1975-04-04');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Apple', 'Steve Jobs', 'apple.jpg', '1976-04-01');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('TikTok', 'Zhang Yiming', 'tiktok.jpg', '2016-09-05');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('OnlyFans', 'Tim Stokely', 'onlyfans.png', '2016-07-01');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Oracle', 'Lawrence J', 'oracle.png', '1977-06-16');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Cisco', 'Leonard Bosack', 'cisco.png', '1984-12-10');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Samsung', 'Lee Byung-chull', 'samsung.png', '1938-03-01');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Sony', 'Masaru Ibika', 'sony.jpg', '1946-05-07');
INSERT INTO company(name, founder, logo, foundation_date) VALUES('Nintendo', 'Fusajiro', 'nintendo.jpg','1889-09-23');

-- data for web sites
INSERT INTO web_site(id_company, name, category, description)
VALUES(1, 'Facebook', 'SOCIAL_NETWORK', 'Is an American online social media and social networking service owned by Facebook, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(1, 'Instagram', 'SOCIAL_NETWORK', 'Is an American online social media and social networking service owned by Facebook, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(1, 'Whatsapp', 'SERVICES', 'Is an American chat service owned by Facebook, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(2, 'Gmail', 'SERVICES', 'Is an American email service owned by Google, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(2, 'Youtube', 'STREAMING', 'Is an American online streaming service owned by Google, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(2, 'Goggle Cloud Platform', 'CLOUD_COMPUTING', 'Is an American cloud computing service owned by Google, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(3, 'Amazon Store', 'SERVICES', 'Is an American store service owned by Amazon, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(3, 'AWS', 'CLOUD_COMPUTING', 'Is an American online streaming service owned by Amazon, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(3, 'Amazon Prime', 'CLOUD_COMPUTING', 'Is an American online streaming service owned by Amazon, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(4, 'Windows', 'SERVICES', 'Is an American SO owned by Microsoft, Inc.');
INSERT INTO web_site(id_company, name, category, description)
VALUES(4, 'Xbox', 'DEVICES', 'Is a video console');
INSERT INTO web_site(id_company, name, category, description)
VALUES(5, 'Iphone', 'DEVICES', 'Is a product by apple');
INSERT INTO web_site(id_company, name, category, description)
VALUES(5, 'Mac', 'DEVICES', 'Is a product by apple');
INSERT INTO web_site(id_company, name, category, description)
VALUES(5, 'Ipad', 'DEVICES', 'Is a product by apple');
INSERT INTO web_site(id_company, name, category, description)
VALUES(6, 'TikTok', 'STREAMING', 'Is a service streaming');
INSERT INTO web_site(id_company, name, category, description)
VALUES(7, 'OnlyFans', 'SERVICES', 'Is a service streaming');
INSERT INTO web_site(id_company, name, category, description)
VALUES(8, 'Java', 'SERVICES', 'Is a language program');
INSERT INTO web_site(id_company, name, category, description)
VALUES(8, 'OracleCloud', 'CLOUD_COMPUTING', 'Is a cloud computing');
INSERT INTO web_site(id_company, name, category, description)
VALUES(9, 'Cisco networks', 'SERVICES', 'Is a service networks');
INSERT INTO web_site(id_company, name, category, description)
VALUES(10, 'Smartphone', 'DEVICES', 'Is a communication devices');
INSERT INTO web_site(id_company, name, category, description)
VALUES(11, 'Playstation', 'DEVICES', 'Is a video console');
INSERT INTO web_site(id_company, name, category, description)
VALUES(12, 'Nintendo', 'DEVICES', 'Is a video console');


