--  링크 :https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_alias_column0
-- 조건 CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
-- where 완료 후 가상 Table로 group by 진행

SELECT COUNT(*) AS CATE_CNT, OUTCATE.CategoryName
FROM(
SELECT INCATE.*
FROM Categories AS INCATE -- Aliases 설정
WHERE INCATE.CategoryName IN ('Produce', 'Beverages')
) AS OUTCATE -- 가상 테이블 생성
GROUP BY OUTCATE.CategoryName

-- Number of Records: 2
-- OUTCATE_CNT	CategoryName
-- 1	Beverages
-- 1	Produce