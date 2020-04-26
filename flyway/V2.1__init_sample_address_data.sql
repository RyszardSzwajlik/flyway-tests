USE flyway_test_db;

INSERT INTO address ( city, street ) VALUES
    ( 'San Francisco', '6th' );

INSERT INTO user ( name, surname, address_id ) VALUES
    ( 'Darth', 'Vader', (SELECT id FROM address WHERE city='San Francisco'));
