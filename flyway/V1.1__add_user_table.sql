USE flyway_test_db;

CREATE TABLE `user` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `surname` varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
);

