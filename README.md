# 🎓 University Course Management System

> **A MySQL-based database project for managing students, departments, courses, instructors, and enrollments.**

## 📌 Project Overview

The **University Course Management System** is a relational database project developed using **MySQL**.

The main purpose of this project is to organize and manage university academic information in a structured way. It stores student details, department information, courses, instructors, and student enrollments while demonstrating important SQL concepts such as **CRUD operations, joins, subqueries, aggregate functions, date functions, string functions, window functions, and CASE statements**.

This project is designed as a practical demonstration of how a university can manage its academic data using a relational database.

---

## 🎯 Objectives

* Create a structured university database.
* Store and manage student information.
* Maintain department and course details.
* Manage instructor information.
* Track student course enrollments.
* Establish relationships using **Primary Keys and Foreign Keys**.
* Perform CRUD operations on database tables.
* Retrieve meaningful information using SQL queries.
* Practice advanced SQL concepts such as **JOIN, GROUP BY, HAVING, subqueries, window functions, and CASE**.

---

## 🗂️ Database Structure

The project contains **5 main tables**:

| Table               | Purpose                                            |
| ------------------- | -------------------------------------------------- |
| 👨‍🎓 `Students`    | Stores student personal and enrollment information |
| 🏢 `Departments`    | Stores university department details               |
| 📚 `Course`         | Stores available courses and their credits         |
| 👨‍🏫 `Instructors` | Stores instructor information                      |
| 📝 `Enrollments`    | Connects students with their selected courses      |

### 🔗 Table Relationships

```text
Departments
    │
    ├──────────────► Course
    │                   │
    │                   ▼
    └──────────────► Instructors

Students
    │
    ▼
Enrollments
    │
    ▼
Course
```

### 🔑 Keys Used

* `StudentID` → Primary Key in `Students`
* `DepartmentID` → Primary Key in `Departments`
* `CourseID` → Primary Key in `Course`
* `InstructorID` → Primary Key in `Instructors`
* `EnrollmentID` → Primary Key in `Enrollments`

Foreign keys maintain relationships between the tables and help preserve **referential integrity**.

---

## 🧩 Tables & Important Columns

### 👨‍🎓 Students

```text
StudentID
FirstName
LastName
Email
BirthDate
EnrollmentDate
```

Contains information about university students.

### 🏢 Departments

```text
DepartmentID
DepartmentName
```

Contains departments such as:

* Computer Science
* Information Technology
* Commerce
* Design
* Mathematics
* Physics
* Management

### 📚 Course

```text
CourseID
CourseName
DepartmentID
Credits
```

Contains courses such as:

* Database Management System
* Python Programming
* Data Structures
* Computer Networks
* Financial Accounting
* Graphic Design
* Data Analytics

### 👨‍🏫 Instructors

```text
InstructorID
FirstName
LastName
Email
DepartmentID
```

Stores instructor information and their associated departments.

### 📝 Enrollments

```text
EnrollmentID
StudentID
CourseID
EnrollmentDate
```

Acts as a connection between **Students** and **Courses**.

---

# ⚙️ SQL Concepts Demonstrated

This project covers a wide range of SQL operations.

### 1. CRUD Operations

**C — Create**

```sql
INSERT INTO Students (...);
```

**R — Read**

```sql
SELECT * FROM Students;
```

**U — Update**

```sql
UPDATE Students
SET Email = 'newemail@gmail.com'
WHERE StudentID = 1;
```

**D — Delete**

```sql
DELETE FROM Students
WHERE StudentID = 1;
```

CRUD operations were performed on all major tables.

---

### 2. Filtering Data

Students enrolled after a particular year can be retrieved using:

```sql
SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';
```

---

### 3. Aggregate Functions

The project uses functions such as:

```text
AVG()
COUNT()
MAX()
```

Example:

```sql
SELECT AVG(Credits) AS AverageCredits
FROM Course;
```

The calculated average course credit in the current dataset is **3.6**.

---

### 4. GROUP BY & HAVING

The project demonstrates grouping students by course and filtering courses based on enrollment count.

```sql
SELECT CourseID, COUNT(StudentID) AS StudentCount
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 5;
```

---

### 5. JOIN Operations

The project uses relational joins to combine information from multiple tables.

#### INNER JOIN

Retrieves students along with their corresponding courses.

```sql
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Course c
ON e.CourseID = c.CourseID;
```

#### LEFT JOIN

Retrieves all students, including students who may not have a course enrollment.

```sql
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Course c
ON e.CourseID = c.CourseID;
```

---

### 6. Subqueries

Subqueries are used to find students enrolled in courses that meet specific conditions.

