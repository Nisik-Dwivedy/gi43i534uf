-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 05:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstdb`
--
CREATE DATABASE IF NOT EXISTS `firstdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `firstdb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `password` char(255) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `reg_date`) VALUES
(5, 'nisik', '$2y$10$n5lykH0DbcKUL2BxRvsXYuiLh8EEaAOPjDRWO5YUCSpDP9B24xR/m', '2025-02-27 13:25:53'),
(6, 'zoro', '$2y$10$4rTzWayzBUWXIioMrSENGONhyabmS202oiyVNEdexc.c4HyJYB3F6', '2025-03-02 14:55:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'schoolmanagementsystem', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"firstdb\",\"phpmyadmin\",\"schoolmanagementsystem\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"schoolmanagementsystem\",\"table\":\"student_marks\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"student_attendance\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"marks\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"employee_attendance\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"add_teachers\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"add_students\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"users\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"pay_fees\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"fees\"},{\"db\":\"schoolmanagementsystem\",\"table\":\"attendance\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-04-15 13:04:38', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `schoolmanagementsystem`
--
CREATE DATABASE IF NOT EXISTS `schoolmanagementsystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `schoolmanagementsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `add_students`
--

CREATE TABLE `add_students` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `class` int(2) NOT NULL,
  `division` varchar(1) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `roll` int(3) NOT NULL,
  `address` text NOT NULL,
  `father` varchar(30) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `admissionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_students`
--

INSERT INTO `add_students` (`id`, `fname`, `lname`, `class`, `division`, `contact`, `roll`, `address`, `father`, `mother`, `dob`, `admissionDate`) VALUES
(6, 'Aditya', 'Patel', 6, 'C', '9123456783', 5, 'Ahmedabad', 'Ramesh Patel', 'Meena Patel', '2011-08-09', '2020-07-01'),
(7, 'Krishna', 'Reddy', 7, 'D', '9123456784', 20, 'Hyderabad', 'Suresh Reddy', 'Lakshmi Reddy', '2010-03-11', '2019-05-15'),
(8, 'Ishaan', 'Iyer', 3, 'A', '9123456785', 9, 'Chennai', 'Vikram Iyer', 'Latha Iyer', '2014-12-25', '2021-03-20'),
(9, 'Anaya', 'Mishra', 2, 'B', '9123456786', 15, 'Lucknow', 'Praveen Mishra', 'Neha Mishra', '2016-01-30', '2023-01-10'),
(10, 'Diya', 'Kapoor', 5, 'C', '9123456787', 22, 'Delhi', 'Manoj Kapoor', 'Pooja Kapoor', '2012-05-04', '2022-02-28'),
(11, 'Myra', 'Malhotra', 6, 'D', '9123456788', 13, 'Pune', 'Rajeev Malhotra', 'Shalini Malhotra', '2011-07-18', '2020-11-05'),
(12, 'Saanvi', 'Bajaj', 4, 'A', '9123456789', 11, 'Bangalore', 'Sanjay Bajaj', 'Ritika Bajaj', '2013-02-10', '2021-09-30'),
(13, 'Aanya', 'Singh', 7, 'B', '9123456790', 16, 'Jaipur', 'Amit Singh', 'Priya Singh', '2010-11-21', '2019-08-25'),
(14, 'Aryan', 'Sharma', 1, 'A', '9123456791', 3, 'Delhi', 'Ravi Sharma', 'Sunita Sharma', '2017-06-13', '2024-01-12'),
(15, 'Riya', 'Verma', 2, 'C', '9123456792', 19, 'Mumbai', 'Anil Verma', 'Kavita Verma', '2015-10-27', '2023-04-18'),
(16, 'Kabir', 'Patel', 3, 'D', '9123456793', 7, 'Ahmedabad', 'Ramesh Patel', 'Meena Patel', '2014-09-15', '2022-06-05'),
(17, 'Tanya', 'Reddy', 5, 'B', '9123456794', 8, 'Hyderabad', 'Suresh Reddy', 'Lakshmi Reddy', '2012-07-11', '2020-08-14'),
(18, 'Yash', 'Iyer', 6, 'C', '9123456795', 2, 'Chennai', 'Vikram Iyer', 'Latha Iyer', '2011-04-23', '2019-12-02'),
(19, 'Ira', 'Mishra', 4, 'D', '9123456796', 21, 'Lucknow', 'Praveen Mishra', 'Neha Mishra', '2013-03-08', '2021-10-10'),
(20, 'Reyansh', 'Kapoor', 3, 'A', '9123456797', 6, 'Delhi', 'Manoj Kapoor', 'Pooja Kapoor', '2014-01-01', '2022-05-17'),
(21, 'Meera', 'Malhotra', 2, 'B', '9123456798', 14, 'Pune', 'Rajeev Malhotra', 'Shalini Malhotra', '2015-08-16', '2023-03-09'),
(22, 'Vihaan', 'Bajaj', 1, 'C', '9123456799', 1, 'Bangalore', 'Sanjay Bajaj', 'Ritika Bajaj', '2017-02-28', '2024-02-20'),
(23, 'Aadhya', 'Singh', 6, 'D', '9123456800', 23, 'Jaipur', 'Amit Singh', 'Priya Singh', '2011-06-19', '2019-09-07'),
(24, 'Neha', 'Sharma', 5, 'A', '9123456801', 10, 'Delhi', 'Ravi Sharma', 'Sunita Sharma', '2012-12-03', '2020-06-11'),
(25, 'Laksh', 'Verma', 4, 'B', '9123456802', 17, 'Mumbai', 'Anil Verma', 'Kavita Verma', '2013-05-30', '2021-07-22'),
(26, 'Tanvi', 'Patel', 3, 'C', '9123456803', 4, 'Ahmedabad', 'Ramesh Patel', 'Meena Patel', '2014-10-14', '2022-01-28'),
(27, 'Ayaan', 'Reddy', 2, 'D', '9123456804', 18, 'Hyderabad', 'Suresh Reddy', 'Lakshmi Reddy', '2015-03-05', '2023-06-15'),
(29, 'Parth', 'Mishra', 6, 'B', '9123456806', 19, 'Lucknow', 'Praveen Mishra', 'Neha Mishra', '2011-01-10', '2019-04-25'),
(30, 'Kavya', 'Kapoor', 5, 'C', '9123456807', 24, 'Delhi', 'Manoj Kapoor', 'Pooja Kapoor', '2012-06-29', '2020-09-01'),
(31, 'Dev', 'Malhotra', 4, 'D', '9123456808', 25, 'Pune', 'Rajeev Malhotra', 'Shalini Malhotra', '2013-07-06', '2021-02-26'),
(32, 'Anvi', 'Bajaj', 3, 'A', '9123456809', 26, 'Bangalore', 'Sanjay Bajaj', 'Ritika Bajaj', '2014-11-12', '2022-08-13'),
(33, 'Ritvik', 'Singh', 2, 'B', '9123456810', 27, 'Jaipur', 'Amit Singh', 'Priya Singh', '2015-04-18', '2023-10-01'),
(34, 'Nisha', 'Sharma', 1, 'C', '9123456811', 28, 'Delhi', 'Ravi Sharma', 'Sunita Sharma', '2017-01-09', '2024-04-01'),
(35, 'Om', 'Verma', 5, 'D', '9123456812', 29, 'Mumbai', 'Anil Verma', 'Kavita Verma', '2012-02-06', '2020-01-18'),
(36, 'Mira', 'Patel', 4, 'A', '9123456813', 30, 'Ahmedabad', 'Ramesh Patel', 'Meena Patel', '2013-09-22', '2021-11-04'),
(37, 'Sarthak', 'Reddy', 3, 'B', '9123456814', 31, 'Hyderabad', 'Suresh Reddy', 'Lakshmi Reddy', '2014-03-13', '2022-07-21'),
(38, 'Sneha', 'Iyer', 2, 'C', '9123456815', 32, 'Chennai', 'Vikram Iyer', 'Latha Iyer', '2015-12-27', '2023-02-14'),
(39, 'Arya', 'Mishra', 1, 'D', '9123456816', 33, 'Lucknow', 'Praveen Mishra', 'Neha Mishra', '2017-11-11', '2024-03-20'),
(40, 'Rohan', 'Kapoor', 6, 'A', '9123456817', 34, 'Delhi', 'Manoj Kapoor', 'Pooja Kapoor', '2011-08-02', '2019-06-29'),
(41, 'Simran', 'Malhotra', 5, 'B', '9123456818', 35, 'Pune', 'Rajeev Malhotra', 'Shalini Malhotra', '2012-01-24', '2020-10-12'),
(42, 'Manav', 'Bajaj', 4, 'C', '9123456819', 36, 'Bangalore', 'Sanjay Bajaj', 'Ritika Bajaj', '2013-06-07', '2021-01-31'),
(43, 'Tara', 'Singh', 3, 'D', '9123456820', 37, 'Jaipur', 'Amit Singh', 'Priya Singh', '2014-10-02', '2022-12-09'),
(44, 'Dhruv', 'Sharma', 2, 'A', '9123456821', 38, 'Delhi', 'Ravi Sharma', 'Sunita Sharma', '2015-05-26', '2023-07-03'),
(45, 'Sia', 'Verma', 1, 'B', '9123456822', 39, 'Mumbai', 'Anil Verma', 'Kavita Verma', '2017-10-19', '2024-03-11'),
(46, 'Arjun', 'Patel', 6, 'C', '9123456823', 40, 'Ahmedabad', 'Ramesh Patel', 'Meena Patel', '2011-03-03', '2019-09-27'),
(47, 'Divya', 'Reddy', 5, 'D', '9123456824', 41, 'Hyderabad', 'Suresh Reddy', 'Lakshmi Reddy', '2012-09-16', '2020-08-08'),
(48, 'Avi', 'Iyer', 4, 'A', '9123456825', 42, 'Chennai', 'Vikram Iyer', 'Latha Iyer', '2013-08-28', '2021-05-19'),
(49, 'Charvi', 'Mishra', 3, 'B', '9123456826', 43, 'Lucknow', 'Praveen Mishra', 'Neha Mishra', '2014-11-04', '2022-09-25'),
(50, 'Harsh', 'Kapoor', 2, 'C', '9123456827', 44, 'Delhi', 'Manoj Kapoor', 'Pooja Kapoor', '2015-06-21', '2023-06-01'),
(51, 'Navya', 'Malhotra', 1, 'D', '9123456828', 45, 'Pune', 'Rajeev Malhotra', 'Shalini Malhotra', '2017-07-13', '2024-02-02'),
(52, 'Raghav', 'Bajaj', 6, 'A', '9123456829', 46, 'Bangalore', 'Sanjay Bajaj', 'Ritika Bajaj', '2011-05-07', '2019-01-05'),
(53, 'Ishaan', 'Singhania', 5, 'B', '9130000001', 47, 'Nagpur', 'Arvind Singhania', 'Savita Singhania', '2012-08-05', '2020-06-15'),
(54, 'Kritika', 'Mehta', 4, 'C', '9130000002', 48, 'Surat', 'Nikhil Mehta', 'Sujata Mehta', '2013-03-17', '2021-04-10'),
(55, 'Arnav', 'Kumar', 3, 'D', '9130000003', 49, 'Noida', 'Gaurav Kumar', 'Anita Kumar', '2014-09-22', '2022-02-08'),
(56, 'Jiya', 'Nair', 2, 'A', '9130000004', 50, 'Kochi', 'Sudeep Nair', 'Anjali Nair', '2015-07-19', '2023-01-13'),
(57, 'Moksh', 'Sinha', 1, 'B', '9130000005', 51, 'Patna', 'Rohit Sinha', 'Pallavi Sinha', '2017-04-01', '2024-02-05'),
(58, 'Rudra', 'Desai', 6, 'C', '9130000006', 52, 'Vadodara', 'Hemant Desai', 'Ketki Desai', '2011-02-28', '2019-07-20'),
(59, 'Anvi', 'Rastogi', 5, 'D', '9130000007', 53, 'Kanpur', 'Sanjay Rastogi', 'Mitali Rastogi', '2012-10-12', '2020-09-23'),
(60, 'Yuvraj', 'Bhatt', 4, 'A', '9130000008', 54, 'Dehradun', 'Raj Bhatt', 'Preeti Bhatt', '2013-06-30', '2021-06-05'),
(61, 'Keya', 'Chopra', 3, 'B', '9130000009', 55, 'Amritsar', 'Deepak Chopra', 'Sarla Chopra', '2014-01-15', '2022-03-17'),
(62, 'Samarth', 'Goyal', 2, 'C', '9130000010', 56, 'Agra', 'Anuj Goyal', 'Rashi Goyal', '2015-05-22', '2023-08-11'),
(63, 'Aarohi', 'Joshi', 1, 'D', '9130000011', 57, 'Udaipur', 'Rajesh Joshi', 'Komal Joshi', '2017-09-30', '2024-01-20'),
(64, 'Ishanvi', 'Naik', 6, 'A', '9130000012', 58, 'Goa', 'Manoj Naik', 'Vidya Naik', '2011-11-17', '2019-03-09'),
(65, 'Devansh', 'Kulkarni', 5, 'B', '9130000013', 59, 'Nashik', 'Ashok Kulkarni', 'Sunita Kulkarni', '2012-07-25', '2020-05-14'),
(66, 'Niva', 'Pandey', 4, 'C', '9130000014', 60, 'Varanasi', 'Suraj Pandey', 'Rekha Pandey', '2013-10-05', '2021-11-02'),
(67, 'Shaurya', 'Tiwari', 3, 'D', '9130000015', 61, 'Bhopal', 'Ajay Tiwari', 'Seema Tiwari', '2014-12-11', '2022-01-29'),
(68, 'Pihu', 'Trivedi', 2, 'A', '9130000016', 62, 'Indore', 'Prakash Trivedi', 'Lalita Trivedi', '2015-02-14', '2023-04-26'),
(69, 'Ayaan', 'Rajput', 1, 'B', '9130000017', 63, 'Ranchi', 'Mahesh Rajput', 'Kajal Rajput', '2017-08-08', '2024-03-16'),
(70, 'Siddhi', 'Bose', 6, 'C', '9130000018', 64, 'Kolkata', 'Vivek Bose', 'Ritika Bose', '2011-06-13', '2019-10-04'),
(71, 'Atharv', 'Banerjee', 5, 'D', '9130000019', 65, 'Asansol', 'Dinesh Banerjee', 'Namita Banerjee', '2012-05-01', '2020-12-15'),
(72, 'Tisha', 'Chatterjee', 4, 'A', '9130000020', 66, 'Durgapur', 'Anil Chatterjee', 'Puja Chatterjee', '2013-11-30', '2021-09-07'),
(73, 'Kiaan', 'Ghosh', 3, 'B', '9130000021', 67, 'Siliguri', 'Nitin Ghosh', 'Swati Ghosh', '2014-03-25', '2022-04-22'),
(74, 'Ritika', 'Das', 2, 'C', '9130000022', 68, 'Howrah', 'Bhavesh Das', 'Nikita Das', '2015-10-18', '2023-11-19'),
(75, 'Dhruv', 'Saxena', 1, 'D', '9130000023', 69, 'Gwalior', 'Pawan Saxena', 'Sneha Saxena', '2017-12-02', '2024-02-27'),
(76, 'Avni', 'Yadav', 6, 'A', '9130000024', 70, 'Rewa', 'Manish Yadav', 'Neha Yadav', '2011-10-29', '2019-06-30'),
(77, 'Shaista', 'Ali', 5, 'B', '9130000025', 71, 'Aligarh', 'Asif Ali', 'Nusrat Ali', '2012-09-17', '2020-08-19'),
(78, 'Zaid', 'Khan', 4, 'C', '9130000026', 72, 'Bareilly', 'Nadeem Khan', 'Ruksar Khan', '2013-01-12', '2021-03-28'),
(79, 'Aaliya', 'Ansari', 3, 'D', '9130000027', 73, 'Moradabad', 'Faisal Ansari', 'Nagma Ansari', '2014-06-08', '2022-05-11'),
(80, 'Rayaan', 'Mirza', 2, 'A', '9130000028', 74, 'Rampur', 'Salman Mirza', 'Shabnam Mirza', '2015-07-14', '2023-07-21'),
(81, 'Nayra', 'Sheikh', 1, 'B', '9130000029', 75, 'Saharanpur', 'Zubair Sheikh', 'Sana Sheikh', '2017-03-03', '2024-04-05'),
(82, 'Adil', 'Syed', 6, 'C', '9130000030', 76, 'Muzaffarnagar', 'Nasir Syed', 'Rubina Syed', '2011-04-07', '2019-12-10'),
(83, 'Inaaya', 'Farooqi', 5, 'D', '9130000031', 77, 'Meerut', 'Azeem Farooqi', 'Shaheen Farooqi', '2012-02-22', '2020-01-18'),
(84, 'Aariz', 'Qureshi', 4, 'A', '9130000032', 78, 'Morena', 'Imran Qureshi', 'Sofia Qureshi', '2013-08-26', '2021-01-11'),
(85, 'Sanvi', 'Zaidi', 3, 'B', '9130000033', 79, 'Firozabad', 'Shadab Zaidi', 'Shazia Zaidi', '2014-05-19', '2022-10-16'),
(86, 'Himanshi', 'Madaan', 2, 'C', '9130000034', 80, 'Sonipat', 'Ramesh Madaan', 'Kusum Madaan', '2015-01-09', '2023-12-07'),
(87, 'Tanish', 'Chauhan', 1, 'D', '9130000035', 81, 'Panipat', 'Ravi Chauhan', 'Sheetal Chauhan', '2017-05-31', '2024-02-18'),
(88, 'Jasleen', 'Kaur', 6, 'A', '9130000036', 82, 'Ludhiana', 'Harpreet Singh', 'Manjeet Kaur', '2011-09-08', '2019-08-13'),
(89, 'Arsh', 'Gill', 5, 'B', '9130000037', 83, 'Jalandhar', 'Baljit Gill', 'Parminder Gill', '2012-03-14', '2020-10-30'),
(90, 'Seerat', 'Brar', 4, 'C', '9130000038', 84, 'Patiala', 'Karan Brar', 'Amrit Brar', '2013-12-20', '2021-12-05'),
(91, 'Eknoor', 'Dhillon', 3, 'D', '9130000039', 85, 'Bathinda', 'Ravinder Dhillon', 'Simran Dhillon', '2014-10-10', '2022-06-16'),
(92, 'Sarabjeet', 'Bains', 2, 'A', '9130000040', 86, 'Mohali', 'Kuldeep Bains', 'Harpreet Bains', '2015-11-23', '2023-05-04'),
(93, 'Manjot', 'Sidhu', 1, 'B', '9130000041', 87, 'Amritsar', 'Jaswinder Sidhu', 'Navjot Sidhu', '2017-06-06', '2024-01-30'),
(94, 'Taran', 'Sandhu', 6, 'C', '9130000042', 88, 'Chandigarh', 'Avtar Sandhu', 'Pavleen Sandhu', '2011-12-04', '2019-02-23'),
(95, 'Simar', 'Grewal', 5, 'D', '9130000043', 89, 'Zirakpur', 'Narinder Grewal', 'Baljeet Grewal', '2012-06-03', '2020-04-01'),
(96, 'Nirvair', 'Pannu', 4, 'A', '9130000044', 90, 'Panchkula', 'Gurpreet Pannu', 'Amandeep Pannu', '2013-02-13', '2021-06-28'),
(97, 'Gurleen', 'Cheema', 3, 'B', '9130000045', 91, 'Faridkot', 'Tejinder Cheema', 'Ramneet Cheema', '2014-11-01', '2022-08-02'),
(98, 'Akal', 'Dhami', 2, 'C', '9130000046', 92, 'Moga', 'Sukhwinder Dhami', 'Gurmeet Dhami', '2015-04-27', '2023-03-12'),
(99, 'Rajveer', 'Nijjar', 1, 'D', '9130000047', 93, 'Barnala', 'Satnam Nijjar', 'Manjit Nijjar', '2017-02-15', '2024-03-25'),
(100, 'Harman', 'Deol', 6, 'A', '9130000048', 94, 'Abohar', 'Balwinder Deol', 'Sandeep Deol', '2011-07-04', '2019-11-11'),
(101, 'Ravleen', 'Sohi', 5, 'B', '9130000049', 95, 'Malerkotla', 'Sukhpal Sohi', 'Rajinder Sohi', '2012-08-21', '2020-05-29'),
(102, 'Hrishita', 'Chaudhary', 2, 'B', '9130000100', 96, 'Ramgarh', 'Abram Chaudhary', 'Hridaan Chaudhary', '2015-06-20', '2021-05-10'),
(103, 'Misha', 'Vyas', 2, 'D', '9130000101', 97, 'Uluberia', 'Myra Vyas', 'Ivana Vyas', '2011-10-31', '2024-12-15'),
(104, 'Taran', 'Rao', 1, 'A', '9130000102', 98, 'Satna', 'Lakshay Rao', 'Siya Rao', '2012-02-16', '2024-04-08'),
(105, 'Shanaya', 'Mahajan', 5, 'C', '9130000103', 99, 'Hindupur', 'Kabir Mahajan', 'Rasha Mahajan', '2012-05-12', '2023-01-05'),
(106, 'Divyansh', 'Ravi', 1, 'A', '9130000104', 100, 'Sagar', 'Saanvi Ravi', 'Dishani Ravi', '2019-04-02', '2024-11-20'),
(107, 'Zara', 'Kala', 3, 'C', '9130000105', 101, 'Sultan Pur Majra', 'Jayan Kala', 'Ishita Kala', '2012-12-12', '2019-12-12'),
(108, 'Badal', 'Karpe', 5, 'C', '9130000106', 102, 'Motihari', 'Jayant Karpe', 'Prerak Karpe', '2011-11-17', '2024-02-25'),
(109, 'Renee', 'Gara', 3, 'B', '9130000107', 103, 'Raichur', 'Shaurya Gara', 'Roshni Gara', '2013-08-08', '2023-09-15'),
(110, 'Ishika', 'Shekhar', 4, 'D', '9130000108', 104, 'Jamalpur', 'Krishna Shekhar', 'Manya Shekhar', '2014-07-18', '2023-11-25'),
(111, 'Tanmay', 'Nagpal', 6, 'A', '9130000109', 105, 'Dewas', 'Nihal Nagpal', 'Shrishti Nagpal', '2010-01-10', '2019-06-04'),
(112, 'Nayra', 'Mehta', 3, 'C', '9130000110', 106, 'Itarsi', 'Rithvik Mehta', 'Kritika Mehta', '2011-11-11', '2021-08-13'),
(113, 'Aarohi', 'Kapadia', 1, 'A', '9130000111', 107, 'Nabadwip', 'Tanish Kapadia', 'Vaanya Kapadia', '2013-10-10', '2020-01-02'),
(114, 'Kabir', 'Sanghvi', 4, 'B', '9130000112', 108, 'Naihati', 'Arnav Sanghvi', 'Prisha Sanghvi', '2012-03-23', '2023-10-06'),
(115, 'Ira', 'Chaturvedi', 6, 'C', '9130000113', 109, 'Maheshtala', 'Raghav Chaturvedi', 'Vanya Chaturvedi', '2010-09-09', '2021-03-15'),
(116, 'Vivaan', 'Kohli', 5, 'B', '9130000114', 110, 'Bhind', 'Nirav Kohli', 'Anika Kohli', '2011-05-04', '2020-07-07'),
(117, 'Anaya', 'Trivedi', 4, 'A', '9130000115', 111, 'Murwara', 'Aarav Trivedi', 'Jiya Trivedi', '2012-02-20', '2022-06-11'),
(118, 'Reyansh', 'Iyengar', 2, 'B', '9130000116', 112, 'Tadepalligudem', 'Shaurya Iyengar', 'Reeva Iyengar', '2013-12-30', '2021-09-09'),
(119, 'Aadhya', 'Joshi', 1, 'C', '9130000117', 113, 'Amreli', 'Vedant Joshi', 'Sana Joshi', '2016-04-14', '2022-02-19'),
(120, 'Kiaan', 'Garg', 3, 'A', '9130000118', 114, 'Shimoga', 'Ayaan Garg', 'Kiara Garg', '2012-11-01', '2021-05-23'),
(121, 'Myra', 'Bhave', 2, 'D', '9130000119', 115, 'Bhuj', 'Aarush Bhave', 'Avni Bhave', '2013-03-27', '2020-10-31'),
(122, 'Aarav', 'Taneja', 4, 'A', '9130000120', 116, 'Adoni', 'Ritik Taneja', 'Sharvani Taneja', '2011-06-06', '2022-07-17'),
(123, 'Saanvi', 'Rawat', 5, 'B', '9130000121', 117, 'Kharagpur', 'Rudra Rawat', 'Divisha Rawat', '2010-10-10', '2023-04-10'),
(124, 'Ishaan', 'Makhija', 3, 'D', '9130000122', 118, 'Amroha', 'Tanishq Makhija', 'Arya Makhija', '2012-09-18', '2020-08-28'),
(125, 'Diya', 'Bhagat', 6, 'C', '9130000123', 119, 'Katihar', 'Neil Bhagat', 'Inaya Bhagat', '2009-08-08', '2019-01-20'),
(126, 'Laksh', 'Dahiya', 1, 'B', '9130000124', 120, 'Nangloi Jat', 'Rehaan Dahiya', 'Naira Dahiya', '2016-06-06', '2024-01-01'),
(127, 'Advika', 'Talwar', 2, 'A', '9130000125', 121, 'Mau', 'Kush Talwar', 'Zoya Talwar', '2015-01-15', '2022-05-18'),
(128, 'Atharv', 'Rane', 5, 'C', '9130000126', 122, 'Bahraich', 'Yash Rane', 'Trisha Rane', '2011-04-24', '2021-06-30'),
(129, 'Prisha', 'Luthra', 3, 'B', '9130000127', 123, 'Suryapet', 'Parth Luthra', 'Meher Luthra', '2013-07-07', '2023-03-09'),
(130, 'Shaurya', 'Mishra', 6, 'A', '9130000128', 124, 'Fatehpur', 'Devansh Mishra', 'Amaira Mishra', '2010-12-12', '2020-12-01'),
(131, 'Vanya', 'Pillai', 4, 'C', '9130000129', 125, 'Baranagar', 'Rayan Pillai', 'Myra Pillai', '2012-08-08', '2019-09-14'),
(132, 'Daksh', 'Kapoor', 5, 'B', '9130000130', 126, 'Gondiya', 'Vivaan Kapoor', 'Ruhi Kapoor', '2011-02-21', '2022-12-25'),
(133, 'Anvi', 'Sinha', 2, 'D', '9130000131', 127, 'Hazaribagh', 'Shaurya Sinha', 'Ahaana Sinha', '2015-10-10', '2021-11-11'),
(134, 'Aryan', 'Jaiswal', 1, 'A', '9130000132', 128, 'Banda', 'Dev Jaiswal', 'Anaisha Jaiswal', '2016-02-28', '2023-02-14'),
(135, 'Navya', 'Grover', 3, 'C', '9130000133', 129, 'Sirsa', 'Aarav Grover', 'Ira Grover', '2013-11-11', '2021-01-01'),
(136, 'Vihaan', 'Malhotra', 2, 'B', '9130000134', 130, 'Baramula', 'Kiaan Malhotra', 'Tanya Malhotra', '2014-03-30', '2020-06-06'),
(137, 'Meera', 'Bajaj', 6, 'D', '9130000135', 131, 'Baran', 'Kush Bajaj', 'Tara Bajaj', '2009-03-03', '2019-03-15'),
(138, 'Aarush', 'Rathore', 5, 'A', '9130000136', 132, 'Karawal Nagar', 'Shaurya Rathore', 'Kiara Rathore', '2010-06-06', '2022-04-30'),
(139, 'Anika', 'Pandey', 4, 'B', '9130000137', 133, 'Palwal', 'Daksh Pandey', 'Anaya Pandey', '2012-07-20', '2021-08-01'),
(140, 'Rudra', 'Desai', 3, 'D', '9130000138', 134, 'Kollam', 'Vivaan Desai', 'Zara Desai', '2011-09-14', '2023-05-22'),
(141, 'Avni', 'Bedi', 2, 'C', '9130000139', 135, 'Junagadh', 'Ishaan Bedi', 'Aadhya Bedi', '2014-05-05', '2020-10-10'),
(142, 'Rihan', 'Saxena', 1, 'B', '9130000140', 136, 'Bettiah', 'Aarav Saxena', 'Saanvi Saxena', '2015-12-12', '2023-07-12'),
(143, 'Mahika', 'Bhalla', 4, 'D', '9130000141', 137, 'Shahjahanpur', 'Shaurya Bhalla', 'Diya Bhalla', '2012-11-30', '2020-02-02'),
(144, 'Neil', 'Sachdeva', 5, 'A', '9130000142', 138, 'Port Blair', 'Ritvik Sachdeva', 'Aanya Sachdeva', '2011-01-01', '2021-07-17'),
(145, 'Naira', 'Sehgal', 6, 'C', '9130000143', 139, 'Buxar', 'Yug Sehgal', 'Renee Sehgal', '2009-12-25', '2020-09-20'),
(146, 'Kritika', 'Chadha', 2, 'A', '9130000144', 140, 'Rae Bareli', 'Yash Chadha', 'Myra Chadha', '2014-09-09', '2022-03-30'),
(147, 'Yuvan', 'Gokhale', 3, 'B', '9130000145', 141, 'Etawah', 'Neil Gokhale', 'Vanya Gokhale', '2013-06-21', '2020-05-05'),
(148, 'Trisha', 'Naik', 5, 'D', '9130000146', 142, 'Karaikal', 'Kabir Naik', 'Nitya Naik', '2010-04-04', '2021-01-11'),
(149, 'Nivaan', 'Madaan', 1, 'A', '9130000147', 143, 'Aligarh', 'Shaurya Madaan', 'Anvi Madaan', '2016-08-18', '2022-08-08'),
(150, 'Tia', 'Kashyap', 4, 'C', '9130000148', 144, 'Patiala', 'Reyansh Kashyap', 'Ira Kashyap', '2011-07-15', '2023-12-25'),
(151, 'Aadhav', 'Thakur', 3, 'D', '9130000149', 145, 'Dibrugarh', 'Ishaan Thakur', 'Rhea Thakur', '2013-03-03', '2021-09-13'),
(152, 'Inaaya', 'Puri', 2, 'C', '9130000150', 146, 'Darbhanga', 'Yash Puri', 'Nysa Puri', '2014-10-20', '2022-11-18'),
(153, 'Reyansh', 'Kamat', 1, 'B', '9130000151', 147, 'Kurnool', 'Rudra Kamat', 'Trisha Kamat', '2015-12-01', '2023-06-06'),
(154, 'Kiara', 'Parmar', 4, 'B', '9130000152', 148, 'Chhindwara', 'Vivaan Parmar', 'Avni Parmar', '2012-04-30', '2022-01-01'),
(155, 'Aarav', 'Suri', 6, 'D', '9130000153', 149, 'Begusarai', 'Shaurya Suri', 'Aarohi Suri', '2009-09-09', '2020-08-25'),
(156, 'Saanvika', 'Bhatia', 5, 'C', '9130000154', 150, 'Gopalganj', 'Aayansh Bhatia', 'Myra Bhatia', '2011-11-30', '2023-05-10'),
(157, 'Ishaanvi', 'Bajaj', 3, 'A', '9130000155', 151, 'Dhule', 'Parth Bajaj', 'Kavya Bajaj', '2013-07-08', '2021-03-22'),
(158, 'Aryaveer', 'Chowdhury', 2, 'B', '9130000156', 152, 'Nalgonda', 'Ansh Chowdhury', 'Mira Chowdhury', '2014-12-12', '2023-09-09'),
(159, 'Vritti', 'Dogra', 1, 'D', '9130000157', 153, 'Jind', 'Aryan Dogra', 'Misha Dogra', '2016-03-18', '2023-01-27'),
(160, 'Hridaan', 'Nagpal', 3, 'B', '9130000158', 154, 'Rohtak', 'Ritvik Nagpal', 'Sia Nagpal', '2013-09-05', '2022-12-02'),
(161, 'Myra', 'Bindra', 4, 'C', '9130000159', 155, 'Loni', 'Shaurya Bindra', 'Jiya Bindra', '2012-06-06', '2021-05-05'),
(162, 'Shaurya', 'Kohli', 2, 'D', '9130000160', 156, 'Sambhal', 'Reyansh Kohli', 'Vanya Kohli', '2015-01-01', '2020-11-30'),
(163, 'Rhea', 'Rastogi', 5, 'A', '9130000161', 157, 'Machilipatnam', 'Vivaan Rastogi', 'Zoya Rastogi', '2011-10-10', '2022-10-10'),
(164, 'Nivaan', 'Makhija', 6, 'C', '9130000162', 158, 'Kaithal', 'Ansh Makhija', 'Nitya Makhija', '2009-01-09', '2019-08-08'),
(165, 'Aahana', 'Narang', 1, 'A', '9130000163', 159, 'Dhamtari', 'Shaurya Narang', 'Diya Narang', '2016-07-22', '2022-02-02'),
(166, 'Kabir', 'Kalra', 4, 'B', '9130000164', 160, 'Unnao', 'Raghav Kalra', 'Ira Kalra', '2012-03-30', '2023-04-01'),
(167, 'Aarohi', 'Khera', 5, 'D', '9130000165', 161, 'Rajnandgaon', 'Ayaan Khera', 'Siya Khera', '2011-06-06', '2021-07-17'),
(168, 'Yuvraj', 'Mehrotra', 3, 'C', '9130000166', 162, 'Khambhat', 'Neil Mehrotra', 'Aanya Mehrotra', '2013-10-11', '2023-03-03'),
(169, 'Tanishka', 'Rawal', 2, 'A', '9130000167', 163, 'Bulandshahr', 'Parth Rawal', 'Amaira Rawal', '2014-08-18', '2022-06-18'),
(170, 'Parth', 'Sikka', 1, 'B', '9130000168', 164, 'Bahadurgarh', 'Aarav Sikka', 'Jiya Sikka', '2015-04-04', '2023-12-10'),
(171, 'Aayushi', 'Sidhu', 3, 'D', '9130000169', 165, 'Farrukhabad', 'Ritvik Sidhu', 'Meher Sidhu', '2013-06-30', '2020-05-11'),
(172, 'Aayansh', 'Bansal', 5, 'B', '9130000170', 166, 'Anantnag', 'Shaurya Bansal', 'Nysa Bansal', '2011-03-17', '2021-02-02'),
(173, 'Vanya', 'Rishi', 2, 'C', '9130000171', 167, 'Kolar', 'Ansh Rishi', 'Tara Rishi', '2014-09-27', '2022-08-08'),
(174, 'Daksh', 'Ahluwalia', 6, 'A', '9130000172', 168, 'Nagapattinam', 'Aarav Ahluwalia', 'Rhea Ahluwalia', '2009-04-14', '2020-10-10'),
(175, 'Anika', 'Bhargava', 4, 'D', '9130000173', 169, 'Medininagar', 'Reyansh Bhargava', 'Diya Bhargava', '2012-02-02', '2021-01-25'),
(176, 'Aarush', 'Tripathi', 5, 'C', '9130000174', 170, 'Seoni', 'Ritvik Tripathi', 'Tia Tripathi', '2011-12-31', '2022-11-11'),
(177, 'Amaira', 'Mahajan', 1, 'C', '9130000175', 171, 'Jamalpur', 'Shaurya Mahajan', 'Myra Mahajan', '2016-09-19', '2023-06-01'),
(178, 'Yug', 'Goel', 3, 'A', '9130000176', 172, 'Palanpur', 'Ansh Goel', 'Saanvika Goel', '2013-08-15', '2022-09-12'),
(179, 'Anvi', 'Wadhwa', 4, 'B', '9130000177', 173, 'Katni', 'Parth Wadhwa', 'Anaya Wadhwa', '2012-01-01', '2021-04-04'),
(180, 'Aryan', 'Mehra', 6, 'C', '9130000178', 174, 'Jhunjhunun', 'Shaurya Mehra', 'Aarohi Mehra', '2009-07-07', '2020-03-10'),
(181, 'Suhana', 'Dhawan', 2, 'D', '9130000179', 175, 'Kavali', 'Ayaan Dhawan', 'Kritika Dhawan', '2014-11-23', '2023-01-13'),
(182, 'Reyansh', 'Tandon', 1, 'A', '9130000180', 176, 'Munger', 'Ritvik Tandon', 'Roshni Tandon', '2015-06-15', '2023-02-20'),
(183, 'Ishita', 'Menon', 3, 'C', '9130000181', 177, 'Navi Mumbai', 'Aarav Menon', 'Meher Menon', '2013-02-05', '2021-05-12'),
(184, 'Aarav', 'Sethi', 5, 'B', '9130000182', 178, 'Silchar', 'Shaurya Sethi', 'Kavya Sethi', '2011-07-07', '2022-10-01'),
(185, 'Aahana', 'Puri', 4, 'D', '9130000183', 179, 'Moradabad', 'Reyansh Puri', 'Aanya Puri', '2012-10-10', '2023-04-19'),
(186, 'Yash', 'Kapoor', 2, 'B', '9130000184', 180, 'Tinsukia', 'Raghav Kapoor', 'Riya Kapoor', '2014-03-03', '2022-07-07'),
(187, 'Vanya', 'Grover', 6, 'C', '9130000185', 181, 'Rangia', 'Kiaan Grover', 'Rhea Grover', '2009-08-08', '2020-06-17'),
(188, 'Rudra', 'Dey', 1, 'D', '9130000186', 182, 'Bharuch', 'Aayansh Dey', 'Manya Dey', '2016-01-26', '2023-09-30'),
(189, 'Zoya', 'Kohli', 3, 'A', '9130000187', 183, 'Damoh', 'Shaurya Kohli', 'Aarohi Kohli', '2013-05-15', '2021-06-06'),
(190, 'Vihaan', 'Prajapati', 4, 'B', '9130000188', 184, 'Damoh', 'Neil Prajapati', 'Trisha Prajapati', '2012-07-19', '2021-03-15'),
(191, 'Ira', 'Talwar', 5, 'D', '9130000189', 185, 'Koraput', 'Reyansh Talwar', 'Amaira Talwar', '2011-09-01', '2022-02-21'),
(192, 'Aditya', 'Gill', 2, 'C', '9130000190', 186, 'Udhampur', 'Kabir Gill', 'Aadhya Gill', '2014-04-04', '2021-12-31'),
(193, 'Ritika', 'Mani', 6, 'B', '9130000191', 187, 'Neemuch', 'Parth Mani', 'Kiara Mani', '2009-05-11', '2019-05-05'),
(194, 'Kiaan', 'Saxena', 3, 'D', '9130000192', 188, 'Vellore', 'Aarav Saxena', 'Diya Saxena', '2013-03-22', '2020-08-08'),
(195, 'Aaravi', 'Bali', 1, 'C', '9130000193', 189, 'Beed', 'Vivaan Bali', 'Anaya Bali', '2015-11-11', '2023-03-03'),
(196, 'Nayra', 'Sehrawat', 2, 'A', '9130000194', 190, 'Auraiya', 'Neil Sehrawat', 'Saanvi Sehrawat', '2014-12-24', '2021-10-05'),
(197, 'Viha', 'Bhasin', 3, 'A', '9130000195', 191, 'Morena', 'Arnav Bhasin', 'Kiara Bhasin', '2013-02-12', '2020-07-07'),
(198, 'Arjun', 'Saran', 4, 'D', '9130000196', 192, 'Gorakhpur', 'Shaurya Saran', 'Aanya Saran', '2012-05-05', '2021-05-10'),
(199, 'Navya', 'Maan', 5, 'B', '9130000197', 193, 'Palwal', 'Ansh Maan', 'Saanvika Maan', '2011-07-15', '2022-02-02'),
(200, 'Vivaan', 'Rana', 6, 'C', '9130000198', 194, 'Rae Bareli', 'Kabir Rana', 'Diya Rana', '2009-10-25', '2020-03-30'),
(201, 'Ishika', 'Chauhan', 1, 'A', '9130000199', 195, 'Hazaribagh', 'Ritvik Chauhan', 'Zoya Chauhan', '2015-01-09', '2023-11-01'),
(202, 'Ayaan', 'Lal', 3, 'C', '9130000200', 196, 'Siwan', 'Raghav Lal', 'Rhea Lal', '2013-04-04', '2022-01-10'),
(203, 'Anika', 'Rajput', 2, 'D', '9130000201', 197, 'Bokaro', 'Aarav Rajput', 'Meher Rajput', '2014-06-06', '2023-05-15'),
(204, 'Krishna', 'Saxena', 5, 'A', '9130000202', 198, 'Solapur', 'Vivaan Saxena', 'Trisha Saxena', '2011-12-12', '2021-08-08'),
(205, 'Sia', 'Thakur', 4, 'B', '9130000203', 199, 'Satna', 'Neil Thakur', 'Jiya Thakur', '2012-09-01', '2022-12-12'),
(206, 'Reyansh', 'Chaturvedi', 6, 'D', '9130000204', 200, 'Hoshangabad', 'Parth Chaturvedi', 'Amaira Chaturvedi', '2009-11-11', '2020-10-01'),
(207, 'Aaradhya', 'Bhalla', 3, 'A', '9130000205', 201, 'Morbi', 'Shaurya Bhalla', 'Ira Bhalla', '2013-08-20', '2021-06-06'),
(208, 'Advik', 'Khare', 1, 'C', '9130000206', 202, 'Ghazipur', 'Ritvik Khare', 'Nitya Khare', '2015-10-10', '2023-04-15'),
(209, 'Meher', 'Kansal', 2, 'B', '9130000207', 203, 'Bankura', 'Ayaan Kansal', 'Diya Kansal', '2014-03-17', '2022-11-11'),
(210, 'Shaurya', 'Tiwari', 5, 'C', '9130000208', 204, 'Ghazipur', 'Reyansh Tiwari', 'Tara Tiwari', '2011-06-26', '2022-02-14'),
(211, 'Trisha', 'Rawat', 4, 'D', '9130000209', 205, 'Rewa', 'Kiaan Rawat', 'Manya Rawat', '2012-02-22', '2021-01-01'),
(212, 'Aayansh', 'Dubey', 6, 'A', '9130000210', 206, 'Bilaspur', 'Ansh Dubey', 'Kiara Dubey', '2009-12-12', '2019-07-18'),
(213, 'Kavya', 'Rathi', 3, 'B', '9130000211', 207, 'Jhalawar', 'Shaurya Rathi', 'Saanvika Rathi', '2013-11-01', '2022-09-19'),
(214, 'Rudra', 'Nayak', 2, 'D', '9130000212', 208, 'Anantapur', 'Kabir Nayak', 'Avni Nayak', '2014-07-07', '2023-06-06'),
(215, 'Myra', 'Kakkar', 1, 'B', '9130000213', 209, 'Barpeta', 'Aarav Kakkar', 'Aarohi Kakkar', '2015-09-19', '2023-01-01'),
(216, 'Shaurya', 'Arora', 4, 'C', '9130000214', 210, 'Bahraich', 'Parth Arora', 'Roshni Arora', '2012-04-04', '2022-05-20'),
(217, 'Kiara', 'Sinha', 5, 'D', '9130000215', 211, 'Dewas', 'Ansh Sinha', 'Zoya Sinha', '2011-08-08', '2021-07-07'),
(218, 'Vivaan', 'Bora', 6, 'B', '9130000216', 212, 'Azamgarh', 'Shaurya Bora', 'Trisha Bora', '2009-03-14', '2020-09-09'),
(219, 'Anaya', 'Bisht', 3, 'D', '9130000217', 213, 'Basti', 'Raghav Bisht', 'Meher Bisht', '2013-06-17', '2021-02-28'),
(220, 'Kabir', 'Pandey', 2, 'A', '9130000218', 214, 'Nalanda', 'Ritvik Pandey', 'Anaya Pandey', '2014-01-01', '2022-12-01'),
(221, 'Saanvika', 'Khandelwal', 4, 'B', '9130000219', 215, 'Lakhimpur', 'Kiaan Khandelwal', 'Amaira Khandelwal', '2012-10-17', '2021-10-10'),
(222, 'Yug', 'Saluja', 1, 'C', '9130000220', 216, 'Bardhaman', 'Vivaan Saluja', 'Nitya Saluja', '2015-12-25', '2023-07-01'),
(223, 'Aadhya', 'Katyal', 5, 'A', '9130000221', 217, 'Guna', 'Ansh Katyal', 'Avni Katyal', '2011-05-05', '2022-03-21'),
(224, 'Aarav', 'Bagga', 6, 'C', '9130000222', 218, 'Bhatinda', 'Raghav Bagga', 'Siya Bagga', '2009-01-30', '2019-09-15'),
(225, 'Saanvi', 'Deol', 3, 'B', '9130000223', 219, 'Rajkot', 'Reyansh Deol', 'Riya Deol', '2013-02-18', '2020-10-25'),
(226, 'Reyansh', 'Malik', 2, 'C', '9130000224', 220, 'Dibrugarh', 'Aarav Malik', 'Myra Malik', '2014-10-22', '2021-01-15'),
(227, 'Anvi', 'Thakur', 1, 'A', '9130000225', 221, 'Hisar', 'Ritvik Thakur', 'Zoya Thakur', '2016-02-28', '2023-08-20'),
(228, 'Ayaan', 'Mehrotra', 5, 'D', '9130000226', 222, 'Ratlam', 'Shaurya Mehrotra', 'Rhea Mehrotra', '2011-09-30', '2022-06-06'),
(229, 'Rhea', 'Kashyap', 4, 'A', '9130000227', 223, 'Banswara', 'Vivaan Kashyap', 'Diya Kashyap', '2012-03-13', '2022-01-01'),
(230, 'Yuvraj', 'Ghai', 6, 'B', '9130000228', 224, 'Jajpur', 'Raghav Ghai', 'Saanvika Ghai', '2009-04-21', '2020-11-11'),
(231, 'Tia', 'Chandel', 3, 'C', '9130000229', 225, 'Balrampur', 'Ansh Chandel', 'Amaira Chandel', '2013-07-05', '2021-04-12'),
(232, 'Ritvik', 'Bhandari', 2, 'D', '9130000230', 226, 'Daman', 'Ritvik Bhandari', 'Jiya Bhandari', '2014-06-14', '2023-02-28'),
(233, 'Aarohi', 'Manhas', 1, 'C', '9130000231', 227, 'Latur', 'Raghav Manhas', 'Nitya Manhas', '2015-03-03', '2023-10-10'),
(234, 'Shaurya', 'Verma', 5, 'B', '9130000232', 228, 'Etah', 'Parth Verma', 'Aanya Verma', '2011-07-27', '2021-09-19'),
(235, 'Myra', 'Tomer', 4, 'D', '9130000233', 229, 'Kangra', 'Vivaan Tomer', 'Zoya Tomer', '2012-08-11', '2021-07-17'),
(236, 'Vivaan', 'Negi', 6, 'A', '9130000234', 230, 'Sirsa', 'Reyansh Negi', 'Rhea Negi', '2009-12-24', '2020-05-05'),
(237, 'Anaya', 'Ojha', 3, 'B', '9130000235', 231, 'Palampur', 'Ansh Ojha', 'Kiara Ojha', '2013-09-12', '2021-03-03'),
(238, 'Kiaan', 'Mitra', 2, 'A', '9130000236', 232, 'Pali', 'Shaurya Mitra', 'Diya Mitra', '2014-05-18', '2022-08-15'),
(239, 'Aadhya', 'Pradhan', 1, 'B', '9130000237', 233, 'Dantewada', 'Ritvik Pradhan', 'Anaya Pradhan', '2015-11-22', '2023-04-04'),
(240, 'Parth', 'Naik', 5, 'C', '9130000238', 234, 'Korba', 'Aarav Naik', 'Saanvi Naik', '2011-02-01', '2021-11-30'),
(242, 'Ritvik', 'Joshi', 6, 'C', '9130000240', 236, 'Gopalganj', 'Parth Joshi', 'Trisha Joshi', '2009-06-18', '2020-10-01'),
(243, 'Anaya', 'Shetty', 3, 'A', '9130000241', 237, 'Ujjain', 'Aarav Shetty', 'Diya Shetty', '2013-05-16', '2021-01-12'),
(244, 'Shaurya', 'Dahiya', 4, 'D', '9130000242', 238, 'Karimganj', 'Raghav Dahiya', 'Kiara Dahiya', '2012-03-10', '2021-10-03'),
(245, 'Myra', 'Rawal', 5, 'B', '9130000243', 239, 'Pithoragarh', 'Ansh Rawal', 'Zoya Rawal', '2011-06-23', '2022-03-03'),
(246, 'Ayaan', 'Naidu', 6, 'C', '9130000244', 240, 'Ballia', 'Vivaan Naidu', 'Rhea Naidu', '2009-08-29', '2020-11-18'),
(247, 'Aadhya', 'Barua', 1, 'A', '9130000245', 241, 'Sibsagar', 'Shaurya Barua', 'Amaira Barua', '2015-04-04', '2023-02-10'),
(248, 'Ritvik', 'Gogoi', 2, 'C', '9130000246', 242, 'Pilibhit', 'Parth Gogoi', 'Nitya Gogoi', '2014-07-17', '2022-06-06'),
(249, 'Anvi', 'Hooda', 3, 'B', '9130000247', 243, 'Porbandar', 'Ayaan Hooda', 'Jiya Hooda', '2013-10-13', '2021-07-20'),
(250, 'Yug', 'Vyas', 4, 'C', '9130000248', 244, 'Damoh', 'Ritvik Vyas', 'Saanvika Vyas', '2012-09-09', '2022-10-01'),
(251, 'Kiara', 'Mahajan', 5, 'D', '9130000249', 245, 'Chhatarpur', 'Vivaan Mahajan', 'Avni Mahajan', '2011-12-21', '2022-05-05'),
(252, 'Reyansh', 'Bhargava', 6, 'B', '9130000250', 246, 'Neemuch', 'Raghav Bhargava', 'Diya Bhargava', '2009-11-02', '2020-06-30'),
(253, 'Tara', 'Duggal', 3, 'D', '9130000251', 247, 'Munger', 'Ansh Duggal', 'Trisha Duggal', '2013-01-19', '2021-09-09'),
(254, 'Aarav', 'Ahluwalia', 2, 'A', '9130000252', 248, 'Nawada', 'Parth Ahluwalia', 'Aanya Ahluwalia', '2014-06-12', '2022-08-08'),
(255, 'Saanvi', 'Upadhyay', 1, 'C', '9130000253', 249, 'Buxar', 'Aarav Upadhyay', 'Zoya Upadhyay', '2015-05-05', '2023-03-03'),
(256, 'Rudra', 'Saxena', 4, 'A', '9130000254', 250, 'Chhindwara', 'Shaurya Saxena', 'Rhea Saxena', '2012-11-11', '2021-12-12'),
(257, 'Aanya', 'Mehta', 5, 'C', '9130000255', 251, 'Bardoli', 'Ritvik Mehta', 'Nitya Mehta', '2011-04-10', '2022-07-15'),
(258, 'Vivaan', 'Mundra', 6, 'A', '9130000256', 252, 'Bhind', 'Reyansh Mundra', 'Meher Mundra', '2009-07-24', '2020-03-17'),
(259, 'Anika', 'Deshmukh', 3, 'C', '9130000257', 253, 'Vidisha', 'Aarav Deshmukh', 'Amaira Deshmukh', '2013-03-21', '2021-02-02'),
(260, 'Kiaan', 'Talwar', 2, 'B', '9130000258', 254, 'Silchar', 'Raghav Talwar', 'Kiara Talwar', '2014-02-11', '2022-04-04'),
(261, 'Trisha', 'Joshi', 1, 'A', '9130000259', 255, 'Chikmagalur', 'Shaurya Joshi', 'Diya Joshi', '2015-09-09', '2023-05-01'),
(262, 'Shaurya', 'Ahuja', 4, 'B', '9130000260', 256, 'Sagar', 'Ritvik Ahuja', 'Zoya Ahuja', '2012-08-22', '2021-06-14'),
(263, 'Myra', 'Pawar', 5, 'A', '9130000261', 257, 'Yavatmal', 'Aarav Pawar', 'Saanvika Pawar', '2011-01-18', '2022-10-23'),
(264, 'Yuvraj', 'Luthra', 6, 'C', '9130000262', 258, 'Haldwani', 'Reyansh Luthra', 'Nitya Luthra', '2009-10-01', '2020-02-11'),
(265, 'Anaya', 'Chhabra', 3, 'B', '9130000263', 259, 'Surendranagar', 'Shaurya Chhabra', 'Amaira Chhabra', '2013-12-06', '2021-08-20'),
(266, 'Advik', 'Malhotra', 2, 'D', '9130000264', 260, 'Balasore', 'Parth Malhotra', 'Rhea Malhotra', '2014-11-30', '2022-11-12'),
(267, 'Sia', 'Bhonsle', 1, 'B', '9130000265', 261, 'Beed', 'Ayaan Bhonsle', 'Anaya Bhonsle', '2015-06-16', '2023-07-27'),
(268, 'Aryan', 'Bedi', 4, 'C', '9130000266', 262, 'Sambalpur', 'Vivaan Bedi', 'Diya Bedi', '2012-02-20', '2021-05-10'),
(269, 'Aaradhya', 'Tikoo', 5, 'B', '9130000267', 263, 'Darbhanga', 'Raghav Tikoo', 'Zoya Tikoo', '2011-03-13', '2022-12-25'),
(270, 'Kabir', 'Batla', 6, 'B', '9130000268', 264, 'Ranchi', 'Ansh Batla', 'Kiara Batla', '2009-01-07', '2020-07-07'),
(271, 'Rhea', 'Grover', 3, 'D', '9130000269', 265, 'Begusarai', 'Shaurya Grover', 'Amaira Grover', '2013-09-03', '2021-04-14'),
(272, 'Aadhya', 'Sahai', 2, 'A', '9130000270', 266, 'Dhamtari', 'Ritvik Sahai', 'Jiya Sahai', '2014-05-28', '2022-02-02'),
(273, 'Shaurya', 'Makhija', 1, 'C', '9130000271', 267, 'Faridkot', 'Parth Makhija', 'Rhea Makhija', '2015-10-10', '2023-06-15'),
(274, 'Anvi', 'Kaur', 5, 'D', '9130000272', 268, 'Sundargarh', 'Aarav Kaur', 'Diya Kaur', '2011-08-08', '2022-09-09'),
(275, 'Reyansh', 'Ahir', 6, 'A', '9130000273', 269, 'Mirzapur', 'Raghav Ahir', 'Saanvika Ahir', '2009-06-06', '2020-08-08'),
(276, 'Kiara', 'Bindra', 3, 'A', '9130000274', 270, 'Kanker', 'Shaurya Bindra', 'Trisha Bindra', '2013-02-14', '2021-11-20'),
(277, 'Aarav', 'Duggal', 2, 'C', '9130000275', 271, 'Sheohar', 'Vivaan Duggal', 'Anaya Duggal', '2014-09-09', '2022-03-03'),
(278, 'Myra', 'Chowdhury', 1, 'D', '9130000276', 272, 'Sitamarhi', 'Ansh Chowdhury', 'Kiara Chowdhury', '2015-12-12', '2023-01-25'),
(279, 'Aditya', 'Meher', 4, 'D', '9130000277', 273, 'Jamtara', 'Parth Meher', 'Diya Meher', '2012-04-11', '2021-12-19'),
(280, 'Anaya', 'Saxena', 5, 'C', '9130000278', 274, 'Shajapur', 'Raghav Saxena', 'Rhea Saxena', '2011-11-11', '2022-05-27'),
(281, 'Aryan', 'Yadav', 6, 'C', '9130000279', 275, 'Doda', 'Shaurya Yadav', 'Amaira Yadav', '2009-03-17', '2020-10-05'),
(282, 'Meher', 'Mishra', 3, 'B', '9130000280', 276, 'Bharuch', 'Aarav Mishra', 'Zoya Mishra', '2013-07-22', '2021-03-22'),
(283, 'Ritvik', 'Vohra', 2, 'A', '9130000281', 277, 'Khargone', 'Reyansh Vohra', 'Nitya Vohra', '2014-01-01', '2022-04-04'),
(284, 'Saanvika', 'Iyer', 1, 'C', '9130000282', 278, 'Sehore', 'Parth Iyer', 'Diya Iyer', '2015-02-10', '2023-07-08'),
(285, 'Vivaan', 'Maheshwari', 4, 'B', '9130000283', 279, 'Itarsi', 'Shaurya Maheshwari', 'Kiara Maheshwari', '2012-06-06', '2021-09-14'),
(286, 'Trisha', 'Raina', 5, 'A', '9130000284', 280, 'Durg', 'Ritvik Raina', 'Amaira Raina', '2011-10-19', '2022-01-01'),
(287, 'Yuvraj', 'Bhatt', 6, 'D', '9130000285', 281, 'Katni', 'Ayaan Bhatt', 'Trisha Bhatt', '2009-12-03', '2020-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `add_teachers`
--

CREATE TABLE `add_teachers` (
  `id` int(100) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Subject2` varchar(20) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `Salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_teachers`
