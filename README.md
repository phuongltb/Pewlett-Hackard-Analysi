# Pewlett-Hackard-Analysi
Performing an analysis on the Employee Database with SQL

## Overview of the analysis
The purpose of this analysis is to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program to help managers to prepare for their staffing as many current employees reach retirement age. Those employees who were born between 1952 and 1955 are counted as retiring employees.

## Results
- A retirement_titles table for employees who are born between January 1, 1952 and December 31, 1955 is created and exported to retirement_titles.csv

![image](https://user-images.githubusercontent.com/110554264/192356440-6f4abb2c-4320-4c8a-9387-3eb94ea5e619.png)

- A unique_titles table that contains the employee number, first and last name, and most recent title is created and exported to unique_titles.csv

![image](https://user-images.githubusercontent.com/110554264/192356569-31750f40-1261-4ba6-9efd-23fe5affd72d.png)

- A retiring_titles table that contains the number of titles filled by employees who are retiring is created and exported to retiring_titles.csv

![image](https://user-images.githubusercontent.com/110554264/192356693-8067fcc1-750d-43b0-99d8-89632540b7ff.png)

- A Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965 is created and exported to mentorship_eligibilty.csv

![image](https://user-images.githubusercontent.com/110554264/192356819-2dbf74ef-c649-4e7c-912c-95a96004da01.png)


### Summary
- There are 72,458 roles that will need to be filled as the "silver tsunami" begins to make an impact. The table below, which is retrived from retiring_titles table, provides more insight into the upcoming "silver tsunami."

  ![image](https://user-images.githubusercontent.com/110554264/192351088-15c7959b-a434-49e7-b189-2a0e71f58e7d.png)
  
- For the mentoring program:
  * In order to determine whether the qualified retirement-ready employees in the departments are enough or not to mentor the next generation of Pewlett Hackard           employees, we run the queries below:

    ![image](https://user-images.githubusercontent.com/110554264/192349678-92f8c731-ecf8-4541-8e32-2174c7c42087.png)
  
    ![image](https://user-images.githubusercontent.com/110554264/192351088-15c7959b-a434-49e7-b189-2a0e71f58e7d.png)

    The result from this query shows that there are not enough qualified retirement-ready employees across the company to mentor the next generation of Pewlett Hackard     employees. For example, there are 3,603 qualified Technical Leaders while there are 25,916 Senior Engineers need to be mentored.

  * The following query calculates the number of qualified retirement-ready employees for each department and title:

    ![image](https://user-images.githubusercontent.com/110554264/192349728-b69c0211-b358-43b2-a73c-01f7b118c671.png)
 
    The result from this query suggests that there are not enough qualified retirement-ready employees in particular departments to mentor the next generation of           Pewlett Hackard employees. For example:
    
      ** Customer Service department: there are only 545 Senior Engineers who are about to retire while there are 564 Engineers and 64 Assistant Engineers need to be mentored
      
      ** Research department: there are 664 Senior Engineers who are about to retire while there are 701 Engineers and 96 Assistant Engineers need to be mentored
  
      ![image](https://user-images.githubusercontent.com/110554264/192351927-733ea334-d3a8-4aea-af0f-7cd1968860f1.png)

      ** Quality Management department: there are only 399 Technical Leaders who are about to retire while there are 2,874 Senior Engineers need to be mentored
  
      ![image](https://user-images.githubusercontent.com/110554264/192348070-94b3b5ea-b581-4444-89b6-15f6119af377.png)


  
  
  
