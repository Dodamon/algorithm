-- 코드를 입력하세요
# SELECT MONTH(MAIN.SART_DATE) MONTH, MAIN.CAR_ID, COUNT(MAIN.CAR_ID) RECORDS
# FROM (
#     SELECT *
#     FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY SUB
#     WHERE DATE_FORMAT(SUB.START_DATE, "%Y-%M") IN ('2022-08', '2022-09', '2022-10')
# ) MAIN
# WHERE RECORDS >= 5
# GROUP BY MAIN.CAR_ID
# ORDER BY MONTH DESC, 
SELECT MONTH(START_DATE) MONTH, CAR_ID, COUNT(CAR_ID) RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE DATE_FORMAT(START_DATE, "%Y-%m") REGEXP '2022-08|2022-09|2022-10' 
    GROUP BY CAR_ID
    HAVING COUNT(CAR_ID) >= 5
    ORDER BY CAR_ID
    )
AND MONTH(START_DATE) REGEXP '8|9|10'
GROUP BY MONTH, CAR_ID
ORDER BY MONTH, CAR_ID DESC

