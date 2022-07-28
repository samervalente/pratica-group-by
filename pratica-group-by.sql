-- Questão 01: Utilizando uma query, obtenha a quantidade de experiências (experiences) atuais, ou seja, com “endDate” diferente de NULL.
SELECT COUNT("endDate") as currentExperiences FROM experiences

-- Questão 02: Utilizando uma *query*, obtenha a quantidade de graduações (`educations`) por usuário, incluindo o seu id.
SELECT "userId" as id, COUNT("endDate") as educations
FROM educations
GROUP BY "userId"

-- Questão 03: Utilizando uma query, obtenha a quantidade de depoimentos(testimonials) que o usuário com id 435 efetuou, incluindo o seu nome.
SELECT users.name as writer, COUNT(message) as testimoniailCount
FROM testimonials t
JOIN users
ON users.id = "writerId"
WHERE "writerId" = 435
GROUP BY users.name

-- Questão 04: Utilizando uma query, obtenha o maior salário das vagas (jobs) ativas (active = true) e o nome das posições (roles) dessas vagas ordenadas de forma ascendente
SELECT MAX(salary) as maximumSalary, roles.name as role FROM jobs
JOIN roles
ON roles.id = jobs."roleId"
WHERE jobs.active = true
GROUP BY roles.name
ORDER BY maximumSalary ASC