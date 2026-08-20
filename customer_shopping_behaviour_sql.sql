SELECT * from customer_shopping_behaviour_preprocessed


SELECT SUM(purchase_amount) AS Total_Revenue from customer_shopping_behaviour_preprocessed;


SELECT AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping_behaviour_preprocessed;


SELECT
    MIN(purchase_amount) AS Minimum_Purchase
FROM customer_shopping_behaviour_preprocessed;


SELECT
    MAX(purchase_amount) AS Maximum_Purchase
FROM customer_shopping_behaviour_preprocessed;


SELECT
    gender,
    COUNT(*) AS Number_of_Purchases,
    SUM(purchase_amount) AS Total_Revenue,
    AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping_behaviour_preprocessed
GROUP BY gender;


SELECT
    age_group,
    COUNT(*) AS Number_of_Purchases,
    SUM(purchase_amount) AS Total_Purchase_Amount,
    AVG(purchase_amount) AS Average_Purchase_Amount
FROM customer_shopping_behaviour_preprocessed
GROUP BY age_group
ORDER BY Total_Purchase_Amount DESC;


SELECT
    previous_purchases,
    COUNT(*) AS Number_of_Customers,
    AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping_behaviour_preprocessed
GROUP BY previous_purchases
ORDER BY previous_purchases;


SELECT
    category,
    COUNT(*) AS Number_of_Purchases,
    SUM(purchase_amount) AS Total_Sales,
    AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping_behaviour_preprocessed
GROUP BY category
ORDER BY Number_of_Purchases DESC;


SELECT
    season,
    COUNT(*) AS Number_of_Purchases,
    SUM(purchase_amount) AS Total_Sales,
    AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping_behaviour_preprocessed
GROUP BY season
ORDER BY Total_Sales DESC;


SELECT
    discount_applied,
    COUNT(*) AS Number_of_Purchases,
    AVG(purchase_amount) AS Average_Purchase,
    SUM(purchase_amount) AS Total_Sales
FROM customer_shopping_behaviour_preprocessed
GROUP BY discount_applied
ORDER BY Average_Purchase DESC;


SELECT
    CASE
        WHEN (review_rating) < 3 THEN 'Low Rating'
        WHEN (review_rating) < 4 THEN 'Medium Rating'
        ELSE 'High Rating'
    END AS Rating_Group,
    COUNT(*) AS Number_of_Purchases,
    AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping_behaviour_preprocessed
GROUP BY
    CASE
        WHEN review_rating < 3 THEN 'Low Rating'
        WHEN review_rating < 4 THEN 'Medium Rating'
        ELSE 'High Rating'
    END
ORDER BY Average_Purchase DESC;



SELECT payment_method, 
COUNT(*) AS Number_of_Purchases, 
SUM(purchase_amount) AS Total_Sales, 
AVG(purchase_amount) AS Average_Purchase 
FROM customer_shopping_behaviour_preprocessed
GROUP BY payment_method 
ORDER BY Number_of_Purchases DESC;


SELECT
    CASE
        WHEN previous_purchases = 0 THEN 'New Customer'
        ELSE 'Returning Customer'
    END AS Customer_Type,
    COUNT(*) AS Number_of_Customers,
    SUM(purchase_amount) AS Total_Purchase_Amount,
    AVG(purchase_amount) AS Average_Purchase,
    AVG(Review_Rating) AS Average_Rating
FROM customer_shopping_behaviour_preprocessed
GROUP BY
    CASE
        WHEN Previous_Purchases = 0 THEN 'New Customer'
        ELSE 'Returning Customer'
    END
ORDER BY Customer_Type;


SELECT 
    frequency_of_purchases,
    COUNT(*) AS Number_of_Customers
FROM customer_shopping_behaviour_preprocessed
GROUP BY frequency_of_purchases
ORDER BY Number_of_Customers DESC;




