--------------------------FINAL PROJECT OF UNIVERSITY COURSE MANAGEMENT SYSTEM--------------------------------------------------

----> TABLE 1: STUDENTS TABLE
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE
);
Query OK, 0 rows affected (0.04 sec)
INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '2004-05-15', '2024-07-10'),
(2, 'Priya', 'Patel', 'priya@gmail.com', '2003-08-22', '2024-07-12'),
(3, 'Aarav', 'Mehta', 'aarav@gmail.com', '2004-02-10', '2024-07-15'),
(4, 'Ananya', 'Shah', 'ananya@gmail.com', '2003-11-18', '2024-07-18'),
(5, 'Rohan', 'Verma', 'rohan@gmail.com', '2004-06-25', '2024-07-20'),
(6, 'Sneha', 'Joshi', 'sneha@gmail.com', '2003-09-12', '2024-07-22'),
(7, 'Arjun', 'Singh', 'arjun@gmail.com', '2004-01-30', '2024-07-25'),
(8, 'Kavya', 'Desai', 'kavya@gmail.com', '2003-04-17', '2024-07-28'),
(9, 'Aditya', 'Kapoor', 'aditya@gmail.com', '2004-10-05', '2024-07-30'),
(10, 'Neha', 'Patel', 'neha@gmail.com', '2003-12-20', '2024-08-01');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

SELECT * FROM Students;

+-----------+-----------+----------+------------------+------------+----------------+
| StudentID | FirstName | LastName | Email            | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+------------------+------------+----------------+
|         1 | Rahul     | Sharma   | rahul@gmail.com  | 2004-05-15 | 2024-07-10     |
|         2 | Priya     | Patel    | priya@gmail.com  | 2003-08-22 | 2024-07-12     |
|         3 | Aarav     | Mehta    | aarav@gmail.com  | 2004-02-10 | 2024-07-15     |
|         4 | Ananya    | Shah     | ananya@gmail.com | 2003-11-18 | 2024-07-18     |
|         5 | Rohan     | Verma    | rohan@gmail.com  | 2004-06-25 | 2024-07-20     |
|         6 | Sneha     | Joshi    | sneha@gmail.com  | 2003-09-12 | 2024-07-22     |
|         7 | Arjun     | Singh    | arjun@gmail.com  | 2004-01-30 | 2024-07-25     |
|         8 | Kavya     | Desai    | kavya@gmail.com  | 2003-04-17 | 2024-07-28     |
|         9 | Aditya    | Kapoor   | aditya@gmail.com | 2004-10-05 | 2024-07-30     |
|        10 | Neha      | Patel    | neha@gmail.com   | 2003-12-20 | 2024-08-01     |
+-----------+-----------+----------+------------------+------------+----------------+

----> TABLE 2: DEPARTMENT TABLE
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);
Query OK, 0 rows affected (0.04 sec)

INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Commerce'),
(4, 'Design'),
(5, 'Business Administration'),
(6, 'Mathematics'),
(7, 'Physics'),
(8, 'English'),
(9, 'Economics'),
(10, 'Management');

SELECT * FROM Departments;
+--------------+-------------------------+
| DepartmentID | DepartmentName          |
+--------------+-------------------------+
|            1 | Computer Science        |
|            2 | Information Technology  |
|            3 | Commerce                |
|            4 | Design                  |
|            5 | Business Administration |
|            6 | Mathematics             |
|            7 | Physics                 |
|            8 | English                 |
|            9 | Economics               |
|           10 | Management              |
+--------------+-------------------------+
10 rows in set (0.00 sec)

----> TABLE 3: COURSE TABLE
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID) REFERENCES DepartmentS(DepartmentID)
);
Query OK, 0 rows affected (0.04 sec)

