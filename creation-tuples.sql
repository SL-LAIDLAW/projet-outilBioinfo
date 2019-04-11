
-----------------------CREATION DES TUPLES-------------------------------

----------------Plant-------------------------------

--insert into plant values ('A1_1',1,5);
\copy plant FROM 'plant.csv' delimiter ',' CSV HEADER;

-----------------Phenotypes--------------------------

--insert into phenotype values (DEFAULT, 0.2 , 5 , 0.45 , 12.3 , 4,56 , 12 , 'A1_1'); 
\copy phenotype FROM 'phenotype.csv' delimiter ',' CSV HEADER;

-----------------boite------------------------

--insert into boite values ('Plate_1','A1_1');
\copy boite FROM 'boite.csv' delimiter ',' CSV HEADER;

-----------------Milieu-------------------------

--insert into milieu values ('Milieu_1','Plate_1');
\copy milieu FROM 'milieu.csv' delimiter ',' CSV HEADER;

-----------------gene-------------------------------

--insert into gene values ('Sex1', TRUE, 0.42);
\copy gene FROM 'gene.csv' delimiter ',' CSV HEADER;


-----------------genotype------------------------

--insert into genotype values ('Sex1', 'A1_1');
\copy genotype FROM 'genotype.csv' delimiter ',' CSV HEADER;



------------------cv--------------------------------

insert into cv values ( DEFAULT, 'http://purl.obolibrary.org/obo/pato.owl' , 'PATO');
insert into cv values ( DEFAULT, 'http://purl.obolibrary.org/obo/po.owl' , 'PO');
insert into cv values ( DEFAULT, 'http://purl.obolibrary.org/obo/flopo.owl', 'FLOPO');	
insert into cv values ( DEFAULT, 'http://purl.obolibrary.org/obo/to.owl', 'TO');
insert into cv values ( DEFAULT, 'Arabidopsis Phenotype Ontology','APO');

------------------cvterm----------------------------

insert into cvterm values (DEFAULT, 5, 'Root Lenght', 'a root lenght (FLOPO_0009325) which is part of a primary root (PO_0020127');
insert into cvterm values (DEFAULT, 5, 'Root Lenght', 'a root lenght (FLOPO_0009325) which is part of a lateral root (PO_0020121');
insert into cvterm values (DEFAULT, 5, 'area', 'an area (PATO_0001323 which is part of the shoot axis (PO_0025029)');
insert into cvterm values (DEFAULT, 5, 'area', 'an area (PATO_0001323) which is part of the root (PO_0009005)');
insert into cvterm values (DEFAULT, 5, 'distance', 'a distance(PATO_000040) between roots (PO_0009005) and hypocotyl (PO_0020100)';
insert into cvterm values (DEFAULT, 4, 'chlorophyll contents', 'Measures the chlorophyll content in a green tissue. Includes both chlorophyll-a and chlorophyll-b. Chlorophyll is the green pigment found in plants.';
insert into cvterm values (DEFAULT, 5, 'curvature', 'a curvature (PATO_0001591) which is part of roots (PO_0009005)');

------------------features--------------------------

insert into features values (DEFAULT, 1, 'PR_lenght', 'APO_000001', 1 );
insert into features values (DEFAULT, 1 , 'LR_lenght', 'APO_000002', 2);
insert into features values (DEFAULT, 1 ,'ShootArea', 'APO_000003',3);
insert into features values (DEFAULT, 1 , 'RootArea', 'APO_000004',4);
insert into features values (DEFAULT, 1 , 'DistanceFromHypocotyl', 'APO_000005',5);
insert into features values (DEFAULT, 1 , 'Chlorophylle','TO_0000495',6);
insert into features values (DEFAULT, 1 , 'Tortuosity', 'APO_000006', 7);