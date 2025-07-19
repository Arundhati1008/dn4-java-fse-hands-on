
# Week 2 – PL/SQL Stored Procedures

This folder contains three stored procedures written in PL/SQL, designed to simulate real-world banking and HR operations as part of the **Cognizant Digital Nurture 4.0 – Java Full Stack Engineer** Deep Skilling program.

---

##  Stored Procedure 1: `ProcessMonthlyInterest`

###  Description:
Applies **1% monthly interest** to all accounts with `AccountType = 'Savings'`.

###  Logic:
- Loop through savings accounts.
- Add 1% to each account's balance.
- Update the `LastModified` date.
- 
## Stored Procedure 2: `UpdateEmployeeBonus`

### Description:
Increases salary for all employees in a given department by a **bonus percentage**.

###  Parameters:
- `dept_name`: department name (e.g., 'IT')
- `bonus_percent`: percentage of salary to add (e.g., 10)



