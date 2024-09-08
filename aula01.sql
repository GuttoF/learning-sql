-- Seleciona todas as colunas com *
SELECT * FROM customers;

-- Exibe somente contact_name e city
SELECT contact_name, city FROM customers;

-- Lista todos os países dos clientes
SELECT country FROM customers;

-- Lista os países sem repetir
SELECT DISTINCT country from customers;

-- Conta quantos países únicos existem
SELECT COUNT(DISTINCT country) FROM customers;

-- Seleciona todos os clientes do México
SELECT * FROM customers WHERE country='Mexico';

-- Seleciona clientes com id específico
SELECT * FROM customers WHERE customer_id='ANATR';

-- Utiliza AND para múltiplos critérios
SELECT * FROM customers WHERE country='Germany' AND city='Berlin';

-- Utiliza OR para mais de uma cidade
SELECT * FROM customers WHERE city='Berlin' OR city='Aachen';

-- Utiliza NOT para excluir a Alemanha
SELECT * FROM customers WHERE NOT country='Germany';
-- Pode escrever assim também
SELECT * FROM customers WHERE country<>'Germany';

-- Combina AND, OR e NOT
SELECT * FROM customers WHERE country='Germany' AND (city='Berlin' OR city='Aachen');

-- Exclui clientes da Alemanha e EUA
SELECT * FROM customers WHERE country<>'Germany' AND country<>'USA';
-- Pode escrever assim
SELECT * FROM customers WHERE NOT(country='Germany' AND country='USA');
-- Ou assim
SELECT * FROM customers WHERE NOT country='Germany' AND NOT country='USA';

-- Ordena clientes pelo país
SELECT * FROM customers ORDER BY country;

-- Ordena por país em ordem descendente
SELECT * FROM customers ORDER BY country DESC;

-- Ordena por país e nome do contato
SELECT * FROM customers ORDER BY country, contact_name;

-- Ordena por país em ordem ascendente e nome em ordem descendente
SELECT * FROM customers ORDER BY country ASC, contact_name DESC;

-- Clientes com nome de contato começando por "a"
SELECT * FROM customers WHERE contact_name LIKE 'a%';

-- Clientes com nome de contato não começando por "a"
SELECT * FROM customers WHERE contact_name NOT LIKE 'a%';

-- Clientes de países específicos
SELECT * FROM customers WHERE country IN ('Germany', 'France', 'UK');

-- Clientes não localizados em 'Germany', 'France', 'UK'
SELECT * FROM customers WHERE country NOT IN ('Germany', 'France', 'UK');









