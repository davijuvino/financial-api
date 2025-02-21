
-- INSERT DADOS


INSERT INTO railway.users
(id, name, email, password, create_at, delete_at, update_at)
VALUES(1, 'admin', 'admin@gmail.com', '123456', '2025-02-08 14:49:11', NULL, NULL);

INSERT INTO railway.expenses
(id, id_users, name, category, description, create_at, delete_at, update_at)
VALUES(1, 1, 'Edp', 'Energia', 'Fornecimento de energia residencial', '2025-02-08 14:56:51', NULL, NULL);

INSERT INTO railway.product
(id, id_expenses, amount, value, `date`, create_at, delete_at, update_at)
VALUES(1, 1, 0, 0.0, '2025-02-08', '2025-02-08 15:24:15', NULL, NULL);