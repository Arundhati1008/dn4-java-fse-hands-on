
# Week 2 – PL/SQL Programming (Control Structures)

This folder contains hands-on exercises for **Control Structures in PL/SQL** as part of the Cognizant Digital Nurture 4.0 – Java Full Stack Engineer Deep Skilling program.

---

##  Exercise 1: Real-World Banking Scenarios

###  Scenario 1: Age-Based Interest Discount
- **Objective**: Apply a 1% discount on loan interest rates for customers above 60 years old.
- **Logic**: Loop through each customer, check their age, and update the `InterestRate` if `Age > 60`.
- **Output**: Prints which Customer IDs received a discount.

---

###  Scenario 2: Balance-Based VIP Promotion
- **Objective**: Promote customers to VIP status if their `Balance > 10,000`.
- **Logic**: Loop through the `Customers` table, check balances, and update the `IsVIP` flag to `'TRUE'`.
- **Output**: Displays which customers were promoted to VIP.

---

###  Scenario 3: Loan Due Date Reminder
- **Objective**: Remind customers whose loans are due in the next 30 days.
- **Logic**: Fetch loans from the `Loans` table where `LoanDueDate <= SYSDATE + 30` and print reminders.
- **Output**: Reminder message with Customer ID and loan due date.

---

##  How to Run

1. Go to: [https://livesql.oracle.com](https://livesql.oracle.com)
2. Paste and run the contents of `control_structures.sql`
3. Ensure the `DBMS Output` tab is open to view the output
4. Optionally run:
   ```sql
   SELECT * FROM Customers;
   SELECT * FROM Loans;

