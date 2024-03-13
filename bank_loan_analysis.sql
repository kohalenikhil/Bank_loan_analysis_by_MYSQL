SELECT * FROM bank.`loan_analysis`;

#1 Calculate the average annual income for fully paid loans:
SELECT AVG(annual_income) AS avg_annual_income 
FROM  loan_analysis
WHERE loan_status = 'Fully Paid';

#2 Find the loan with the highest total payment:
SELECT * FROM loan_analysis
ORDER BY total_payment DESC 
LIMIT 1;

#3 Count the number of loans for each sub-grade:
SELECT sub_grade, COUNT(*) AS loan_count 
FROM loan_analysis
GROUP BY sub_grade;

#4 Calculate the total loan amount for each verification status:
SELECT verification_status, SUM(loan_amount) AS total_loan_amount 
FROM loan_analysis 
GROUP BY verification_status;

#5 Calculate the total payments made for fully paid loans:
SELECT SUM(total_payment) AS total_payments 
FROM loan_analysis 
WHERE loan_status = 'Fully Paid';

#6 Count the number of loans for each loan purpose:
SELECT purpose, COUNT(*) AS loan_count 
FROM loan_analysis 
GROUP BY purpose;

#7 Identify loans with an interest rate greater than 15% and a loan amount less than 20,000:
SELECT * 
FROM loan_analysis 
WHERE int_rate > 0.15 AND loan_amount < 20000;

#8 Count the number of loans for each loan status:
SELECT loan_status, COUNT(*) AS loan_count 
FROM loan_analysis 
GROUP BY loan_status;


-- THE END --




