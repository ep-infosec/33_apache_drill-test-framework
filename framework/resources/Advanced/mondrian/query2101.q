select employee.supervisor_id as c0, employee.employee_id as c1, employee.full_name as c2, employee.marital_status as c3, employee.position_title as c4, employee.gender as c5, employee.salary as c6, employee.education_level as c7, employee.management_role as c8 from employee as employee group by employee.supervisor_id, employee.employee_id, employee.full_name, employee.marital_status, employee.position_title, employee.gender, employee.salary, employee.education_level, employee.management_role order by employee.supervisor_id ASC NULLS FIRST, employee.employee_id ASC NULLS LAST;
