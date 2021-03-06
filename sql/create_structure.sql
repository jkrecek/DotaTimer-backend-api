DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`(
     `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
     `account` VARCHAR(100) UNIQUE NOT NULL ,
     `googleToken` VARCHAR(50) NOT NULL ,
     `appToken` VARCHAR(50) NOT NULL ,
     `displayName` VARCHAR(20) UNIQUE NOT NULL ,
     PRIMARY KEY (`id`)
)  ENGINE=INNODB COMMENT='' ROW_FORMAT=DEFAULT  ;

DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`(
     `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
     `name` VARCHAR(20) UNIQUE NOT NULL ,
     `password` VARCHAR(50) NOT NULL ,
     `changed` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     `timerVal` TIMESTAMP DEFAULT  '0000-00-00 00:00:00',
     `timerAuthor` INT(10) UNSIGNED ,
     `deleteVal` VARCHAR(200) ,     
     `deleteAuthor` INT(10) ,     
     PRIMARY KEY (`id`)
)  ENGINE=INNODB COMMENT='' ROW_FORMAT=DEFAULT  ;

DROP TABLE IF EXISTS `user_teams`;
CREATE TABLE `user_teams`(
     `userId` INT(10) UNSIGNED NOT NULL ,     
     `teamId` INT(10) UNSIGNED NOT NULL ,     
     `state` INT(1) UNSIGNED NOT NULL DEFAULT 0,     
     `reason` VARCHAR(200) DEFAULT '',
     PRIMARY KEY (`userId`, `teamId`)
)  ENGINE=INNODB COMMENT='' ROW_FORMAT=DEFAULT  ;