Example:

```sql
SELECT StudentID
FROM Enrollments
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollments
    GROUP BY CourseID
    HAVING COUNT(StudentID) > 10
);
```

---

### 7. Date Functions

The project uses MySQL date functions such as:

```sql
YEAR(EnrollmentDate)
```

to extract the enrollment year.

```sql
SELECT StudentID, FirstName, LastName,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;
```

---

### 8. String Functions

Instructor names are combined using `CONCAT()`:

```sql
SELECT InstructorID,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;
```

Example:

```text
Amit + Sharma → Amit Sharma
```

---

### 9. Window Functions

A running enrollment total is calculated using a window function:

```sql
SELECT EnrollmentID, StudentID, CourseID, EnrollmentDate,
       COUNT(StudentID) OVER (ORDER BY EnrollmentDate) AS RunningTotal
FROM Enrollments;
```

This demonstrates how SQL can calculate cumulative values without collapsing individual rows.

---

### 10. CASE Statement

Students are classified as **Senior** or **Junior** based on their enrollment date.

```sql
SELECT StudentID, FirstName, LastName, EnrollmentDate,
CASE
    WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
    THEN 'Senior'
    ELSE 'Junior'
END AS StudentLevel
FROM Students;
```

Since the current sample enrollment dates are from **2024**, the current output classifies these students as **Junior** under this rule.

---

# 📊 Project Queries

The project demonstrates **16 practical SQL tasks**, including:

1. CRUD operations on all tables
2. Students enrolled after 2022
3. Courses from a specific department
4. Number of students in each course
5. Students enrolled in two specific courses
6. Students enrolled in either of two courses
7. Average course credits
8. Maximum instructor salary
9. Students enrolled in each department
10. INNER JOIN between students and courses
11. LEFT JOIN between students and courses
12. Subquery for courses with more than 10 students
13. Extract enrollment year
14. Concatenate instructor names
15. Running total of enrollments
16. Senior/Junior student classification

---

# 📈 Current Dataset

The project currently contains:

```text
👨‍🎓 Students       → 10 records
🏢 Departments     → 10 records
📚 Courses         → 10 records
👨‍🏫 Instructors    → 10 records
📝 Enrollments     → 10 records
```

This dataset is sufficient for demonstrating the basic relationships and SQL operations in the project.

---

# ⚠️ Project Notes

### Instructor Salary

The current `Instructors` table does **not contain a `Salary` column**.

Therefore, the query for:

> Maximum salary of instructors in the Computer Science department

cannot be executed with the current table structure.

If salary is required by the university assignment, the column can be added using:

```sql
ALTER TABLE Instructors
ADD Salary DECIMAL(10,2);
```

### Course Enrollment Count

The current dataset has only **one enrollment per course**, so queries requiring courses with **more than 5 or 10 students** correctly return an empty result.

More enrollment records would be required to produce results for those queries.

---

# 🛠️ Technologies Used

* **MySQL**
* SQL
* Relational Database Concepts
* Primary Keys
* Foreign Keys
* CRUD Operations
* Joins
* Subqueries
* Aggregate Functions
* Window Functions

---

# 💡 Key Learning Outcomes

Through this project, I learned how to:

* Design a relational database.
* Create tables with appropriate data types.
* Insert and manage records.
* Establish relationships using foreign keys.
* Perform CRUD operations.
* Retrieve and filter data.
* Combine multiple tables using JOINs.
* Use aggregate functions for calculations.
* Write subqueries.
* Work with dates and strings.
* Use window functions for running totals.
* Apply conditional logic using `CASE`.

---

# 🚀 Future Improvements

The system can be expanded by adding:

* 📊 Student grades and marks
* 💰 Instructor salary information
* 📅 Course schedules
* 🏫 Classrooms and campus information
* 📋 Attendance management
* 🎓 Student performance reports
* 🔐 User login and authentication
* 📈 Academic dashboards
* 🔎 Advanced student/course search

---

# 🎓 Conclusion

The **University Course Management System** provides a practical implementation of a relational database using MySQL. The project successfully demonstrates how different university entities can be organized into connected tables and managed through SQL.

By working with **Students, Departments, Courses, Instructors, and Enrollments**, the project demonstrates both fundamental and advanced SQL concepts in a simple and practical way.

> **“Organize the data. Connect the information. Simplify university management.”** 🎓💻

---

## 👩‍💻 Project Type

**Domain:** Education & Course Management

**Database:** MySQL

**Tables:** 5

**SQL Queries:** 16

**Status:** ✅ Completed
# FINAL-SQL-PROJECT
