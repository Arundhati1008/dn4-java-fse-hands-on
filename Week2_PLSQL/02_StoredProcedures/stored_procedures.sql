

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    AccountType VARCHAR2(20),
    Balance NUMBER,
    LastModified DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Position VARCHAR2(50),
    Salary NUMBER,
    Department VARCHAR2(50),
    HireDate DATE
);

--------------------------------------------------------------------------------
-- Sample Data
--------------------------------------------------------------------------------

-- Accounts
INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
VALUES (101, 1, 'Savings', 20000, SYSDATE);

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
VALUES (102, 2, 'Checking', 10000, SYSDATE);

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
VALUES (103, 3, 'Savings', 15000, SYSDATE);

-- Employees
INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
VALUES (1, 'Alice Johnson', 'Manager', 70000, 'HR', TO_DATE('2015-06-15', 'YYYY-MM-DD'));

INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
VALUES (2, 'Bob Brown', 'Developer', 60000, 'IT', TO_DATE('2017-03-20', 'YYYY-MM-DD'));

COMMIT;

--------------------------------------------------------------------------------
--  Procedure 1: ProcessMonthlyInterest
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
    FOR acc IN (SELECT AccountID, Balance FROM Accounts WHERE AccountType = 'Savings') LOOP
        UPDATE Accounts
        SET Balance = Balance + (acc.Balance * 0.01),
            LastModified = SYSDATE
        WHERE AccountID = acc.AccountID;

        DBMS_OUTPUT.PUT_LINE('Interest added to Account ID: ' || acc.AccountID);
    END LOOP;
END;
/

-- Execute the procedure
BEGIN
    ProcessMonthlyInterest;
END;
/

--------------------------------------------------------------------------------
--  Procedure 2: UpdateEmployeeBonus
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    dept_name IN VARCHAR2,
    bonus_percent IN NUMBER
) AS
BEGIN
    FOR emp IN (SELECT EmployeeID, Salary FROM Employees WHERE Department = dept_name) LOOP
        UPDATE Employees
        SET Salary = Salary + (emp.Salary * bonus_percent / 100)
        WHERE EmployeeID = emp.EmployeeID;

        DBMS_OUTPUT.PUT_LINE('Bonus applied to Employee ID: ' || emp.EmployeeID);
    END LOOP;
END;
/

-- Execute the procedure (10% bonus to IT dept)
BEGIN
    UpdateEmployeeBonus('IT', 10);
END;
/

--------------------------------------------------------------------------------
--  Procedure 3: TransferFunds
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE TransferFunds(
    from_account IN NUMBER,
    to_account IN NUMBER,
    amount IN NUMBER
) AS
    from_balance NUMBER;
BEGIN
    -- Get source balance
    SELECT Balance INTO from_balance FROM Accounts WHERE AccountID = from_account;

    IF from_balance < amount THEN
        DBMS_OUTPUT.PUT_LINE(' Transfer failed: Insufficient funds.');
    ELSE
        -- Deduct from source
        UPDATE Accounts
        SET Balance = Balance - amount,
            LastModified = SYSDATE
        WHERE AccountID = from_account;

        -- Credit destination
        UPDATE Accounts
        SET Balance = Balance + amount,
            LastModified = SYSDATE
        WHERE AccountID = to_account;

        DBMS_OUTPUT.PUT_LINE(' rupees' || amount || ' transferred from Account ' || from_account || ' to Account ' || to_account);
    END IF;
END;
/

-- Execute the procedure (Transfer ₹5000 from 101 to 103)
BEGIN
    TransferFunds(101, 103, 5000);
END;
/



SELECT * FROM Accounts;
