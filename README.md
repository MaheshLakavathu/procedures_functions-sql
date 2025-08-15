# ⚙ SQL – Stored Procedures & Functions

## ✅ Objective
Learn how to create, execute, and use stored procedures and functions in SQL for reusable and efficient database operations.

---

## 🧠 Key Concepts Covered

- Creating stored procedures
- Creating stored functions
- Using IN parameters
- Returning values from functions
- Calling procedures and functions
- Benefits and use cases of stored routines

---

## 📂 Files Included

- `procedures_functions.sql` — SQL script containing stored procedure and function examples.

---

## 🛠 Tools Used

- MySQL Workbench
- GitHub for version control

---

## 🧪 Sample Routines Included

1. **Stored Procedure** – `GetBorrowedBooksByMember`  
   Fetches all borrowed books along with author details for a specific member.

2. **Stored Function** – `CountBooksByGenre`  
   Returns the total number of books in a specified genre.

---

## 🚀 How to Run

1. Open your SQL environment (MySQL Workbench recommended).
2. Copy and execute the contents of `task8_procedures_functions.sql`.
3. Call the procedure:
   ```sql
   CALL GetBorrowedBooksByMember('John Doe');
