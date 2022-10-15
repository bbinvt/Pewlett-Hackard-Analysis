# Pewlett-Hackard Analysis

## Overview of Analysis
#### Purpose
The purpose of this analysis is to help our colleague, Bobbyy in the HR department, better understand the future employee needs of the company. There are many employees that are close to retirement elegibility and the purpose of this analysis is to help him understand how many people are retiring, their titles and departments they will be retiring from, and who can act as mentors to new employees that will be taking over once they retire. 

#### Resources for this Analysis
- The SQL code containing the queries can be ![found here](https://github.com/bbinvt/Pewlett-Hackard-Analysis/blob/bd1650df2ba774b3620090f8d74642b8ad21570c/Quereies/Employee_Database_challenge.sql)
- The data tables produced during this analysis can be as CSV file in the Data directory.

## Results
#### Four Major Points
- There are a total of 72,458 employees elegible for retirement out of a total of 240,124 Active Employees - about 30% of the workforce is elegible for retirement. 
- About 35% of the eligible retirees are Senior Engineers
- About 34% of the eligible retirees are Senior Staff
- There are 1,940 employees that are eligible to be mentors to the 'next generation' of employees. 

![image](https://github.com/bbinvt/Pewlett-Hackard-Analysis/blob/dd90303d26fef3dc2e5854219cefb7cdb941031b/Data/elegible_retirees_by_title.png)

## Summary

##### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- There are a total of 72,458 employees elegible for retirement out of a total of 240,124 Active Employees - about 30% of the workforce is elegible for retirement. In addition, there are a lot of knowledge that will be leaving with them as about 69% of elegible retirees hold "Senior" titles. 

##### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
- There are 1,940 employees that are eligible to be mentors to the 'next generation' of employees.The total count by Title can be seen in the first image below. The second image shows us the total number of active employees by title, including those eligible for retirement and those eligible to mentor.*

##### Image 1: Elegible Mentors by Title
![image](https://github.com/bbinvt/Pewlett-Hackard-Analysis/blob/bd1650df2ba774b3620090f8d74642b8ad21570c/Data/mentorship_elegibility_by_title.png)

##### Image 2: Total Active Employees by Title (including elegible retirees and mentors)
![image](https://github.com/bbinvt/Pewlett-Hackard-Analysis/blob/bd1650df2ba774b3620090f8d74642b8ad21570c/Data/active_employees_by_title.png)

If my analysis is correct and we remove the mentors and elegible retirees  out of the count we have:
- 59,390 Active Senior Engineers - 93 employees / mentor
- 56,475 Active Senior Staff - 90 employees / mentor
- 21,427 Active Engineers - 79 employees / mentor
- 17,677 Active Staff - 82 employees / mentor
- 8,351 Active Technique Leaders - 82 employees / mentor
- 2,399 Active Assitant Engineers - 24 employees / mentor
- 7 Active Managers - No mentors available

Granted not every active employee will need a mentor, however it is doubtful that we have enough mentors in each function to sufficiently service the desired needs. 

*Please see the SQL code ![located here](https://github.com/bbinvt/Pewlett-Hackard-Analysis/blob/bd1650df2ba774b3620090f8d74642b8ad21570c/Quereies/Employee_Database_challenge.sql) and scroll to the bottom to see the additional queries that were used to perform the analysis in the text directly above. 
