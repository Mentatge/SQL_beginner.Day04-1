CREATE VIEW mv_dmitriy_visits_and_eats AS
SELECT p.name AS pizzeria_name
FROM person
JOIN person_visits AS pv ON pv.person_id = person.id
JOIN pizzeria AS p ON p.id = pv.pizzeria_id
JOIN menu ON menu.pizzeria_id = p.id
WHERE person.name = 'Dmitriy' AND menu.price < 800 AND pv.visit_date = '2022-01-08'