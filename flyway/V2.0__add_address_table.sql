USE flyway_test_db;

CREATE TABLE `address` (
    `id` int NOT NULL AUTO_INCREMENT,
    `city` varchar(50),
    `street` varchar(100),
    PRIMARY KEY (`id`)
);

ALTER TABLE `user` ADD address_id int;
ALTER TABLE `user` ADD CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES address(id);
