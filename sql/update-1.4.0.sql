CREATE TABLE `glpi_plugin_tasklists_taskstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `tasktypes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(200) DEFAULT '#CCC' NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `glpi_plugin_tasklists_tasks` ADD `plugin_tasklists_taskstates_id` int(11) NOT NULL default '0' COMMENT 'RELATION to glpi_plugin_tasklists_taskstates (id)';