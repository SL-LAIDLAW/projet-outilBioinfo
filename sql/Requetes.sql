
------Recupère l'id des plants ayant un génotype mutant et affiche la longueur de leur racines primaires et l'ontologie associée---------------- 

select ph.plant_id,ph.PR_lenght, f.name, f.uniquename,p.grouping, ct.definition 
from phenotype ph , features f, cvterm ct, genotype gt, gene g, plant p 
where g.gene_id = gt.gene_id and gt.plant_id = p.plant_id and p.plant_id= ph.plant_id and g.est_mutant = TRUE and f.name= 'PR_lenght' and f.type_id = ct.cvterm_id;



---------------Compare l'effet des mutations sur l'entrelacement des racines--------------

select g.gene_name, count(p.grouping)  
from gene g, plant p, genotype gt 
where g.gene_id = gt.gene_id and gt.plant_id = p.plant_id and p.grouping = 1 group by g.gene_name;




-----------Observe le potentiel effet du milieu sur la taille moyenne de l'aire racinaire--------- 

select m.type, avg(ph.Root_area)
from milieu m, boite b, plant p, phenotype ph
where m.id_boite = b.id_boite and b.plant_id = p.plant_id and p.plant_id = ph.plant_id 
group by m.type;

-----------------Affiche l'id de touts les individus sauf ceux Col 0-------------------------

select p.plant_id from plant p, genotype gt,gene g
where g.gene_id = gt.gene_id and gt.plant_id = p.plant_id
EXCEPT
select gt.plant_id from plant p, gene g , genotype gt
where g.gene_id = gt.gene_id and gt.plant_id = p.plant_id and g.gene_name = 'Col_0';

----------------Affiche 

select f.name, f.uniquename,ct.name, ct.definition  from features f, cvterm ct, cv c
where c.cv_id = ct.cv_id and ct.cvterm_id = f.type_id and c.definition ='APO';


