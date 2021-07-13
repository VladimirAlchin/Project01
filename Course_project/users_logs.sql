CREATE DEFINER=`root`@`localhost` TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
	INSERT INTO `course`.`logs`
(`table`,
`actions`,
`users_id`,
`key_col`)
VALUES
('users',
1,
(select id from users where login = USER()),
NEW.id);

END