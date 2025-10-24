select 
    patient_id,
    patient_name,
    conditions
from patients
where conditions like '%DIAB1%'
group by 1, 2, 3
having conditions not like 'SADIAB100' 
    and conditions not like '%+DIAB100';


-- where using (and , and) makes it slow but this code is faster 

-- best way to solve
select 
    patient_id,
    patient_name,
    conditions
from patients
where conditions like 'DIAB1%'
    or conditions like '% DIAB1%';