CREATE VIEW Usuario AS
SELECT firstname as primeiroNome, lastname as ultimoNome, username as nomeUsuario, encryptPassword as senha, email, isAdmin
WHERE isDeleted = false;