INSERT INTO Course
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(101, 'Database Management System', 1, 4),
(102, 'Python Programming', 2, 4),
(103, 'Web Development', 2, 3),
(104, 'Data Structures', 1, 4),
(105, 'Computer Networks', 1, 3),
(106, 'Financial Accounting', 3, 4),
(107, 'Business Management', 3, 3),
(108, 'Digital Marketing', 4, 3),
(109, 'Graphic Design', 4, 4),
(110, 'Data Analytics', 2, 4);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0
SELECT * FROM Course;
+----------+----------------------------+--------------+---------+
| CourseID | CourseName                 | DepartmentID | Credits |
+----------+----------------------------+--------------+---------+
|      101 | Database Management System |            1 |       4 |
|      102 | Python Programming         |            2 |       4 |
|      103 | Web Development            |            2 |       3 |
|      104 | Data Structures            |            1 |       4 |
|      105 | Computer Networks          |            1 |       3 |
|      106 | Financial Accounting       |            3 |       4 |
|      107 | Business Management        |            3 |       3 |
|      108 | Digital Marketing          |            4 |       3 |
|      109 | Graphic Design             |            4 |       4 |
|      110 | Data Analytics             |            2 |       4 |
+----------+----------------------------+--------------+---------+
10 rows in set (0.00 sec)

----> TABLE 4: INSTRUCTOR TABLE
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
Query OK, 0 rows affected (0.04 sec)
INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(201, 'Amit', 'Sharma', 'amit.sharma@gmail.com', 1),
(202, 'Priya', 'Patel', 'priya.patel@gmail.com', 2),
(203, 'Rahul', 'Mehta', 'rahul.mehta@gmail.com', 1),
(204, 'Neha', 'Shah', 'neha.shah@gmail.com', 3),
(205, 'Vikas', 'Verma', 'vikas.verma@gmail.com', 2),
(206, 'Sneha', 'Joshi', 'sneha.joshi@gmail.com', 4),
(207, 'Arjun', 'Singh', 'arjun.singh@gmail.com', 1),
(208, 'Kavita', 'Desai', 'kavita.desai@gmail.com', 3),
(209, 'Rohit', 'Kapoor', 'rohit.kapoor@gmail.com', 2),
(210, 'Anjali', 'Patel', 'anjali.patel@gmail.com', 4);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

SELECT * FROM Instructors;

+--------------+-----------+----------+------------------------+--------------+
| INSTRUCTORID | FIRSTNAME | LASTNAME | EMAIL                  | DEPARTMENTID |
+--------------+-----------+----------+------------------------+--------------+
|          201 | Amit      | Sharma   | amit.sharma@gmail.com  |            1 |
|          202 | Priya     | Patel    | priya.patel@gmail.com  |            2 |
|          203 | Rahul     | Mehta    | rahul.mehta@gmail.com  |            1 |
|          204 | Neha      | Shah     | neha.shah@gmail.com    |            3 |
|          205 | Vikas     | Verma    | vikas.verma@gmail.com  |            2 |
|          206 | Sneha     | Joshi    | sneha.joshi@gmail.com  |            4 |
|          207 | Arjun     | Singh    | arjun.singh@gmail.com  |            1 |
|          208 | Kavita    | Desai    | kavita.desai@gmail.com |            3 |
|          209 | Rohit     | Kapoor   | rohit.kapoor@gmail.com |            2 |
|          210 | Anjali    | Patel    | anjali.patel@gmail.com |            4 |
+--------------+-----------+----------+------------------------+--------------+
10 rows in set (0.00 sec)

----> TABLE 5: ENROLLMENT TABLE

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
Query OK, 0 rows affected (0.04 sec)
INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 101, '2024-07-10'),
(2, 2, 102, '2024-07-12'),
(3, 3, 103, '2024-07-15'),
(4, 4, 104, '2024-07-18'),
(5, 5, 105, '2024-07-20'),
(6, 6, 106, '2024-07-22'),
(7, 7, 107, '2024-07-25'),
(8, 8, 108, '2024-07-28'),
(9, 9, 109, '2024-07-30'),
(10, 10, 110, '2024-08-01');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2024-07-10     |
|            2 |         2 |      102 | 2024-07-12     |
|            3 |         3 |      103 | 2024-07-15     |
|            4 |         4 |      104 | 2024-07-18     |
|            5 |         5 |      105 | 2024-07-20     |
|            6 |         6 |      106 | 2024-07-22     |
|            7 |         7 |      107 | 2024-07-25     |
|            8 |         8 |      108 | 2024-07-28     |
|            9 |         9 |      109 | 2024-07-30     |
|           10 |        10 |      110 | 2024-08-01     |
+--------------+-----------+----------+----------------+
10 rows in set (0.00 sec)


