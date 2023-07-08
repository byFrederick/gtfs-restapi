CREATE TABLE `agency`(
	`agency_id` INT NOT NULL,
	`agency_name` VARCHAR(38) NOT NULL,
	`agency_url` VARCHAR(34) NOT NULL,
	`agency_timezone` VARCHAR(21) NOT NULL,
	`agency_lang` VARCHAR(2) NOT NULL,
PRIMARY KEY (`agency_id`)
);

CREATE TABLE `calendar`(
	`service_id` INT NOT NULL,
	`monday` TINYINT(1) NOT NULL,
	`tuesday` TINYINT(1) NOT NULL,
	`wednesday` TINYINT(1) NOT NULL,
	`thursday` TINYINT(1) NOT NULL,
	`friday` TINYINT(1) NOT NULL,
	`saturday` TINYINT(1) NOT NULL,
	`sunday` TINYINT(1) NOT NULL,
	`start_date` DATE NOT NULL,
	`end_date` DATE NOT NULL,
PRIMARY KEY (`service_id`)
);

CREATE TABLE `routes`(
	`route_id` INT NOT NULL,
	`agency_id` INT NOT NULL,
	`route_short_name` VARCHAR(7) NOT NULL,
	`route_long_name` VARCHAR(185) NOT NULL,
	`route_type` INT NOT NULL,
PRIMARY KEY (`route_id`)
);

CREATE TABLE `stop_times`(
	`trip_id` VARCHAR(7) NOT NULL,
	`arrival_time` VARCHAR(8) NOT NULL,
	`departure_time` VARCHAR(8) NOT NULL,
	`stop_id` VARCHAR(7) NOT NULL,
	`stop_sequence` INT NOT NULL
);

CREATE TABLE `stops`(
	`stop_id` VARCHAR(7) NOT NULL,
	`stop_name` VARCHAR(109) NOT NULL,
	`stop_lat` DECIMAL(10, 7) NULL,
	`stop_lon` DECIMAL(11, 7) NULL,
PRIMARY KEY (`stop_id`)
);

CREATE TABLE `trips`(
	`route_id` INT NOT NULL,
	`service_id` INT NOT NULL,
	`trip_id` VARCHAR(7) NOT NULL,
PRIMARY KEY (`trip_id`)
);