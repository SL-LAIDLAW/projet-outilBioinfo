##Destruction des tables
drop table genotype;
drop table gene;
drop table milieu;
drop table boite;
drop table plant;
drop table phenotype;
drop table cv;
drop table cvterm;

#----------------------------------------------Creations tables--------------------------------------------#

###table plant###
create table plant (plant_id varchar(10) not null, primary key (plant_id), grouping int not null, plant_group int not null,);

###table plant### PRIMARY KEY A REVOIR!!!
create table phenotype (ShootArea real, primary key(Shoot_area), distFromHypocotyl real,  chlorophyll real, 
						Root_area real, primary key(Root_area), tortuosity real, PR_lenght real, LR_lenght real),
						plant_id varchar(10) not null, foreign key (plant_id) references plant (plant_id));

###table milieu###
create table boite(plate varchar (20) not null, primary key(plate)
			foreign key (plant_id) references plant (plant_id));

###table Boite###
create table milieu(type varchar (150) not null, primary key(constraint feature_c1 unique (organism_id,uniquename,type_id)type),
			 plate varchar(20) not null, foreign key(plate) references boite(plate));

###table gene###
create table genotype(gene_id varchar(20) not null, plant_id varchar(10), 
					constraint geno_pk primary key (gene_id, plant_id), 
					constraint gen_fk foreign key (gene_id) references gene(gene_id), constraint plant_fk foreign key (plant_id) references plant(plant_id));

###table genotype###
create table gene(gene_id varchar(20) not null, primary key(gene_id), est_mutant boolean; tx_GC real);


##----------Tables Ontologies-----------##

###table cv###
create table cv(cv_id serial not null, primary key (cv_id), name varchar(255) not null, definition text, constraint cv_c1 unique (name));

###table cvterm###
create table cvterm(cvterm_id serial not null,
    primary key (cvterm_id),
    cv_id int not null,
    foreign key (cv_id) references cv (cv_id) ,
    name varchar(1024) not null,
    definition text);

## table dbxref?

## table features et features loc?

create table features(feature_id serial not null,
    primary key (feature_id),  plant_id int not null,
    foreign key (plant_id) references phenotype (plant_id),name varchar(20),
    uniquename text not null, type_id int not null,
    foreign key (type_id) references cvterm (cvterm_id),);
###table cvrelationship###
##create table cvreliationship();