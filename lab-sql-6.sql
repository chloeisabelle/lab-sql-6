drop table if exists films_2020;
CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;


select * from films_2020;

SET SQL_SAFE_UPDATES = 0;

Alter table films_2020 Change rental_duration rental_duration CHAR(34);

Update films_2020  Set rental_duration = "3 days";

SET SQL_SAFE_UPDATES = 0;

Alter table films_2020 Change rental_rate rental_rate char(34);
Update films_2020  Set rental_rate = "2.99 €";


Alter table films_2020 Change replacement_cost replacement_cost char(34);
Update films_2020  Set replacement_cost = "8.99 €";


select * from films_2020;