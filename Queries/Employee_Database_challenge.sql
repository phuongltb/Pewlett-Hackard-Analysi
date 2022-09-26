--DELIVERABLE 1 - The Number of Retiring Employees by Title

-- Create a retirement_titles table for employees who are born between 1952 and 1955
select em.emp_no, em.first_name, em.last_name, ti.title, ti.from_date, ti.to_date
into retirement_titles
from employees as em, titles as ti
where em.emp_no = ti.emp_no
and extract(year from em.birth_date) between '1952' and '1955'
order by em.emp_no;

--Create a unique_titles table containing the emp number, first and last name, and most recent title
select distinct on (emp_no) emp_no, first_name, last_name, title
into unique_titles
from retirement_titles
where to_date = '9999-01-01'
order by emp_no, to_date desc;

--Create a retiring_titles table containing the number of titles filled by employees who are retiring
select count(emp_no), title
into retiring_titles
from unique_titles
group by title
order by count(emp_no) desc;

-----------------------------------------------------------------------------------------------------
--DELIVERABLE 2: The Employees Eligible for the Mentorship Program

--Create a Mentorship Eligibility table for current employees who were born in 1965
SELECT distinct on (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date, 
		de.from_date, de.to_date, ti.title
into mentorship_eligibility
from employees as em, dept_emp as de, titles as ti
where em.emp_no = de.emp_no
and em.emp_no = ti.emp_no
and de.to_date = '9999-01-01'
and extract(year from em.birth_date) = '1965'
order by em.emp_no; 

