# Pewlett-Hackard-Analysis
## Overview of Project
Pewlett Hackard is a large company boasting several thousand employees, and it's been around for a long time. Bobby is an up-and-coming HR analyst and needs to perform employee research. He is trying to find answers for - who will be retiring in the next few years? And how many positions will Pewlett Hackard need to fill?  This analysis will help future-proof Pewlett Hackard by generating a list of all employees eligible for the retirement package and which positions will need to be filled in the near future. 

The data is in the below CSV files -

* Departments

* Dept_emp

* Dept_manager 

* Employees

* Salaries 

* Titles 

Below SQL concepts used to perform the analysis:

1.  Data relationships 

2.  Database Keys (Primary and Foregin keys) 

3.  Entity Relationships

4.  Import / Export data

5.  Join the tables (Inner, Left, Right and Full outer Joins) 

6.  Count, Group By and Order By concepts. 


### Analysis Results: 
Created above tables based on the Entity Relationship Diagram (ERD) by considering primary and foreign keys. 

![Screen Shot 2022-10-10 at 12 50 43 AM](https://user-images.githubusercontent.com/44387918/194824649-0354a282-63d8-48f2-97a1-e44946bc2018.png)

* Total current employees count: **300024**

    ![Screen Shot 2022-10-10 at 12 20 12 AM](https://user-images.githubusercontent.com/44387918/194824706-2a929e8a-88ef-4a0a-b540-dfaaf6fbc000.png)


* Total retirement employees count: **72458**  

    ![Screen Shot 2022-10-10 at 12 00 53 AM](https://user-images.githubusercontent.com/44387918/194824857-1d9277a6-94a6-48c8-8a5c-88df70e36551.png)
    
    
* Total mentorship eligibility members count: **1549** 

    ![Screen Shot 2022-10-10 at 12 06 15 AM](https://user-images.githubusercontent.com/44387918/194824926-8ebd2731-492e-41ce-bc9f-90d2738970d2.png)


* Retirement employees by title: 

    ![Screen Shot 2022-10-10 at 1 26 58 AM](https://user-images.githubusercontent.com/44387918/194825703-2e98de91-576d-48c6-800a-c4168b60a9b7.png)


* Mentorship eligibility members by Title:

    ![Screen Shot 2022-10-10 at 1 26 17 AM](https://user-images.githubusercontent.com/44387918/194825791-f347155a-43d0-426e-bd9c-f0ddad61f2e5.png)


## Conclusion
As per analysis, a total of 72458 roles need to be filled. According to the retirement employees dashboard majority employee roles are “Senior Engineer” and “Senior staff” which needs to be concentrated. Total mentorship eligibility members count is 1549 means each mentor needs to handle 48 new members which is a bit difficult. One more important thing is the shortage of senior engineer mentors. Available mentors are 169 for 25916 members means each mentor needs to handle ~159 members. To mitigate this, identify the few more senior engineer mentors based on the employee rating and review. 
