# Data1202assignment5
view fact and dimension table
```sql
SELECT * FROM training_facts;
SELECT * FROM training_dimensions;
```

no data cleaning requried 

Combine fact_table and Dimension_table with common id and display it
```
sql
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
```