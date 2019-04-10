
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

insert into cvterm values (DEFAULT, 4, 'Root Lenght', 'a root lenght (FLOPO_0009325) which is part of a primary root (PO_0020127');

------------------features--------------------------

insert into features values (DEFAULT, 1, 'Primary Root lenght', 'APO_000001', 1 );