CREATE TABLE IF NOT EXISTS `#__ra_email_log` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`datetime` DATETIME NULL  DEFAULT NULL ,
`to` VARCHAR(255)  NOT NULL ,
`title` VARCHAR(255)  NULL  DEFAULT "",
`replyto` VARCHAR(255)  NULL  DEFAULT "",
`sent` BOOLEAN NOT NULL  DEFAULT "0",
`message` VARCHAR(255)  NULL  DEFAULT "",
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8mb4_unicode_ci;

CREATE INDEX `#__ra_email_log_datetime` ON `#__ra_email_log`(`datetime`);

CREATE INDEX `#__ra_email_log_sent` ON `#__ra_email_log`(`sent`);

