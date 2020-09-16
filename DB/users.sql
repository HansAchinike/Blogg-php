-- Table creation
CREATE TABLE `users` (
`id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
`username` varchar(255) NOT NULL,
`email` varchar(255) NOT NULL,
`role` enum('Author', 'Admin') DEFAULT NULL,
`password` varchar(255) NOT NULL,
`created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
`updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Insert data into 'users' table
INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) 
VALUES(1, 'Hansrex', 'hansachinike1@gmail.com', 'Admin', 'mypassword', '2020-08-08', '2020-08-08'),
(2, 'HansRex', 'hansachinike@yahoo.com', '', 'ifeaka2000', '2020-09-14', '2020-09-14'),
(3, 'Samswift', 'achinikehans@gmail.com', 'Admin', 'ifeaka2000', '2020-09-14', '2020-09-14'),
(4, 'Daniel', 'daniel@gmail.com', '', 'ifeaka2000', '2020-09-15', '2020-09-15')