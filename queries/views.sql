CREATE VIEW Usuario AS
SELECT firstname as primeiroNome, lastname as ultimoNome, username, encryptPassword as senha, email, isAdmin
WHERE isDeleted = false;
