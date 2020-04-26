USE flyway_test_db;

DELIMITER $$

CREATE PROCEDURE list_users_v1()
BEGIN

    select u.name, u.surname, a.city, a.street from user u join address a on u.address_id = a.id;

END $$