--

INSERT INTO `add_teachers` (`id`, `Fname`, `Lname`, `Subject`, `Subject2`, `Contact`, `Address`, `dob`, `doj`, `Salary`) VALUES
(4, 'Anita', 'Sharma', 'Math', 'Science', '9876543210', 'Street 1, Delhi', '1985-03-12', '2016-07-10', 29400),
(5, 'Rajuu', 'Verma', 'Science', 'Eng', '9123456789', 'Street 2, Mumbai', '1988-05-22', '2018-09-15', 11320),
(6, 'Sunita', 'Rao', 'Hindi', 'Math', '9988776655', 'Street 3, Bangalore', '1990-08-11', '2017-06-20', 18100),
(7, 'Amit', 'Kumar', 'SST', 'Hindi', '8899001122', 'Street 4, Kolkata', '1982-01-30', '2019-03-12', 17300),
(8, 'Neha', 'Singh', 'Eng', 'SST', '9090909090', 'Street 5, Chennai', '1989-11-25', '2020-11-01', 27890),
(9, 'Ravi', 'Yadav', 'Math', 'Science', '9012345678', 'Street 6, Pune', '1987-04-10', '2021-01-19', 15400),
(10, 'Meena', 'Jain', 'Science', 'Math', '9234567890', 'Street 7, Hyderabad', '1986-07-15', '2022-05-05', 19300),
(11, 'Deepak', 'Mehra', 'Eng', 'Science', '9345678901', 'Street 8, Ahmedabad', '1991-09-09', '2018-12-10', 14700),
(12, 'Priya', 'Reddy', 'SST', 'Hindi', '9456789012', 'Street 9, Jaipur', '1984-02-27', '2017-04-08', 25980),
(13, 'Karan', 'Desai', 'Hindi', 'Eng', '9567890123', 'Street 10, Lucknow', '1992-06-17', '2015-06-15', 10050),
(14, 'Ritu', 'Kapoor', 'Math', 'SST', '9678901234', 'Street 11, Surat', '1990-03-03', '2016-02-23', 16200),
(15, 'Nikhil', 'Joshi', 'Science', 'Math', '9789012345', 'Street 12, Nagpur', '1983-12-14', '2019-09-30', 18650),
(16, 'Sneha', 'Bansal', 'Eng', 'Science', '9890123456', 'Street 13, Bhopal', '1986-08-05', '2018-10-10', 17600),
(17, 'Vikram', 'Sen', 'SST', 'Hindi', '9001234567', 'Street 14, Indore', '1991-07-07', '2020-01-01', 29100),
(18, 'Pooja', 'Gupta', 'Hindi', 'Math', '9112345678', 'Street 15, Patna', '1987-10-10', '2021-08-08', 22800),
(19, 'Rakesh', 'Thakur', 'Math', 'Eng', '9223456789', 'Street 16, Chandigarh', '1985-06-20', '2016-04-04', 14200),
(20, 'Tina', 'Saxena', 'Science', 'SST', '9334567890', 'Street 17, Ludhiana', '1993-05-15', '2017-11-11', 20500),
(21, 'Arun', 'Malhotra', 'Eng', 'Science', '9445678901', 'Street 18, Amritsar', '1984-09-25', '2018-07-07', 19500),
(22, 'Kavita', 'Rana', 'SST', 'Hindi', '9556789012', 'Street 19, Nashik', '1992-12-20', '2022-03-03', 13300),
(23, 'Gaurav', 'Chopra', 'Hindi', 'SST', '9667890123', 'Street 20, Kanpur', '1988-02-10', '2019-12-12', 25000),
(24, 'Alok', 'Singhania', 'Math', 'Science', '9778901234', 'Street 21, Ranchi', '1989-11-11', '2015-09-09', 21900),
(25, 'Rina', 'Mishra', 'Science', 'Eng', '9889012345', 'Street 22, Guwahati', '1983-07-13', '2020-06-06', 13700),
(26, 'Suresh', 'Pandey', 'Eng', 'Math', '9990123456', 'Street 23, Bhubaneswar', '1982-03-29', '2021-05-05', 16500),
(27, 'Divya', 'Chawla', 'SST', 'Hindi', '9001234560', 'Street 24, Dehradun', '1991-01-01', '2017-10-10', 18000),
(28, 'Nitin', 'Garg', 'Hindi', 'Science', '9112345670', 'Street 25, Shimla', '1986-05-05', '2016-03-03', 15300),
(29, 'Shreya', 'Dixit', 'Math', 'Eng', '9223456780', 'Street 26, Jodhpur', '1989-06-06', '2018-08-08', 19900),
(30, 'Yash', 'Rathore', 'Science', 'SST', '9334567891', 'Street 27, Agra', '1985-10-10', '2020-02-02', 26000),
(31, 'Bhavna', 'Rawat', 'Eng', 'Math', '9445678902', 'Street 28, Gwalior', '1993-03-03', '2019-01-01', 12100),
(32, 'Rohan', 'Bhardwaj', 'SST', 'Hindi', '9556789013', 'Street 29, Panaji', '1987-12-12', '2021-07-07', 23900),
(33, 'Manisha', 'Ahuja', 'Hindi', 'Eng', '9667890124', 'Street 30, Noida', '1990-04-04', '2017-05-05', 17400),
(34, 'Sanjay', 'Gill', 'Math', 'Science', '9778901235', 'Street 31, Faridabad', '1984-08-08', '2016-06-06', 19000),
(35, 'Komal', 'Grover', 'Science', 'Math', '9889012346', 'Street 32, Varanasi', '1992-09-09', '2018-03-03', 20300),
(36, 'Ajay', 'Dugar', 'Eng', 'SST', '9990123457', 'Street 33, Meerut', '1983-02-02', '2019-05-05', 11000),
(37, 'Snehal', 'Kulkarni', 'SST', 'Hindi', '9001234561', 'Street 34, Aurangabad', '1986-01-01', '2022-04-04', 28800),
(38, 'Kiran', 'Naik', 'Hindi', 'Math', '9112345671', 'Street 35, Udaipur', '1988-11-11', '2020-10-10', 22400),
(39, 'Ankur', 'Pawar', 'Math', 'Science', '9223456781', 'Street 36, Solapur', '1985-07-07', '2015-08-08', NULL),
(40, 'Tanvi', 'Kohli', 'Science', 'Eng', '9334567892', 'Street 37, Raipur', '1991-05-05', '2017-09-09', NULL),
(41, 'Salwaar', 'Metalwar', 'Eng', 'Math', '9445678903', 'Street 38, Srinagar', '1987-06-06', '2016-12-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admission_form`
--

CREATE TABLE `admission_form` (
  `id` int(11) NOT NULL,
  `photo` longblob NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `bloodgroup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `roll_no`, `class`, `date`, `status`) VALUES
(1, 'Nisik', 1, 'Dwivedy', '2025-04-13', 'Absent'),
(2, 'ashik', 2, '10', '2025-04-13', 'Present'),
(3, 'sahil', 3, '10', '2025-04-13', 'Absent'),
(4, 'sahil', 3, '10', '2025-04-13', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `status` enum('present','absent') NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`id`, `fname`, `lname`, `status`, `date`, `created_at`) VALUES
(4, 'Anita', 'Sharma', 'present', '2025-04-15', '2025-04-15 11:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `fee_amount` decimal(10,2) NOT NULL,
  `fee_status` enum('Paid','Pending') NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_id`, `student_name`, `fee_amount`, `fee_status`, `payment_date`) VALUES
(1, '1', 'nisik', 50000.00, 'Pending', '2025-04-13'),
(2, '69', 'ashik', 69.00, 'Paid', '2025-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `pay_fees`
--

CREATE TABLE `pay_fees` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `card_number` varchar(25) DEFAULT NULL,
  `expiry_date` varchar(10) DEFAULT NULL,
  `cvv` varchar(5) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_fees`
--

INSERT INTO `pay_fees` (`id`, `student_name`, `class`, `month`, `amount`, `payment_method`, `card_number`, `expiry_date`, `cvv`, `remarks`, `payment_date`) VALUES
(1, 'nisik', '10', 'February', 34524.00, 'Card', '123456543434', '03/03', '325', 'best clg ever', '2025-04-13 13:32:07'),
(2, 'ashik', '10', 'January', 3452.00, 'Card', '123456543434', '03/03', '325', 'best clg everef', '2025-04-13 13:43:48'),
(3, 'ashik', '6', 'December', 45646.00, 'UPI', '0', '', '', 'afijabieebaegtarhnarhnsh', '2025-04-15 12:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `status` enum('present','absent') NOT NULL,
  `attendance_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `student_id`, `fname`, `lname`, `status`, `attendance_date`) VALUES
(1, 6, 'Aditya', 'Patel', 'present', '2025-04-15'),
(2, 7, 'Krishna', 'Reddy', 'absent', '2025-04-15'),
(3, 8, 'Ishaan', 'Iyer', 'absent', '2025-04-15'),
(4, 9, 'Anaya', 'Mishra', 'present', '2025-04-15'),
(5, 10, 'Diya', 'Kapoor', 'absent', '2025-04-15'),
(6, 7, 'Krishna', 'Reddy', 'present', '2025-04-15'),
(7, 13, 'Aanya', 'Singh', 'present', '2025-04-15'),
(8, 7, 'Krishna', 'Reddy', 'present', '2025-04-15'),
(9, 13, 'Aanya', 'Singh', 'present', '2025-04-15'),
(10, 7, 'Krishna', 'Reddy', 'absent', '2025-04-15'),
(11, 13, 'Aanya', 'Singh', 'absent', '2025-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject1` varchar(50) DEFAULT NULL,
  `marks1` int(11) DEFAULT NULL,
  `subject2` varchar(50) DEFAULT NULL,
  `marks2` int(11) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `subject1`, `marks1`, `subject2`, `marks2`, `percentage`, `exam_date`, `created_at`) VALUES
(1, 6, 'Maths', 10, 'Maths', 54, 32.00, '2025-04-15', '2025-04-15 11:52:50'),
(2, 7, 'Maths', 24, 'Maths', 45, 34.50, '2025-04-15', '2025-04-15 11:52:50'),
(3, 8, 'Maths', 45, 'Maths', 34, 39.50, '2025-04-15', '2025-04-15 11:52:50'),
(4, 9, 'Maths', 43, 'Maths', 34, 38.50, '2025-04-15', '2025-04-15 11:52:50'),
(5, 10, 'Maths', 34, 'Maths', 53, 43.50, '2025-04-15', '2025-04-15 11:52:50'),
(6, 6, 'SST', 56, 'English', 45, 50.50, '2025-04-15', '2025-04-15 12:28:21'),
(7, 7, 'Science', 54, 'English', 56, 55.00, '2025-04-15', '2025-04-15 12:28:21'),
(8, 8, 'SST', 67, 'Hindi', 35, 51.00, '2025-04-15', '2025-04-15 12:28:21'),
(9, 6, 'Science', 23, 'Maths', 54, 38.50, '2025-04-15', '2025-04-15 12:28:44'),
(10, 7, 'English', 43, 'Hindi', 78, 60.50, '2025-04-15', '2025-04-15 12:28:44'),
(11, 8, 'SST', 56, 'English', 54, 55.00, '2025-04-15', '2025-04-15 12:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Staff','Student') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'nisik', '$2y$10$EZ5qSKwcoNwi.U2DomI8wOlFFzkJizTIxL.GnNKqDZJzhloxnu47O', 'Admin'),
(2, 'student1', '$2y$10$djuwu42teRssaxLX8LBShuTmOEXSOr/I8.1QqlaDZk3Y4b54y5.qO', 'Student'),
(3, 'staff1', '$2y$10$abzrjdY9SO5LQSqOMZQR0uBIgwGc2BtNLXaeUDKUP/P/PnmER8Bp2', 'Staff'),
(4, 'ashik', '$2y$10$mW/48D6E2qgxS3EhKkOCp..pzQVOzR0X2uOUzceyIUnqYebqt9Dwa', 'Admin'),
(6, 'admin', '$2y$10$uvIfT/vVV4fQ/u8g9K3xBOsELr3gQ.TJOue3t8JH4syhb7BvQZyT.', 'Admin'),
(7, 'teacher', '$2y$10$YSPsPF8OlIgJoGwhElD8X.cczNctD7BLllMnNlhfzxKl1lJkU5Puq', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_students`
--
ALTER TABLE `add_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_teachers`
--
ALTER TABLE `add_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_form`
--
ALTER TABLE `admission_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_fees`
--
ALTER TABLE `pay_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_students`
--
ALTER TABLE `add_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `add_teachers`
--
ALTER TABLE `add_teachers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `admission_form`
--
ALTER TABLE `admission_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_fees`
--
ALTER TABLE `pay_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD CONSTRAINT `student_attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `add_students` (`id`);

--
-- Constraints for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD CONSTRAINT `student_marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `add_students` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
