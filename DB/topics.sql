
CREATE TABLE `topics` (
`id` int(11),
`name` varchar(255),
`slug` varchar(255) UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'CARS', 'cars'),
(2, 'Football News', 'football news'),
(3, 'Technology', 'technology')
(3, 'Entertainment', 'entertainment')