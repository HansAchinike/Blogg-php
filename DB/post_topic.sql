
CREATE TABLE `post_topic` (
`id` int(11),
`post_id` int(11) UNIQUE,
`topic_id` int(11)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2)