-----------*Queries to Perform:*--------------

1. Perform CRUD Operations on all tables.
( CRUD-CREATE , READ, UPDATE, DELETE)
-- CREATE: Insert a new student
INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(11, 'Riya', 'Shah', 'riya@gmail.com', '2004-03-15', '2024-08-05');

-- READ: Display all students
SELECT * FROM Students;
mysql> SELECT* FROM STUDENTS;
+-----------+-----------+----------+------------------+------------+----------------+
| StudentID | FirstName | LastName | Email            | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+------------------+------------+----------------+
|         1 | Rahul     | Sharma   | rahul@gmail.com  | 2004-05-15 | 2024-07-10     |
|         2 | Priya     | Patel    | priya@gmail.com  | 2003-08-22 | 2024-07-12     |
|         3 | Aarav     | Mehta    | aarav@gmail.com  | 2004-02-10 | 2024-07-15     |
|         4 | Ananya    | Shah     | ananya@gmail.com | 2003-11-18 | 2024-07-18     |
|         5 | Rohan     | Verma    | rohan@gmail.com  | 2004-06-25 | 2024-07-20     |
|         6 | Sneha     | Joshi    | sneha@gmail.com  | 2003-09-12 | 2024-07-22     |
|         7 | Arjun     | Singh    | arjun@gmail.com  | 2004-01-30 | 2024-07-25     |
|         8 | Kavya     | Desai    | kavya@gmail.com  | 2003-04-17 | 2024-07-28     |
|         9 | Aditya    | Kapoor   | aditya@gmail.com | 2004-10-05 | 2024-07-30     |
|        10 | Neha      | Patel    | neha@gmail.com   | 2003-12-20 | 2024-08-01     |
|        11 | RIYA      | SHAH     | RIY@GMAIL.COM    | 2002-02-20 | 2024-08-05     |
+-----------+-----------+----------+------------------+------------+----------------+
11 rows in set (0.00 sec)

-- UPDATE: Change student's email
UPDATE Students
SET Email = 'riyashah@gmail.com'
WHERE StudentID = 11;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-- DELETE: Delete a student
DELETE FROM Students
WHERE StudentID = 11;
Query OK, 1 row affected (0.01 sec)
mysql> SELECT * FROM STUDENTS;
+-----------+-----------+----------+------------------+------------+----------------+
| StudentID | FirstName | LastName | Email            | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+------------------+------------+----------------+
|         1 | Rahul     | Sharma   | rahul@gmail.com  | 2004-05-15 | 2024-07-10     |
|         2 | Priya     | Patel    | priya@gmail.com  | 2003-08-22 | 2024-07-12     |
|         3 | Aarav     | Mehta    | aarav@gmail.com  | 2004-02-10 | 2024-07-15     |
|         4 | Ananya    | Shah     | ananya@gmail.com | 2003-11-18 | 2024-07-18     |
|         5 | Rohan     | Verma    | rohan@gmail.com  | 2004-06-25 | 2024-07-20     |
|         6 | Sneha     | Joshi    | sneha@gmail.com  | 2003-09-12 | 2024-07-22     |
|         7 | Arjun     | Singh    | arjun@gmail.com  | 2004-01-30 | 2024-07-25     |
|         8 | Kavya     | Desai    | kavya@gmail.com  | 2003-04-17 | 2024-07-28     |
|         9 | Aditya    | Kapoor   | aditya@gmail.com | 2004-10-05 | 2024-07-30     |
|        10 | Neha      | Patel    | neha@gmail.com   | 2003-12-20 | 2024-08-01     |
+-----------+-----------+----------+------------------+------------+----------------+
10 rows in set (0.00 sec)

-- CREATE: Insert a new department
INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(11, 'Artificial Intelligence');
Query OK, 1 row affected (0.01 sec)

-- READ: Display all departments
mysql> SELECT * FROM Departments;
+--------------+-------------------------+
| DepartmentID | DepartmentName          |
+--------------+-------------------------+
|            1 | Computer Science        |
|            2 | Information Technology  |
|            3 | Commerce                |
|            4 | Design                  |
|            5 | Business Administration |
|            6 | Mathematics             |
|            7 | Physics                 |
|            8 | English                 |
|            9 | Economics               |
|           10 | Management              |
|           11 | Artificial Intelligence |
+--------------+-------------------------+
11 rows in set (0.00 sec)

