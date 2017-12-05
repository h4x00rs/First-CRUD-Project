DROP SCHEMA IF EXISTS `users_db`;

CREATE SCHEMA IF NOT EXISTS `users_db`;

USE `users_db`;

-- ******************** Table Definitions ******************** 
CREATE TABLE `users` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`user_name` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL
);

-- ************************ Test Data for table users ************************ 
INSERT INTO `users` (`id`, `user_name`, `password`) VALUES (1, 'ivan', 'ivan_123');
INSERT INTO `users` (`id`, `user_name`, `password`) VALUES (2, 'petr', 'petr_123');
INSERT INTO `users` (`id`, `user_name`, `password`) VALUES (3, 'sidor', 'sidor_123');
