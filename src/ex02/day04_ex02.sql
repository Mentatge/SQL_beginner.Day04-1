CREATE VIEW v_generated_dates AS
SELECT g::date AS generated_date
FROM 
generate_series('2022-01-01'::timestamp,
                '2022-01-31', '1 day') AS g;
				