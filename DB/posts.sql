-- Table creation
CREATE TABLE `posts` (
`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`user_id` int(11) DEFAULT NULL,
`title` varchar(255) NOT NULL,
`slug` varchar(255) NOT NULL UNIQUE,
`views` int(11) NOT NULL DEFAULT '0',
`image` varchar(255) NOT NULL,
`body` text NOT NULL,
`published` tinyint(1) NOT NULL,
`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into 'posts' table
INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, 'Exotic cars', 'Exotic-cars', 0, 'bugatti.jpg', 'The redefinition of modern cars', 1, '2020-09-09 07:58:02', '2018-02-01 11:02:31'),
(2, 1, 'Upcoming series', 'upcoming-series', 0, 'transfer.jpeg', 'more upcoming news will be made available on this topic soon.', 1, '2020-09-15 18:41:21', '2020-09-15 18:41:21'),
(4, 3, 'CORONAVIRUS', 'coronavirus', 10, 'covid.jpeg', 'The ravaging and deadly virus,erupted in the year 2020. the first case of covid-19 was reported in Wuhan-China. Since then, it has spread across different nations. There has been an increase in death rate since then.We have over 10 million cases in the world today.', 1, '2020-09-15 19:06:28', '2020-09-15 19:06:28')