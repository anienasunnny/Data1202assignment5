SELECT * FROM training_facts;

SELECT * FROM training_dimensions;

CREATE VIEW combined_table AS
SELECT
    f.*,
    d.`Country`,
    d.`City`,
    d.`State`,
    d.`Postal Code`,
    d.`Region`,
    d.`Sub-Category`
FROM
    training_facts f
INNER JOIN
    training_dimensions d ON f.`Row ID` = d.`Row ID`;
    
    
SELECT * FROM combined_table;


/*Find the maximum sales for each City*/


SELECT City, MAX(Sales) AS Max_Sales
FROM combined_table
GROUP BY City;