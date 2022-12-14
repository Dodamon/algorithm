# SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME
# FROM ANIMAL_OUTS OUTS INNER JOIN ANIMAL_INS INS
# ON OUTS.ANIMAL_ID = INS.ANIMAL_ID 
# WHERE INS.SEX_UPON_INTAKE LIKE "Intact%"
# AND OUTS.SEX_UPON_OUTCOME NOT LIKE "Intact%" 
# ORDER BY OUTS.ANIMAL_ID

SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME
FROM ANIMAL_OUTS OUTS INNER JOIN ANIMAL_INS INS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE INS.SEX_UPON_INTAKE LIKE "intact%" AND
OUTS.SEX_UPON_OUTCOME NOT LIKE "intact%"
ORDER BY OUTS.ANIMAL_ID