-- UPDATE: Change department name
UPDATE Departments
SET DepartmentName = 'Artificial Intelligence and ML'
WHERE DepartmentID = 11;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-- DELETE: Delete a department
DELETE FROM Departments
WHERE DepartmentID = 11;
Query OK, 1 row affected (0.02 sec)
+--------------+-------------------------+
| DepartmentID | DepartmentName          |
+--------------+-------------------------+
|            1 | Computer Science        |
|            2 | Information Technology  |
|            3 | Commerce                |
|            4 | Design                  |
|            5 | Business Administration |
|            6 | Mathematics             |
|            7 | Physics                 |
|            8 | English                 |
|            9 | Economics               |
|           10 | Management              |
+--------------+-------------------------+
10 rows in set (0.00 sec)


-- CREATE: Insert a new course
INSERT INTO Course
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(111, 'Machine Learning', 2, 4);
Query OK, 1 row affected (0.01 sec)

-- READ: Display all courses
SELECT * FROM Course;
+----------+----------------------------+--------------+---------+
| CourseID | CourseName                 | DepartmentID | Credits |
+----------+----------------------------+--------------+---------+
|      101 | Database Management System |            1 |       4 |
|      102 | Python Programming         |            2 |       4 |
|      103 | Web Development            |            2 |       3 |
|      104 | Data Structures            |            1 |       4 |
|      105 | Computer Networks          |            1 |       3 |
|      106 | Financial Accounting       |            3 |       4 |
|      107 | Business Management        |            3 |       3 |
|      108 | Digital Marketing          |            4 |       3 |
|      109 | Graphic Design             |            4 |       4 |
|      110 | Data Analytics             |            2 |       4 |
|      111 | Machine Learning           |            2 |       4 |
+----------+----------------------------+--------------+---------+
11 rows in set (0.00 sec)

-- UPDATE: Change course credits
UPDATE Course
SET Credits = 5
WHERE CourseID = 111;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-- DELETE: Delete a course
DELETE FROM Course
WHERE CourseID = 111;
Query OK, 1 row affected (0.01 sec)

-- CREATE: Insert a new instructor
INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(211, 'Meera', 'Sharma', 'meera.sharma@gmail.com', 2);
Query OK, 1 row affected (0.01 sec)

-- READ: Display all instructors
SELECT * FROM Instructors;
+--------------+-----------+----------+------------------------+--------------+
| INSTRUCTORID | FIRSTNAME | LASTNAME | EMAIL                  | DEPARTMENTID |
+--------------+-----------+----------+------------------------+--------------+
|          201 | Amit      | Sharma   | amit.sharma@gmail.com  |            1 |
|          202 | Priya     | Patel    | priya.patel@gmail.com  |            2 |
|          203 | Rahul     | Mehta    | rahul.mehta@gmail.com  |            1 |
|          204 | Neha      | Shah     | neha.shah@gmail.com    |            3 |
|          205 | Vikas     | Verma    | vikas.verma@gmail.com  |            2 |
|          206 | Sneha     | Joshi    | sneha.joshi@gmail.com  |            4 |
|          207 | Arjun     | Singh    | arjun.singh@gmail.com  |            1 |
|          208 | Kavita    | Desai    | kavita.desai@gmail.com |            3 |
|          209 | Rohit     | Kapoor   | rohit.kapoor@gmail.com |            2 |
|          210 | Anjali    | Patel    | anjali.patel@gmail.com |            4 |
|          211 | Meera     | Sharma   | meera.sharma@gmail.com |            2 |
+--------------+-----------+----------+------------------------+--------------+
11 rows in set (0.00 sec)

-- UPDATE: Change instructor email
UPDATE Instructors
SET Email = 'meera.s@gmail.com'
WHERE InstructorID = 211;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-- DELETE: Delete an instructor
DELETE FROM Instructors
WHERE InstructorID = 211;
Query OK, 1 row affected (0.01 sec)

-- CREATE: Insert a new enrollment
INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(11, 1, 102, '2024-08-05');
Query OK, 1 row affected (0.01 sec)

