
CREATE TABLE customers_table2 (
    CustomerID INT PRIMARY KEY,           -- Unique identifier for each customer
    CustomerName VARCHAR(100) NOT NULL,   -- Name of the customer
    ContactName VARCHAR(100),             -- Name of the contact person
    Address VARCHAR(255),                 -- Address of the customer
    City VARCHAR(100),                    -- City of the customer
    PostalCode VARCHAR(20),               -- Postal code (using VARCHAR to accommodate non-numeric codes)
    Country VARCHAR(100)                  -- Country of the customer
);

INSERT INTO customers_table2 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) 
VALUES 
    (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
    (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
    (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
    (5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
    (6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
    (7, 'Bon app', 'Laurence Lebihan', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
    (8, 'Bottom-Dollar Markets', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
    (9, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
    (10, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
    (11, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
    (12, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
    (13, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
    (14, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
    (15, 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
    (16, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
    (17, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
    (18, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
    (19, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
    (20, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
    (21, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
    (22, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
    (23, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
    (24, 'Frigorífico del Nordeste', 'Felipe Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
    (25, 'Furia Bacalhau e Frutos do Mar', 'Sérgio Furia', 'Jardim das rosas, 32', 'Lisboa', '1756', 'Portugal'),
    (26, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
    (27, 'Godos Cocina Típica', 'José Pedro Saavedra', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
    (28, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '13070-232', 'Brazil'),
    (29, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
    (30, 'GROSELLA-Restaurantes', 'Manuel Robles', 'Calle Dr. Giné, 2', 'Valencia', '46007', 'Spain'),
    (31, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05452-090', 'Brazil'),
    (32, 'HILARION-Abastos', 'Rafael Ordoñez', 'Av. Liberdade, 450', 'Lisboa', '1500', 'Portugal'),
    (33, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
    (34, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', 'NULL', 'Ireland'),
    (35, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
    (36, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
    (37, 'La corne d\'abondance', 'Laurence Lebihan', '67, avenue de Malakoff', 'Paris', '75016', 'France'),
    (38, 'La maison d\'Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
    (39, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
    (40, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA');

