# Write your MySQL query statement below
SELECT S.STUDENT_ID,S.STUDENT_NAME,SUB.SUBJECT_NAME,
COUNT(E.SUBJECT_NAME) AS ATTENDED_EXAMS
FROM STUDENTS S
CROSS JOIN SUBJECTS SUB
LEFT JOIN EXAMINATIONS E
ON S.STUDENT_ID=E.STUDENT_ID AND SUB.SUBJECT_NAME=E.SUBJECT_NAME
GROUP BY S.STUDENT_ID,S.STUDENT_NAME,SUB.SUBJECT_NAME
ORDER BY S.STUDENT_ID,SUB.SUBJECT_NAME;