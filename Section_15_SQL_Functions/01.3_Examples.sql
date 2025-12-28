SELECT *
FROM Students

SELECT *, ROW_NUMBER() OVER(PARTITION BY subject ORDER BY marks DESC) AS [Row Number DESC]
FROM Students

SELECT *, ROW_NUMBER() OVER(PARTITION BY subject ORDER BY marks ASC) AS [Row Number ASC]
FROM Students

SELECT *, ROW_NUMBER() OVER(PARTITION BY student_name ORDER BY marks ASC) AS [Row Number ASC]
FROM Students

SELECT *, RANK() OVER(PARTITION BY student_name ORDER BY marks DESC) AS [Rank DESC]
FROM Students

SELECT *, RANK() OVER(PARTITION BY subject ORDER BY marks DESC) AS [Rank DESC]
FROM Students

SELECT *, DENSE_RANK() OVER(PARTITION BY subject ORDER BY marks DESC) AS [Dense Rank DESC]
FROM Students

SELECT *, DENSE_RANK() OVER(PARTITION BY student_name ORDER BY marks DESC) AS [Dense Rank DESC]
FROM Students