-- READ: Display all enrollments
SELECT * FROM Enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2024-07-10     |
|            2 |         2 |      102 | 2024-07-12     |
|            3 |         3 |      103 | 2024-07-15     |
|            4 |         4 |      104 | 2024-07-18     |
|            5 |         5 |      105 | 2024-07-20     |
|            6 |         6 |      106 | 2024-07-22     |
|            7 |         7 |      107 | 2024-07-25     |
|            8 |         8 |      108 | 2024-07-28     |
|            9 |         9 |      109 | 2024-07-30     |
|           10 |        10 |      110 | 2024-08-01     |
|           11 |         1 |      102 | 2024-08-05     |
+--------------+-----------+----------+----------------+
11 rows in set (0.00 sec)

-- UPDATE: Change enrollment date
--query
UPDATE Enrollments
SET EnrollmentDate = '2024-08-10'
WHERE EnrollmentID = 11;
--output
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-- DELETE: Delete an enrollment
--query
DELETE FROM Enrollments
WHERE EnrollmentID = 11;
--output
Query OK, 1 row affected (0.01 sec)

2. Retrieve students who enrolled after 2022.
--query
SELECT *
FROM STUDENTS
WHERE ENROLLMENTDATE > '2022-12-31';
--output
+-----------+-----------+----------+------------------+------------+----------------+
| StudentID | FirstName | LastName | Email            | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+------------------+------------+----------------+
|         1 | Rahul     | Sharma   | rahul@gmail.com  | 2004-05-15 | 2024-07-10     |
|         2 | Priya     | Patel    | priya@gmail.com  | 2003-08-22 | 2024-07-12     |
|         3 | Aarav     | Mehta    | aarav@gmail.com  | 2004-02-10 | 2024-07-15     |
|         4 | Ananya    | Shah     | ananya@gmail.com | 2003-11-18 | 2024-07-18     |
|         5 | Rohan     | Verma    | rohan@gmail.com  | 2004-06-25 | 2024-07-20     |
|         6 | Sneha     | Joshi    | sneha@gmail.com  | 2003-09-12 | 2024-07-22     |
|         7 | Arjun     | Singh    | arjun@gmail.com  | 2004-01-30 | 2024-07-25     |
|         8 | Kavya     | Desai    | kavya@gmail.com  | 2003-04-17 | 2024-07-28     |
|         9 | Aditya    | Kapoor   | aditya@gmail.com | 2004-10-05 | 2024-07-30     |
|        10 | Neha      | Patel    | neha@gmail.com   | 2003-12-20 | 2024-08-01     |
+-----------+-----------+----------+------------------+------------+----------------+
10 rows in set (0.01 sec)

--query
SELECT *
FROM STUDENTS
WHERE ENROLLMENTDATE > '2024-07-20';
SELECT *
    -> FROM STUDENTS
    -> WHERE ENROLLMENTDATE > '2024-07-20';
--output
+-----------+-----------+----------+------------------+------------+----------------+
| StudentID | FirstName | LastName | Email            | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+------------------+------------+----------------+
|         6 | Sneha     | Joshi    | sneha@gmail.com  | 2003-09-12 | 2024-07-22     |
|         7 | Arjun     | Singh    | arjun@gmail.com  | 2004-01-30 | 2024-07-25     |
|         8 | Kavya     | Desai    | kavya@gmail.com  | 2003-04-17 | 2024-07-28     |
|         9 | Aditya    | Kapoor   | aditya@gmail.com | 2004-10-05 | 2024-07-30     |
|        10 | Neha      | Patel    | neha@gmail.com   | 2003-12-20 | 2024-08-01     |
+-----------+-----------+----------+------------------+------------+----------------+
5 rows in set (0.00 sec)



3. Retrieve courses offered by the Mathematics department with a limit of 5 courses.
--query
SELECT *
FROM Course
WHERE DepartmentID = 4
LIMIT 5;
--output
+----------+-------------------+--------------+---------+
| CourseID | CourseName        | DepartmentID | Credits |
+----------+-------------------+--------------+---------+
|      108 | Digital Marketing |            4 |       3 |
|      109 | Graphic Design    |            4 |       4 |
+----------+-------------------+--------------+---------+
2 rows in set (0.00 sec)


