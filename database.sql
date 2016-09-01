-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `id`          SMALLINT(6)  NOT NULL,
  `name`        VARCHAR(256) NOT NULL,
  `description` TEXT         NOT NULL,
  `position`    SMALLINT(6)  NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `pm`
-- 

CREATE TABLE `pm` (
  `id`        BIGINT(20)   NOT NULL,
  `id2`       INT(11)      NOT NULL,
  `title`     VARCHAR(256) NOT NULL,
  `user1`     BIGINT(20)   NOT NULL,
  `user2`     BIGINT(20)   NOT NULL,
  `message`   TEXT         NOT NULL,
  `timestamp` INT(10)      NOT NULL,
  `user1read` VARCHAR(3)   NOT NULL,
  `user2read` VARCHAR(3)   NOT NULL
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `topics`
-- 

CREATE TABLE `topics` (
  `parent`     SMALLINT(6)  NOT NULL,
  `id`         INT(11)      NOT NULL,
  `id2`        INT(11)      NOT NULL,
  `title`      VARCHAR(256) NOT NULL,
  `message`    LONGTEXT     NOT NULL,
  `authorid`   INT(11)      NOT NULL,
  `timestamp`  INT(11)      NOT NULL,
  `timestamp2` INT(11)      NOT NULL,
  PRIMARY KEY (`id`, `id2`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id`          BIGINT(20)   NOT NULL,
  `username`    VARCHAR(255) NOT NULL,
  `password`    VARCHAR(255) NOT NULL,
  `email`       VARCHAR(255) NOT NULL,
  `avatar`      TEXT         NOT NULL,
  `signup_date` INT(10)      NOT NULL
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8;
