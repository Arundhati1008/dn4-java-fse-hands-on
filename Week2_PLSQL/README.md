# Week 2 – PL/SQL Programming Exercises

Contains hands-on tasks for PL/SQL basics.

## Tasks:

##  Control Structures

- Scenario 1: Age-Based Bonus (Over 60)
- Add a **1% bonus** to the balance of customers who are **older than 60 years**.
- Age is calculated using `MONTHS_BETWEEN(SYSDATE, DOB)/12`.
- Scenario 2: VIP Status by Balance
- If a customer has **balance > ₹10,000**, mark them as eligible for **VIP**.
- Scenario 3: Loan Due Reminders
- Send reminders for loans **due within 30 days** from current date.

- 
  ## Stored Procedures
- Procedure 1: `ProcessMonthlyInterest`
- Adds **1% interest** to accounts where `AccountType = 'Savings'
- Updates balance and `LastModified` timestamp.

 -Procedure 2: `UpdateEmployeeBonus`
- Adds a **bonus percent** to employees in a selected department.
- Procedure 3: TransferFunds
  Transfers amount from one account to another if balance is sufficient.

## How to Run
.Open https://livesql.oracle.com

.Paste contents of control_structures.sql and stored_procedures.sql

.Run table creation and insert queries first

.Execute each PL/SQL block separately

.View results in the DBMS Output tab

.To check balances or salaries:

## sql
Copy code
SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Employees;
SELECT * FROM Loans;
