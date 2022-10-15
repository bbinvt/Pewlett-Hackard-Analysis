-- Deliverable 1: Number of Retiring Employees by Title

SELECT  e.emp_no,
        e.first_name,
        e.last_name,
        t.title,
        t.from_date,
        t.to_date
--INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Deliverable 1 part II: Finding unique titles

SELECT DISTINCT ON (emp_no) emp_no,
		first_name, 
		last_name,
		title
--INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no;

-- Deliverable 1 part III: Count of Retiring Titles

SELECT COUNT(title), title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Deliverable 2: Mentorship Eligibility
SELECT DISTINCT ON(e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
--INTO mentorship_elegibility
FROM employees AS e
LEFT OUTER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Additional Queries to help interpret analysis

-- Total Active employees:
SELECT  e.emp_no,
        e.first_name,
        e.last_name,
        t.title,
        t.from_date,
        t.to_date
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (t.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Mentorship Eligibility by title
SELECT COUNT(title), title
INTO mentorship_titles
FROM mentorship_elegibility
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Active Titles
SELECT COUNT(title), title
INTO active_titles
FROM active_employees
GROUP BY title
ORDER BY COUNT(title) DESC;