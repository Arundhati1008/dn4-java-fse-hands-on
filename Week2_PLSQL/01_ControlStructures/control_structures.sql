                        --#schema creation
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    DOB DATE,
    Balance NUMBER,
    LastModified DATE
);

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    LoanAmount NUMBER,
    InterestRate NUMBER,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);



-- Customers: some over and under 60 years old
INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
VALUES (1, 'John Doe', TO_DATE('1950-05-15', 'YYYY-MM-DD'), 12000, SYSDATE); -- age ~74

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
VALUES (2, 'Jane Smith', TO_DATE('1995-07-20', 'YYYY-MM-DD'), 8000, SYSDATE); -- age ~29

INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
VALUES (3, 'Sneha Roy', TO_DATE('1955-03-10', 'YYYY-MM-DD'), 15000, SYSDATE); -- age ~69

-- Loans
INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES (1, 1, 5000, 6.5, SYSDATE, SYSDATE + 15); -- due in 15 days

INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES (2, 2, 10000, 7.0, SYSDATE, SYSDATE + 45); -- due after 45 days

INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES (3, 3, 8000, 6.0, SYSDATE, SYSDATE + 5); -- due in 5 days

COMMIT;

--------------------------------------------------------------------------------
--  Scenario 1: Apply 1% discount for customers older than 60
--------------------------------------------------------------------------------

BEGIN
    FOR rec IN (
        SELECT CustomerID, ROUND(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Age
        FROM Customers
    ) LOOP
        IF rec.Age > 60 THEN
            UPDATE Customers
            SET Balance = Balance + (Balance * 0.01), -- treat "discount" as interest bonus
                LastModified = SYSDATE
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE(' 1% bonus added for Customer ID: ' || rec.CustomerID || ' (Age: ' || rec.Age || ')');
        END IF;
    END LOOP;
END;
/

--------------------------------------------------------------------------------
--  Scenario 2: Promote to VIP if balance > ₹10,000
--------------------------------------------------------------------------------

BEGIN
    FOR rec IN (SELECT CustomerID, Balance FROM Customers) LOOP
        IF rec.Balance > 10000 THEN
            DBMS_OUTPUT.PUT_LINE(' Customer ID ' || rec.CustomerID || ' is eligible for VIP (Balance: ₹' || rec.Balance || ')');
        END IF;
    END LOOP;
END;
/

--------------------------------------------------------------------------------
--  Scenario 3: Send reminders for loans due in next 30 days
--------------------------------------------------------------------------------

BEGIN
    FOR loan IN (
        SELECT CustomerID, LoanID, EndDate
        FROM Loans
        WHERE EndDate <= SYSDATE + 30
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(' Reminder: Loan ID ' || loan.LoanID || ' due for Customer ID ' || loan.CustomerID || ' on ' || TO_CHAR(loan.EndDate, 'DD-Mon-YYYY'));
    END LOOP;
END;
/
