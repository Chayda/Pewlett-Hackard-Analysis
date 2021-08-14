# Pewlett-Hackard-Analysis Retirement/Mentorship Program.
## Overview: 
### The purpose of this analysis is to provide information on retiring employees to match them up with a mentorship program in the company, as there is a very large number of employees coming upon retirement and leaving the company in a short timeframe. The retiring employees are identified by their job title and employees that are eligible to be matched up for mentorship are also identified.

## Results:
### •	Retirement titles table: 
  Filtered results of employees born between 1952 and 1955. This table contains multiple instances of the same employee due to job title changes and also includes employees        who are no longer employed at the company (see highlighted “Chirstian Koblick” and “Mary Sluis”).

![retirement_titles](https://user-images.githubusercontent.com/74624855/129448788-b44bd453-b212-4be0-93bf-3fc603b768e2.png)

### •	Unique titles table: 
  90,398 employees are set to retire based on the three-year filter of retirement-eligible employees. However, this list likely contains employees who are no longer with the      company (using “Mary Sluis” as an example).

![unique_titles](https://user-images.githubusercontent.com/74624855/129448805-c26bf109-4240-4815-b0b1-14eb7e8740c3.png)

### •	Retiring titles table: 
  We have a breakdown of the employee count by department. As expected with retirement there is a majority of Senior Engineers and Senior Staff roles that will open up.

![retiring_titles](https://user-images.githubusercontent.com/74624855/129448814-ecb62f7b-46f1-4d35-9c29-11120aa5a67a.png)

### •	Mentorship eligibility table: 
  In the age-based filter of employees born in 1965, there are 1,549 employees eligible to be matched up with mentors that are retiring.

![mentorship_eligibility](https://user-images.githubusercontent.com/74624855/129448820-638e09b0-64b0-4924-9e55-726bfc50132a.png)

## Summary: 
1.	Based on the results from “retiring_titles.csv”:  90,398 roles will open up and need to be filled as the “silver tsunami” retirements take place. This will be a huge           portion of the workforce from the company. That said, the retirement employees need to be further filtered so employees who are no longer with the company should be removed     from the list and the retirement pool will be smaller than this. Filtering by keeping only employees with a to_date set at ‘9999-01-01’ should help with this. In the           mentorship-eligible pool of employees born in 1965, there are not enough candidates for the program as the total count of these employees is 1,549 (as per                       “mentorship_eligibility.csv”).

2.	There are 1,549 employees eligible for the Mentorship Program, to be matched up with Retiring employees (as "per mentorship_eligibility.csv"). This is not enough to support     the very large number of employees that will be retiring and leaving the company.

## Additional Queries we can run 
•	The department count of mentorship-eligible employees would make it easier to match up candidates with retiring employees (using refactored code from unique_titles and         retiring_titles tables. We can also create a new table and use the departments table to further refine which specific departments will have openings which can make it easier   to match up mentorship-eligible employees with retiring employees.

•	The results indicate that there will be a high need for Senior Engineers and Senior Staff, so filtering through mentorship-eligible employees that are specifically engineers   and staff (not senior) to match up with the senior mentors can help the company fill the senior roles. It may be necessary to re-filter through the mentorship-eligible         employees table and broaden the year of eligibility from 1965-1968 to provide more employees for the program. Then the company can hire out for more lower-level engineers and   staff.
