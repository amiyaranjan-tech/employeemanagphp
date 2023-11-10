

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `etmsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE IF NOT EXISTS `attendance_info` (
`aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE IF NOT EXISTS `task_info` (
`task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
 ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
 ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`user_id`);


--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;

