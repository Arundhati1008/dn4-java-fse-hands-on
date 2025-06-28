-- Setup: Create and populate CUSTOMERS table

CREATE TABLE Customers (
    CustomerID NUMBER,
    Name VARCHAR2(50),
    Age NUMBER,
    Balance NUMBER,
    InterestRate NUMBER,
    IsVIP VARCHAR2(10)
);

-- Insert sample customers
INSERT INTO Customers VALUES (1, 'Aditi', 65, 12000, 8.5, 'FALSE');
INSERT INTO Customers VALUES (2, 'Rahul', 45, 8000, 9.0, 'FALSE');
INSERT INTO Customers VALUES (3, 'Sneha', 70, 15000, 7.5, 'FALSE');
COMMIT;



CREATE TABLE Loans (
    LoanID NUMBER,
    CustomerID NUMBER,
    LoanDueDate DATE
);


INSERT INTO Loans VALUES (201, 1, SYSDATE + 10);  -- due in 10 days
INSERT INTO Loans VALUES (202, 2, SYSDATE + 40);  -- due in 40 days (not included)
INSERT INTO Loans VALUES (203, 3, SYSDATE + 5);   -- due in 5 days
COMMIT;

--------------------------------------------------------------------------------
-- Scenario 1: Apply 1% discount to interest for customers over 60 years old
--------------------------------------------------------------------------------
BEGIN
    FOR rec IN (SELECT CustomerID, Age, InterestRate FROM Customers) LOOP
        IF rec.Age > 60 THEN
            UPDATE Customers
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE(' Discount applied to Customer ID: ' || rec.CustomerID);
        END IF;
    END LOOP;
END;
/

--------------------------------------------------------------------------------
-- Scenario 2: Promote customers to VIP if balance > 10,000
--------------------------------------------------------------------------------
BEGIN
    FOR rec IN (SELECT CustomerID, Balance FROM Customers) LOOP
        IF rec.Balance > 10000 THEN
            UPDATE Customers
            SET IsVIP = 'TRUE'
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE(' Customer ID ' || rec.CustomerID || ' promoted to VIP');
        END IF;
    END LOOP;
END;
/

--------------------------------------------------------------------------------
-- Scenario 3: Send reminders for loans due within the next 30 days
--------------------------------------------------------------------------------
BEGIN
    FOR loan IN (
        SELECT CustomerID, LoanDueDate
        FROM Loans
        WHERE LoanDueDate <= SYSDATE + 30
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(' Reminder: Loan due for Customer ID ' || loan.CustomerID ||
                             ' on ' || TO_CHAR(loan.LoanDueDate, 'DD-Mon-YYYY'));
    END LOOP;
END;
/
