DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id`                         INT(11)      NOT NULL DEFAULT 0 AUTO_INCREMENT      COMMENT 'ID',
  `created_at`                 DATETIME     NULL     DEFAULT NULL                  COMMENT '登録日時',
  `updated_at`                 DATETIME     NULL     DEFAULT NULL                  COMMENT '更新日時',
  `deleted_at`                 DATETIME     NULL     DEFAULT NULL                  COMMENT '削除日時',
  `name`                       VARCHAR(255)	NOT NULL DEFAULT ''                    COMMENT '名前',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id`         INT(11)      NOT NULL DEFAULT 0      AUTO_INCREMENT COMMENT 'ID',
  `created_at` DATETIME     NULL     DEFAULT NULL                  COMMENT '登録日時',
  `updated_at` DATETIME     NULL     DEFAULT NULL                  COMMENT '更新日時',
  `deleted_at` DATETIME     NULL     DEFAULT NULL                  COMMENT '削除日時',
  `group_id`   INT(11)      NOT NULL DEFAULT 0                     COMMENT '組織ID',
  `name`       VARCHAR(255)	NOT NULL DEFAULT ''                    COMMENT '名前',
  PRIMARY KEY (`id`),
  FOREIGN KEY (`group_id`)
    REFERENCES `groups` (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;