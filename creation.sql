------Destruction des tables


drop table plant cascade ;
drop table phenotype cascade ;
drop table  boite cascade ;
drop table  milieu cascade ;
drop table  genotype cascade ;
drop table  gene cascade ;
drop table  cv cascade ;
drop table cvterm cascade ;
drop table  features cascade ;




----#----------------------------------------------Creations tables--------------------------------------------#

----###table plant###
create table plant (plant_id varchar(10) not null, primary key (plant_id), grouping int not null, plant_group int not null);

---###table phenotype### PRIMARY KEY A REVOIR!!!
create table phenotype (organism_id serial,primary key (organism_id), ShootArea real,  distFromHypocotyl real,  chlorophyll real, 
						Root_area real, tortuosity real, PR_lenght real, LR_lenght real,
						plant_id varchar(10) not null, constraint ph_fk foreign key (plant_id) references plant (plant_id) on delete cascade INITIALLY DEFERRED);

----###table boite###
create table boite (id_boite int, primary key(id_boite), plate varchar (20) not null, plant_id varchar (10), constraint b_fk foreign key (plant_id) references plant (plant_id) on delete cascade INITIALLY DEFERRED);

----###table milieu###
create table milieu(id_milieu int, primary key(id_milieu), type varchar (150) not null, 
			 id_boite int not null, constraint m_fk foreign key(id_boite) references boite(id_boite) on delete cascade INITIALLY DEFERRED);

----###table genotype###
create table gene(gene_id int not null, primary key(gene_id), gene_name varchar(20), est_mutant boolean);

----###table gene###
create table genotype(gene_id int not null, plant_id varchar(10), 
					constraint geno_pk primary key (gene_id, plant_id), 
					constraint gen_fk foreign key (gene_id) references gene(gene_id) on delete cascade INITIALLY DEFERRED, constraint plant_fk foreign key (plant_id) references plant(plant_id) on delete cascade INITIALLY DEFERRED);




-----##----------Tables Ontologies-----------##

----###table cv###
create table cv(cv_id serial not null, primary key (cv_id), name varchar(255) not null, definition text, constraint cv_c1 unique (name));

----table cvterm###
create table cvterm(cvterm_id serial not null,
    primary key (cvterm_id),
    cv_id int not null,
    constraint cvt_fk foreign key (cv_id) references cv (cv_id) on delete cascade INITIALLY DEFERRED ,
    name varchar(1024) not null,
    definition text);

-----table dbxref?

----table features et features loc?



create table features(feature_id serial not null,
    primary key (feature_id),  organism_id int not null,
    constraint f1_fk foreign key (organism_id) references phenotype (organism_id) on delete cascade INITIALLY DEFERRED,
    name varchar(20),
    uniquename text not null, type_id int not null,
    constraint f2_fk foreign key (type_id) references cvterm (cvterm_id) on delete cascade INITIALLY DEFERRED);
---------table cvrelationship###
--------create table cvreliationship();
