SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `zekroBot2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zekroBot2`;

DROP TABLE IF EXISTS `autochans`;
CREATE TABLE IF NOT EXISTS `autochans` (
  `chan` text NOT NULL,
  `guild` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `gensets`;
CREATE TABLE IF NOT EXISTS `gensets` (
  `key` text NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `guilds`;
CREATE TABLE IF NOT EXISTS `guilds` (
  `guild` text NOT NULL,
  `prefix` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `autorole` text NOT NULL,
  `cmdlogchan` text NOT NULL,
  `vlogchan` text NOT NULL,
  `autochanprefix` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifychan` text NOT NULL,
  `joinmsg` text NOT NULL,
  `leavemsg` text NOT NULL,
  `r6opsurl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `membsets`;
CREATE TABLE IF NOT EXISTS `membsets` (
  `id` text NOT NULL,
  `bcignore` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `perms`;
CREATE TABLE IF NOT EXISTS `perms` (
  `role` text NOT NULL,
  `lvl` text NOT NULL,
  `guild` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `r6rerolls`;
CREATE TABLE IF NOT EXISTS `r6rerolls` (
  `guild` text NOT NULL,
  `member` text NOT NULL,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `r6swaps`;
CREATE TABLE IF NOT EXISTS `r6swaps` (
  `guild` text NOT NULL,
  `member` text NOT NULL,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `guild` text NOT NULL,
  `victim` text NOT NULL,
  `executor` text NOT NULL,
  `reason` text NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE IF NOT EXISTS `suggestion` (
  `userid` text NOT NULL,
  `tag` text NOT NULL,
  `guildid` text NOT NULL,
  `guildname` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `testing`;
CREATE TABLE IF NOT EXISTS `testing` (
  `user` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `membid` text NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `xp`;
CREATE TABLE IF NOT EXISTS `xp` (
  `user` text NOT NULL,
  `xp` bigint(20) NOT NULL DEFAULT '0',
  `guild` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
