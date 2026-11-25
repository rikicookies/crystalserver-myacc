-- MyAAC compatibility additions for the current Crystal Server schema.
-- Run only after verifying the target database name and taking a backup.
-- These statements add missing AAC fields; they do not delete or rewrite game data.

ALTER TABLE accounts ADD COLUMN `key` VARCHAR(64) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN created INT NOT NULL DEFAULT 0;
ALTER TABLE accounts ADD COLUMN rlname VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN phone VARCHAR(15) NULL;
ALTER TABLE accounts ADD COLUMN location VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN country VARCHAR(3) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN web_lastlogin INT NOT NULL DEFAULT 0;
ALTER TABLE accounts ADD COLUMN web_flags INT NOT NULL DEFAULT 0;
ALTER TABLE accounts ADD COLUMN email_hash VARCHAR(32) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN email_verified TINYINT(1) NOT NULL DEFAULT 0;
ALTER TABLE accounts ADD COLUMN email_new VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN email_new_time INT NOT NULL DEFAULT 0;
ALTER TABLE accounts ADD COLUMN email_code VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE accounts ADD COLUMN email_next INT NOT NULL DEFAULT 0;
ALTER TABLE guilds ADD COLUMN description TEXT NOT NULL;
ALTER TABLE guilds ADD COLUMN logo_name VARCHAR(255) NOT NULL DEFAULT 'default.gif';
ALTER TABLE players ADD COLUMN created INT NOT NULL DEFAULT 0;
ALTER TABLE players ADD COLUMN hidden TINYINT(1) NOT NULL DEFAULT 0;
ALTER TABLE players ADD COLUMN comment TEXT NOT NULL;
ALTER TABLE players ADD COLUMN ismain TINYINT(1) NOT NULL DEFAULT 0;
