-- Exploratory data analysis 
SELECT *
FROM layoffs_staging2 ;

SELECT max(total_laid_off),max(percentage_laid_off)
FROM layoffs_staging2 ;

SELECT *
FROM layoffs_staging2
where percentage_laid_off = 1 
order by total_laid_off DESC ;

SELECT company , sum(total_laid_off)
FROM layoffs_staging2
group by company 
order by 2 DESC ;


SELECT min(`date`),max(`date`)
FROM layoffs_staging2;




SELECT industry , sum(total_laid_off) 
FROM layoffs_staging2
group by industry 
order by 2 DESC ;



SELECT country , sum(total_laid_off) 
FROM layoffs_staging2
group by country 
order by 1 DESC ;


SELECT YEAR(`date`) , sum(total_laid_off) 
FROM layoffs_staging2
group by YEAR(`date`) 
order by 1 DESC ;

SELECT stage , sum(total_laid_off) 
FROM layoffs_staging2
group by stage
order by 2 DESC ;



SELECT stage , avg(total_laid_off) 
FROM layoffs_staging2
group by stage
order by 2 DESC ;



SELECT substring(`date`,1,7) as `month` , sum(total_laid_off) 
FROM layoffs_staging2 
where substring(`date`,1,7) is not null 
group by `month` 
order by 1 asc ;


with rolling_total  AS 
(
SELECT substring(`date`,1,7) as `month` , sum(total_laid_off) AS total_off
FROM layoffs_staging2 
where substring(`date`,1,7) is not null 
group by `month` 
order by 1 asc 
)
SELECT `month` , total_off ,SUM(total_off) OVER(ORDER BY `month`) AS Rolling_Total
FROM rolling_total;


SELECT company,YEAR(`date`), sum(total_laid_off)
FROM layoffs_staging2
group by company ,YEAR(`date`)
order by 3 DESC ;
 
WITH company_Year (company , years ,total_laid_off ) AS
(
SELECT company,YEAR(`date`), sum(total_laid_off)
FROM layoffs_staging2
group by company ,YEAR(`date`)
), company_Year_Rank AS 
(
SELECT * ,
DENSE_RANK () OVER(PARTITION BY years order by total_laid_off DESC) AS ranking 
FROM company_Year
where years is not null )
SELECT * 
from company_Year_Rank
where ranking <=5 ;


SELECT country , avg(percentage_laid_off) AS AVG_percentage_laid_off
FROM layoffs_staging2
group by country 
order by AVG_percentage_laid_off DESC ; 