4. Get the number of students enrolled in each course, filtering for courses with more than 5 students.

--query
SELECT CourseID, COUNT(StudentID) AS StudentCount
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 5;
-->Empty set (0.00 sec)


5. Find students who are enrolled in both  Python Programming and Data Structures.

--query
SELECT StudentID
FROM Enrollments
WHERE CourseID IN (
    SELECT CourseID
    FROM Course
    WHERE CourseName IN (' Python Programming', 'Data Structures')
)
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) = 2;
--output
Empty set (0.00 sec)

6. Find students who are either enrolled in  Database Management System or Data Structures.

--query
SELECT StudentID
FROM enrollments
WHERE COURSEID IN(
    SELECT COURSEID FROM COURSE 
    WHERE COURSENAME IN ('Database Management System','DATA STRUCTURES'));

--output
+-----------+
| StudentID |
+-----------+
|         1 |
|         4 |
+-----------+
2 rows in set (0.00 sec)


7. Calculate the average number of credits for all courses.

--query
SELECT AVG(CREDITS) AS averageCREDITS
FROM COURSE;

--output
+----------------+
| averageCREDITS |
+----------------+
|         3.6000 |
+----------------+
1 row in set (0.00 sec)


8. Find the maximum salary of instructors in the Computer Science department.
SELECT SALARY FROM INSTRUCTORS;
--output
ERROR 1054 (42S22): Unknown column 'SALARY' in 'field list'(BECAUSE SALARY COLUMN IS NOT IN THE TABLE)

9. Count the number of students enrolled in each department.

---query
SELECT d.DepartmentName, COUNT(DISTINCT e.StudentID) AS StudentCount
FROM Departments d
JOIN Course c
ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY d.DepartmentName;

--output
+------------------------+--------------+
| DepartmentName         | StudentCount |
+------------------------+--------------+
| Commerce               |            2 |
| Computer Science       |            3 |
| Design                 |            2 |
| Information Technology |            3 |
+------------------------+--------------+
4 rows in set (0.00 sec)


10. INNER JOIN: Retrieve students and their corresponding courses.
-- Retrieve students and their courses
--query
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Course c
ON e.CourseID = c.CourseID;

--output
+-----------+-----------+----------+----------------------------+
| StudentID | FirstName | LastName | CourseName                 |
+-----------+-----------+----------+----------------------------+
|         1 | Rahul     | Sharma   | Database Management System |
|         2 | Priya     | Patel    | Python Programming         |
|         3 | Aarav     | Mehta    | Web Development            |
|         4 | Ananya    | Shah     | Data Structures            |
|         5 | Rohan     | Verma    | Computer Networks          |
|         6 | Sneha     | Joshi    | Financial Accounting       |
|         7 | Arjun     | Singh    | Business Management        |
|         8 | Kavya     | Desai    | Digital Marketing          |
|         9 | Aditya    | Kapoor   | Graphic Design             |
|        10 | Neha      | Patel    | Data Analytics             |
+-----------+-----------+----------+----------------------------+



11. LEFT JOIN: Retrieve all students and their corresponding courses, if any.

--query
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Course c
ON e.CourseID = c.CourseID;

--output
+-----------+-----------+----------+----------------------------+
| StudentID | FirstName | LastName | CourseName                 |
+-----------+-----------+----------+----------------------------+
|         1 | Rahul     | Sharma   | Database Management System |
|         2 | Priya     | Patel    | Python Programming         |
|         3 | Aarav     | Mehta    | Web Development            |
|         4 | Ananya    | Shah     | Data Structures            |
|         5 | Rohan     | Verma    | Computer Networks          |
|         6 | Sneha     | Joshi    | Financial Accounting       |
|         7 | Arjun     | Singh    | Business Management        |
|         8 | Kavya     | Desai    | Digital Marketing          |
|         9 | Aditya    | Kapoor   | Graphic Design             |
|        10 | Neha      | Patel    | Data Analytics             |
+-----------+-----------+----------+----------------------------+
10 rows in set (0.00 sec)

12. Subquery: Find students enrolled in courses that have more than 10 students.

--query
SELECT StudentID
FROM Enrollments
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollments
    GROUP BY CourseID
    HAVING COUNT(StudentID) > 10
);

