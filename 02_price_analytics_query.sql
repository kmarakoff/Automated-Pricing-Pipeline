SELECT
    product_nm,
    price,
    scraped_date,
    -- This calculates the historical average price across the entire database for that specific book
    AVG(price) OVER (PARTITION BY product_nm) AS historical_average_price,
    -- This calculates the exact dollar fluctuation for today's price
    price - AVG(price) OVER (PARTITION BY product_nm) AS daily_price_fluctuation
FROM competitor_pricing
ORDER BY scraped_date DESC, price DESC;