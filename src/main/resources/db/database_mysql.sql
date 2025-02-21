-- railway.expenses definição

CREATE TABLE `expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_users` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `create_at` timestamp NOT NULL,
  `delete_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- railway.product definição

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_expenses` int NOT NULL,
  `amount` int DEFAULT NULL,
  `value` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `create_at` timestamp NOT NULL,
  `delete_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- railway.users definição

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL,
  `delete_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- relacionamento de tabelas

ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_expenses`) REFERENCES `expenses` (`id`);

ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);



