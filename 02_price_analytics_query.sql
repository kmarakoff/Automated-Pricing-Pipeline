SELECT
    product_nm,
    price,
    scraped_date,
    AVG(price) OVER (PARTITION BY product_nm) AS historical_average_price,
    price - AVG(price) OVER (PARTITION BY product_nm) AS daily_price_fluctuation
FROM competitor_pricing
ORDER BY scraped_date DESC, price DESC;
