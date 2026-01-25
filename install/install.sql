-- MySQL dump for JobBox Application
-- Converted from database.sql

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert default admin user (will be replaced during installation)
INSERT INTO `users` (`username`, `email`, `password`, `role`) VALUES
('admin', 'admin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin');

-- Table structure for job listings
CREATE TABLE IF NOT EXISTS `jb_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `content` longtext,
  `address` varchar(255),
  `salary_min` decimal(10,2),
  `salary_max` decimal(10,2),
  `is_featured` tinyint(1) DEFAULT 0,
  `duration` varchar(50),
  `career_level` varchar(100),
  `gender` varchar(20),
  `job_type` varchar(50),
  `languages` text,
  `benefits` text,
  `skills` text,
  `experience` varchar(50),
  `degree_requirements` varchar(255),
  `certificate` varchar(255),
  `quantity` int(11) DEFAULT 1,
  `end_date` date,
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `order` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `moderated_by` int(11),
  `moderated_at` timestamp NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_type` varchar(255),
  `author_id` int(11),
  `image` varchar(255),
  `website_link` varchar(255),
  `is_remote` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for companies
CREATE TABLE IF NOT EXISTS `jb_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255),
  `banner` varchar(255),
  `phone` varchar(50),
  `email` varchar(100),
  `address` varchar(255),
  `description` text,
  `content` longtext,
  `website` varchar(255),
  `facebook` varchar(255),
  `twitter` varchar(255),
  `linkedin` varchar(255),
  `google_plus` varchar(255),
  `youtube` varchar(255),
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `order` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for job categories
CREATE TABLE IF NOT EXISTS `jb_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255),
  `icon` varchar(100),
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `order` int(11) DEFAULT 0,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext,
  `template` varchar(50),
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `order` int(11) DEFAULT 0,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_type` varchar(255),
  `author_id` int(11),
  `image` varchar(255),
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert default settings
INSERT INTO `settings` (`key`, `value`) VALUES
('site_title', 'JobBox'),
('site_description', 'Your premier job board'),
('admin_email', 'admin@example.com'),
('theme', 'default'),
('logo', 'storage/logo.png'),
('favicon', 'storage/favicon.png'),
('copyright', '© 2026 JobBox. All rights reserved.');

-- Table structure for menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `location` varchar(255),
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for menu items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255),
  `target` varchar(20) DEFAULT '_self',
  `order` int(11) DEFAULT 0,
  `css_class` varchar(255),
  `parent_id` int(11) DEFAULT 0,
  `reference_id` int(11),
  `reference_type` varchar(255),
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(10) NOT NULL,
  `lang_name` varchar(50) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `status` enum('published','pending','draft','deleted') DEFAULT 'published',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert default language
INSERT INTO `languages` (`lang_code`, `lang_name`, `is_default`, `status`) VALUES
('en', 'English', 1, 'published');

-- Table structure for language meta
CREATE TABLE IF NOT EXISTS `language_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_id` int(11) NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `lang_parent_id` int(11),
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`),
  KEY `lang_code` (`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for themes
CREATE TABLE IF NOT EXISTS `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `version` varchar(20),
  `description` text,
  `author` varchar(255),
  `status` enum('activated','disabled') DEFAULT 'activated',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert default theme
INSERT INTO `themes` (`name`, `version`, `description`, `author`, `status`) VALUES
('jobbox', '1.0.0', 'Default JobBox theme', 'JobBox Team', 'activated');

COMMIT;