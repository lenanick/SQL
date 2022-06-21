-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s on es.employee_id  = s.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s on es.employee_id  = s.id
where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary 
from employee_salary es 
join salary s on es.salary_id  = s.id  
left join employees e on es.employee_id = e.id 
where employee_name is null; 

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� �������� (�� ����, �� �� ������� ��� � ��������)

select employee_name, monthly_salary 
from employee_salary es 
join salary s on es.salary_id  = s.id  
left join employees e on es.employee_id = e.id 
where employee_name is null and  monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name, employee_id
from employees e 
left join employee_salary es on e.id = es.employee_id 
where employee_id is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.employee_id = r.id ;


--7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name
from employees e 
join roles_employee re on e.id = re.employee_id  
join roles r on re.role_id  = r.id 
where role_name like ('%Java developer%');

--8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name 
from roles r 
join roles_employee re on r.id = re.role_id  
join employees e on re.employee_id  = e.id 
where  role_name like ('%Python developer%');

--9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name 
from roles r 
join roles_employee re on r.id = re.employee_id  
join employees e on re.employee_id  = e.id 
where  role_name like ('%QA%');

--10. ������� ����� � ��������� ������ QA ���������

select employee_name, role_name 
from roles r 
join roles_employee re on r.id = re.role_id  
join employees e on re.employee_id  = e.id 
where  role_name like ('%Manual QA engineer%');

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name 
from roles r 
join roles_employee re on r.id = re.role_id  
join employees e on re.employee_id  = e.id 
where  role_name like ('%Automation QA engineer%');

--12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, role_name
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like ('%Junior%');

--13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary, role_name
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like ('%Middle%');

--14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary, role_name
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like ('%Senior%');

--15. ������� �������� Java �������������

select role_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id  = s.id
where role_name like ('%Java developer%');

--16. ������� �������� Python �������������

select role_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id  = s.id
where role_name like ('%Python developer%');

--17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where role_name like ('Junior Python developer');

-- 18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where role_name like ('Middle JavaScript developer');

--19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where role_name like ('Senior JavaScript developer');

--20. ������� �������� Junior QA ���������

select monthly_salary, role_name
from roles r 
join roles_employee re on r.id  = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%Junior%QA%');

--21. ������� ������� �������� ���� Junior ������������

select avg (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%Junior%');

--22. ������� ����� ������� JS �������������

select sum (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%JavaScript developer%');

--23. ������� ����������� �� QA ���������

select min (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%QA engineer%');

--24. ������� ������������ �� QA ���������

select max (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%QA engineer%');


--25. ������� ���������� QA ���������

select count (role_name) as qa_engineer
from roles r 
join roles_employee re on r.id = re.role_id 
where role_name like ('%QA engineer%');

--26. ������� ���������� Middle ������������.

select count (role_name) as middle_count
from roles r 
join roles_employee re on r.id = re.role_id 
where role_name like ('%Middle%');

-- 27. ������� ���������� �������������

select count (role_name) as developer_count
from roles r 
join roles_employee re on r.id = re.role_id 
where role_name like ('%developer%');

-- 28. ������� ���� (�����) �������� �������������.

select sum(monthly_salary)
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where role_name like ('%developer%');

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
order by monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id  = r.id 
join employee_salary es on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where monthly_salary >=1700 and monthly_salary <= 2300
order by monthly_salary asc;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id  = r.id 
join employee_salary es on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where monthly_salary < 2300
order by monthly_salary asc;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id  = r.id 
join employee_salary es on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where monthly_salary in (1100, 1500, 2000);










