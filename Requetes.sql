---------tentative-------

select ph.plant_id,ph.PR_lenght, f.name, f.uniquename,p.grouping, ct.description 
from phenotype p , features f, cvterm ct, genotype gt, gene g, plant p 
where g.gene_id = gt.gene_id and gt.plant_id = p.plant_id = ph.plant_id and g.est_mutant = TRUE and f.name= 'PR_lenght' and f.type_id = ct.cvterm;