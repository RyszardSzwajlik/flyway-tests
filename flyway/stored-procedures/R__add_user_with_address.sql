USE flyway_test_db;

DELIMITER $$

CREATE PROCEDURE add_user_with_address_v1(
    name_param VARCHAR(50),
    surname_param VARCHAR(50),
    city_param VARCHAR(50),
    street_param VARCHAR(100)
)
BEGIN

    INSERT INTO address ( city, street ) VALUES ( city_param, street_param );

    INSERT INTO user ( name, surname, address_id ) VALUES
        ( name_param, surname_param, (SELECT id FROM address WHERE city=city_param AND street=street_param));

END $$