--output
Empty set (0.00 sec)


13. Extract the year from the EnrollmentDate of students.

--query
SELECT StudentID, FirstName, LastName,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;

--output
+-----------+-----------+----------+----------------+
| StudentID | FirstName | LastName | EnrollmentYear |
+-----------+-----------+----------+----------------+
|         1 | Rahul     | Sharma   |           2024 |
|         2 | Priya     | Patel    |           2024 |
|         3 | Aarav     | Mehta    |           2024 |
|         4 | Ananya    | Shah     |           2024 |
|         5 | Rohan     | Verma    |           2024 |
|         6 | Sneha     | Joshi    |           2024 |
|         7 | Arjun     | Singh    |           2024 |
|         8 | Kavya     | Desai    |           2024 |
|         9 | Aditya    | Kapoor   |           2024 |
|        10 | Neha      | Patel    |           2024 |
+-----------+-----------+----------+----------------+
10 rows in set (0.00 sec)

14. Concatenate the instructor's first and last name.

--query
SELECT InstructorID,
CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;

--output
+--------------+--------------+
| InstructorID | FullName     |
+--------------+--------------+
|          201 | Amit Sharma  |
|          202 | Priya Patel  |
|          203 | Rahul Mehta  |
|          204 | Neha Shah    |
|          205 | Vikas Verma  |
|          206 | Sneha Joshi  |
|          207 | Arjun Singh  |
|          208 | Kavita Desai |
|          209 | Rohit Kapoor |
|          210 | Anjali Patel |
+--------------+--------------+
10 rows in set (0.00 sec)


15. Calculate the running total of students enrolled in courses.

--query
select enrollmentid, studentid, courseid, enrollmentdate,
count(studentid) over (order by enrollmentdate) as RunningTotal
from enrollments;

--output
+--------------+-----------+----------+----------------+--------------+
| enrollmentid | studentid | courseid | enrollmentdate | RunningTotal |
+--------------+-----------+----------+----------------+--------------+
|            1 |         1 |      101 | 2024-07-10     |            1 |
|            2 |         2 |      102 | 2024-07-12     |            2 |
|            3 |         3 |      103 | 2024-07-15     |            3 |
|            4 |         4 |      104 | 2024-07-18     |            4 |
|            5 |         5 |      105 | 2024-07-20     |            5 |
|            6 |         6 |      106 | 2024-07-22     |            6 |
|            7 |         7 |      107 | 2024-07-25     |            7 |
|            8 |         8 |      108 | 2024-07-28     |            8 |
|            9 |         9 |      109 | 2024-07-30     |            9 |
|           10 |        10 |      110 | 2024-08-01     |           10 |
+--------------+-----------+----------+----------------+--------------+
10 rows in set (0.00 sec)

16. Label students as 'Senior' or 'Junior' based on their year of enrollment. (If the enrollment date is more than 4 years from the currendate, put the label 'Senior' otherwise 'Junior')

--query

select studentid, firstname, lastname, enrollmentdate,
case 
when enrollmentdate < date_sub(curdate(), interval 4 year)
then 'Senior'
else 'Junior'
end as studentlevel
from students;

--output
+-----------+-----------+----------+----------------+--------------+
| studentid | firstname | lastname | enrollmentdate | studentlevel |
+-----------+-----------+----------+----------------+--------------+
|         1 | Rahul     | Sharma   | 2024-07-10     | Junior       |
|         2 | Priya     | Patel    | 2024-07-12     | Junior       |
|         3 | Aarav     | Mehta    | 2024-07-15     | Junior       |
|         4 | Ananya    | Shah     | 2024-07-18     | Junior       |
|         5 | Rohan     | Verma    | 2024-07-20     | Junior       |
|         6 | Sneha     | Joshi    | 2024-07-22     | Junior       |
|         7 | Arjun     | Singh    | 2024-07-25     | Junior       |
|         8 | Kavya     | Desai    | 2024-07-28     | Junior       |
|         9 | Aditya    | Kapoor   | 2024-07-30     | Junior       |
|        10 | Neha      | Patel    | 2024-08-01     | Junior       |
+-----------+-----------+----------+----------------+--------------+
10 rows in set (0.00 sec)