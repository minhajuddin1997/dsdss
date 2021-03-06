-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 01:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myprojectstaging_dynisty`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_type`
--

CREATE TABLE `appointment_type` (
  `appointment_type_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_projects_id` int(11) DEFAULT NULL,
  `app_depart` varchar(191) NOT NULL,
  `app_type` varchar(191) NOT NULL,
  `app_description` text NOT NULL,
  `app_time` varchar(191) NOT NULL,
  `appointment_type_status` enum('0','1') DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_type`
--

INSERT INTO `appointment_type` (`appointment_type_id`, `user_id`, `client_projects_id`, `app_depart`, `app_type`, `app_description`, `app_time`, `appointment_type_status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 5, 0, '9', 'consulting', 'dasdasdasdsa                               ', '30 mins', '0', '2020-09-22 14:02:01', NULL, '2020-09-22 14:02:28', NULL),
(2, 5, 0, '18', 'Consultant', 'Testing                            ', '09:10', '0', '2020-10-28 23:32:40', NULL, '0000-00-00 00:00:00', NULL),
(3, 5, 0, '4', 'TEST', 'TEST', '09:00', '0', '2020-11-06 19:50:07', NULL, '0000-00-00 00:00:00', NULL),
(4, 5, 0, '6', 'consultant', 'Testing                            ', '09:00-05:00', '0', '2020-11-06 21:23:05', NULL, '0000-00-00 00:00:00', NULL),
(5, 5, 0, '30', 'Eviction Attorney', 'Test                            ', '10:00 pm', '0', '2020-12-19 19:56:10', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `client_name` varchar(150) NOT NULL,
  `client_email` varchar(150) NOT NULL,
  `client_phone_number` varchar(30) NOT NULL,
  `client_company` varchar(300) DEFAULT NULL,
  `client_website` varchar(300) DEFAULT NULL,
  `client_address` varchar(300) DEFAULT NULL,
  `client_image` varchar(300) DEFAULT NULL,
  `client_cover_image` text DEFAULT NULL,
  `client_city` varchar(300) DEFAULT NULL,
  `client_state` varchar(300) DEFAULT NULL,
  `client_country` varchar(300) DEFAULT NULL,
  `client_password` varchar(300) NOT NULL,
  `forgot_password_token` varchar(300) DEFAULT NULL,
  `pass_change_notification` varchar(100) NOT NULL DEFAULT 'Please change your password if you are logged in for first time',
  `client_status` tinyint(1) NOT NULL DEFAULT 1,
  `client_login_detail` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `last_login` datetime DEFAULT current_timestamp(),
  `online_status` enum('yes','no') DEFAULT NULL,
  `client_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_times` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `role_id`, `client_name`, `client_email`, `client_phone_number`, `client_company`, `client_website`, `client_address`, `client_image`, `client_cover_image`, `client_city`, `client_state`, `client_country`, `client_password`, `forgot_password_token`, `pass_change_notification`, `client_status`, `client_login_detail`, `last_login`, `online_status`, `client_date`, `login_times`) VALUES
(1, 2, 'Usmanss', 'muhammad.minhaj@technado.co', '321-3123223', 'Pakistan', 'http://outsourceinpakistan.com/', 'Gulistan-e-Jauhar', 'Open-Email-for-blog-iStock-8600074126.jpg', 'Packaging31.png', 'Karachi', 'Sindh', 'Pakistan', '12345', '', 'Please change your password if you are logged in for first time', 0, 'enable', '2021-01-28 10:40:05', 'no', '2020-07-07 23:33:17', 93),
(150, 2, 'ddsad', 'muhammad.sminhaj@technado.co', '321-321', 'sdsa', 'https://test.com', 'dasd', '1572855258-graphicdesignsoftware.jpg', '5fnmwej4taa-helloquence-3-1024x683-1024x585.jpg', NULL, NULL, 'Albania', '123', NULL, 'Please change your password if you are logged in for first time', 1, 'enable', '2021-01-28 11:39:12', 'yes', '2021-01-27 05:54:15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `client_intake_payments`
--

CREATE TABLE `client_intake_payments` (
  `client_payments_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_no` varchar(50) NOT NULL,
  `client_payments_amount` double(10,2) NOT NULL,
  `client_payments_pay_status` enum('Paid','Unpaid','Hold') NOT NULL,
  `uploaded_month` int(3) NOT NULL,
  `year` text NOT NULL,
  `client_payments_status` tinyint(1) NOT NULL DEFAULT 0,
  `client_payments_type` varchar(255) NOT NULL,
  `client_payments_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_intake_payments`
--

INSERT INTO `client_intake_payments` (`client_payments_id`, `client_id`, `payment_no`, `client_payments_amount`, `client_payments_pay_status`, `uploaded_month`, `year`, `client_payments_status`, `client_payments_type`, `client_payments_date`) VALUES
(68, 1, 'E3476', 59.00, 'Paid', 1, '2021', 1, 'Card', '2021-01-27 06:45:47'),
(69, 1, 'B29E0', 59.00, 'Paid', 1, '2021', 1, 'Card', '2021-01-27 10:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `client_package`
--

CREATE TABLE `client_package` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `package_id` text NOT NULL,
  `status` enum('Paid','Unpaid','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_package`
--

INSERT INTO `client_package` (`id`, `client_id`, `package_id`, `status`) VALUES
(66, 149, '9D2AF', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `client_projects`
--

CREATE TABLE `client_projects` (
  `client_projects_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_brief_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `project_name` varchar(300) NOT NULL,
  `project_type` varchar(300) NOT NULL,
  `sub_project_type` int(11) DEFAULT NULL,
  `project_summary` text NOT NULL,
  `delivery_status` varchar(50) DEFAULT NULL,
  `payment_due` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `website_url` varchar(300) DEFAULT '#',
  `uploaded_month` int(3) NOT NULL,
  `uploaded_year` varchar(300) NOT NULL DEFAULT '2020',
  `summary_file` varchar(300) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `server_time` varchar(191) DEFAULT NULL,
  `complete_status` enum('completed','pending','stopped') NOT NULL DEFAULT 'pending',
  `client_projects_status` tinyint(1) NOT NULL DEFAULT 1,
  `client_projects_start_date` text DEFAULT NULL,
  `client_projects_due_date` text DEFAULT NULL,
  `client_projects_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `client_project_members` text NOT NULL,
  `project_manager_id` int(11) NOT NULL,
  `signature_path` text DEFAULT NULL,
  `perioty_status` enum('high','low','medium','critical','low') DEFAULT NULL,
  `duration_plan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_projects`
--

INSERT INTO `client_projects` (`client_projects_id`, `client_id`, `project_brief_id`, `package_id`, `project_name`, `project_type`, `sub_project_type`, `project_summary`, `delivery_status`, `payment_due`, `website_url`, `uploaded_month`, `uploaded_year`, `summary_file`, `ip_address`, `browser`, `os`, `server_time`, `complete_status`, `client_projects_status`, `client_projects_start_date`, `client_projects_due_date`, `client_projects_date`, `client_project_members`, `project_manager_id`, `signature_path`, `perioty_status`, `duration_plan`) VALUES
(344, 1, NULL, NULL, 'dasda', '1', 12, 'dsadsa', 'Brief', 'No', '#', 1, '2020', NULL, NULL, NULL, NULL, NULL, 'pending', 1, NULL, '01/13/2021', '2021-01-27 10:15:20', '', 0, 'data:image/png;base64,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', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_project_brief`
--

CREATE TABLE `client_project_brief` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_project_id` int(11) DEFAULT NULL,
  `data` text NOT NULL,
  `type` enum('wb','lb','cb','sb') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `comments_text` text NOT NULL,
  `comments_read_admin` enum('read','unread') DEFAULT 'unread',
  `comments_read_client` enum('read','unread') NOT NULL DEFAULT 'unread',
  `comments_status` tinyint(1) NOT NULL DEFAULT 0,
  `comments_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comments_id`, `project_id`, `sender_id`, `comments_text`, `comments_read_admin`, `comments_read_client`, `comments_status`, `comments_date`) VALUES
(81, 343, 1, 'test', 'unread', 'unread', 0, '2021-01-27 07:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments_files`
--

CREATE TABLE `comments_files` (
  `comments_files_id` int(11) NOT NULL,
  `comments_files_file` varchar(300) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `comments_id` int(11) NOT NULL,
  `comments_files_status` tinyint(1) NOT NULL DEFAULT 0,
  `comments_files_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments_images`
--

CREATE TABLE `comments_images` (
  `comments_images_id` int(11) NOT NULL,
  `comments_id` int(11) NOT NULL,
  `comments_images_img` varchar(300) NOT NULL,
  `comments_images_status` tinyint(1) NOT NULL DEFAULT 0,
  `comments_images_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_contacts`
--

CREATE TABLE `crm_contacts` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `website` text DEFAULT NULL,
  `display_picture` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_contacts`
--

INSERT INTO `crm_contacts` (`id`, `client_id`, `role_id`, `name`, `email`, `company`, `website`, `display_picture`, `status`) VALUES
(1, 150, 2, 'test', 'test@g.com', 'test', 'test.com', '5fnmwej4taa-helloquence-3-1024x683-1024x58519.jpg', 1),
(2, 150, 2, 'test', 'test@g.com', 'test', 'test.com', '5fnmwej4taa-helloquence-3-1024x683-1024x58520.jpg', 0),
(3, 150, 3, 'dsad', 'muhammad.minhaj@technado.co', 'dasda', 'd', '5fnmwej4taa-helloquence-3-1024x683-1024x58520.jpg', 0),
(4, 150, 2, 'dasd', 'muhammad.minhaj@technado.co', 'dsad', 'dsada', '1572855258-graphicdesignsoftware12.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_available`
--

CREATE TABLE `default_available` (
  `default_available_id` bigint(20) NOT NULL,
  `to_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_time` varchar(100) NOT NULL,
  `from_time` varchar(100) NOT NULL,
  `default_available_status` enum('0','1') NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `default_available`
--

INSERT INTO `default_available` (`default_available_id`, `to_date`, `from_date`, `to_time`, `from_time`, `default_available_status`, `user_id`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, '2020-10-14', '2020-10-20', '09:58', '18:58', '0', 5, '2020-09-22 13:57:48', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(300) NOT NULL,
  `department_status` tinyint(1) NOT NULL DEFAULT 0,
  `main_department_id` int(11) NOT NULL,
  `department_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_status`, `main_department_id`, `department_date`) VALUES
(1, 'Project Management', 1, 0, '2020-06-23 05:37:47'),
(2, 'Account Management', 1, 0, '2020-06-23 05:38:08'),
(3, 'Branding & Design', 1, 0, '2020-07-29 07:20:31'),
(4, 'Web Development', 1, 1, '2020-07-29 07:20:39'),
(5, 'App Development', 1, 0, '2020-07-29 07:20:50'),
(6, 'SEO Services', 1, 4, '2020-07-29 07:21:07'),
(7, 'Social Media Marketing', 1, 4, '2020-07-29 07:21:17'),
(8, 'Lead Generation', 1, 4, '2020-07-29 07:21:22'),
(9, 'Content Writing', 1, 0, '2020-07-29 07:21:28'),
(10, 'Video Animation', 1, 0, '2020-07-29 07:21:35'),
(11, 'Online Course', 1, 0, '2020-08-02 00:42:05'),
(12, 'Web Hosting', 1, 1, '2020-08-26 00:41:50'),
(13, 'Business Workshop', 1, 0, '2020-08-26 00:42:17'),
(14, 'Agile Workshop', 1, 0, '2020-08-26 00:42:55'),
(15, 'Maintenance', 1, 0, '2020-08-26 00:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `developer_id` int(11) NOT NULL,
  `developer_content_image` varchar(300) NOT NULL,
  `site_logo` text NOT NULL,
  `developer_nav_image` varchar(300) NOT NULL,
  `developer_login_background` varchar(300) DEFAULT NULL,
  `developer_nav_gradient` varchar(50) NOT NULL,
  `developer_nav_color` varchar(50) NOT NULL,
  `front_content_image` varchar(300) NOT NULL,
  `front_login_back` varchar(300) NOT NULL,
  `front_nav_image` varchar(300) NOT NULL,
  `front_nav_gradient` varchar(300) NOT NULL,
  `front_nav_color` varchar(300) NOT NULL,
  `default_status` enum('1','0','','') NOT NULL DEFAULT '0',
  `developer_status` tinyint(1) NOT NULL DEFAULT 0,
  `developer_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`developer_id`, `developer_content_image`, `site_logo`, `developer_nav_image`, `developer_login_background`, `developer_nav_gradient`, `developer_nav_color`, `front_content_image`, `front_login_back`, `front_nav_image`, `front_nav_gradient`, `front_nav_color`, `default_status`, `developer_status`, `developer_date`) VALUES
(1, 'blank-white-image-1024x576.png', 'Dynisty-PNG8.png', 'blank-white-image-1024x576.png', 'photo-1549286942-e6b84b2db18d.jpg', '', '', 'logo3.png', 'BG.png', 'blank-white-image-1024x576.png', '', '', '1', 0, '2020-12-30 10:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `kanban`
--

CREATE TABLE `kanban` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `status` text NOT NULL,
  `priority` enum('true','false','','') NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kanban`
--

INSERT INTO `kanban` (`id`, `task_id`, `task_name`, `description`, `status`, `priority`) VALUES
(1, 1, 'test', '', 'red', 'false'),
(2, 2, 'dasd', '', 'blue', 'false'),
(3, 3, 'dasdas', '', 'blue', 'false'),
(4, 4, 'dd', '', 'green', 'false'),
(5, 5, 'f', '', 'green', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_name` varchar(50) NOT NULL,
  `lead_type` varchar(255) DEFAULT NULL,
  `status` enum('0','1','','') DEFAULT '1',
  `upload_year` text NOT NULL,
  `upload_month` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `client_id`, `lead_name`, `lead_type`, `status`, `upload_year`, `upload_month`) VALUES
(1, 1, 'test', 'logo', '1', '2021', '12'),
(2, 1, 'test2', 'web', '1', '2021', '11'),
(3, 1, 'tess', 'logo', '1', '2021', '12'),
(4, 1, 'dsd', 'web', '1', '2021', '12'),
(5, 1, 'dsd', 'web', '1', '2021', '12'),
(15, 1, 'test', 'web', '1', '2021', '01'),
(16, 1, 'creative', 'creative', '1', '2021', '01'),
(17, 1, 'seo', 'seo', '1', '2021', '01'),
(18, 1, 'Test Lead 1', 'web', '1', '2021', '11'),
(19, 1, 'Test Lead 2', 'flyers', '1', '2021', '12'),
(20, 1, 'Test Lead 3', 'flyers', '1', '2021', '12'),
(21, 1, 'Test Lead 4', 'flyers', '1', '2021', '12'),
(22, 1, 'Test Lead 5', 'flyers', '1', '2021', '5'),
(23, 1, 'Test Lead 6', 'logo', '1', '2021', '4'),
(24, 1, 'Test Lead 7', 'logo', '1', '2021', '3'),
(25, 1, 'Test Lead 8', 'logo', '1', '2021', '2'),
(26, 1, 'Test Lead 9', 'seo', '1', '2021', '02');

-- --------------------------------------------------------

--
-- Table structure for table `main_department`
--

CREATE TABLE `main_department` (
  `main_department_id` int(11) NOT NULL,
  `main_department_name` varchar(300) NOT NULL,
  `main_department_status` tinyint(1) NOT NULL DEFAULT 0,
  `main_department_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_department`
--

INSERT INTO `main_department` (`main_department_id`, `main_department_name`, `main_department_status`, `main_department_date`) VALUES
(1, 'Web', 1, '2021-01-26 08:00:00'),
(2, 'Logo', 1, '2021-01-27 04:10:33'),
(3, 'Creative', 1, '2021-01-27 04:10:53'),
(4, 'SEO', 1, '2021-01-27 04:10:53'),
(5, 'Flyers', 1, '2021-01-27 04:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `id` int(11) NOT NULL,
  `lead_name` varchar(50) NOT NULL,
  `lead_type` text DEFAULT NULL,
  `status` enum('On','Off','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`id`, `lead_name`, `lead_type`, `status`) VALUES
(1, 'Lash Empire Starter Kit', '0', NULL),
(2, 'Professional Business Cards', '95', ''),
(3, 'E-Gift Card', '25', ''),
(4, 'Custom Planner Design', '799', ''),
(5, 'Custom Scratch Cards', '109', ''),
(6, 'Image Based Logo', '175', ''),
(7, 'Standard Website - Design Only', '499', ''),
(8, 'Premium Website Package', '899', ''),
(9, 'Online Store Website', '615', ''),
(10, 'Online Booking Website', '615', ''),
(11, 'TEST', '22', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `notification_status` enum('read','unread','','') NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(20) NOT NULL,
  `package_features` text NOT NULL,
  `package_price` double NOT NULL,
  `package_type` enum('wb','lb','cb','sb','addon') DEFAULT NULL,
  `main_department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_features`, `package_price`, `package_type`, `main_department_id`) VALUES
(1, 'Starter', '[\"Free Revision\", \"Conversion\", \"All Formats\"]', 125, 'lb', 2),
(2, 'Business', '[\"Free Revision\", \"Conversion\", \"All Formats\"]', 22, 'lb', 2),
(3, 'Web', '[\"Web Hosting\", \"Domain\", \"CRM\", \"ERP\"]', 20, 'wb', 1),
(4, 'Creative', 'CREATIVE', 44, 'cb', 3),
(5, 'Beginner', 'SEO PACKAGE', 33, 'sb', 4),
(6, 'Corporate', '[\"Free Revision\", \"Conversion\", \"All Formats\"]', 22, 'lb', 2),
(7, 'Professional', '[\"Free Revision\", \"Conversion\", \"All Formats\"]', 22, 'lb', 2),
(8, 'Addon 1', '', 22, 'addon', 0),
(9, 'Addon 2', '', 15, 'addon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, '[\"createUser\",\"updateUser\",\"viewUser\",\"deleteUser\",\"createRole\",\"updateRole\",\"viewRole\",\"deleteRole\",\"createClient\",\"updateClient\",\"viewClient\",\"deleteClient\",\"createDepartment\",\"updateDepartment\",\"viewDepartment\",\"deleteDepartment\",\"createDesignation\",\"updateDesignation\",\"viewDesignation\",\"deleteDesignation\",\"createDevelopmentStatus\",\"updateDevelopmentStatus\",\"viewDevelopmentStatus\",\"deleteDevelopmentStatus\",\"createClientProjects\",\"updateClientProjects\",\"viewClientProjects\",\"deleteClientProjects\",\"createAssignProjects\",\"updateAssignProjects\",\"viewAssignProjects\",\"deleteAssignProjects\",\"createAssignResources\",\"updateAssignResources\",\"viewAssignResources\",\"deleteAssignResources\",\"createKpi\",\"updateKpi\",\"viewKpi\",\"deleteKpi\",\"createDomain\",\"updateDomain\",\"viewDomain\",\"deleteDomain\",\"createDomainTarget\",\"updateDomainTarget\",\"viewDomainTarget\",\"deleteDomainTarget\",\"createPayment\",\"viewPayment\",\"createRefund\",\"viewSupport\",\"deleteSupport\",\"viewApp\",\"createBoard\",\"createBoard\",\"viewBoard\",\"deleteBoard\",\"createTemplate\",\"createTemplate\",\"viewTemplate\",\"deleteTemplate\",\"viewClientFile\",\"deleteClientFile\",\"updateDeveloper\",\"updateSetting\",\"updateProfile\",\"viewAnalytics\",\"chat\"]'),
(2, '[\"viewClient\",\"updateClientProjects\",\"viewClientProjects\",\"createAssignProjects\",\"updateAssignProjects\",\"viewAssignProjects\",\"createAssignResources\",\"updateAssignResources\",\"viewAssignResources\",\"createKpi\",\"updateKpi\",\"viewKpi\",\"createPayment\",\"viewPayment\",\"viewSupport\",\"updateProfile\"]'),
(3, '[\"viewClient\"]');

-- --------------------------------------------------------

--
-- Table structure for table `projects_files`
--

CREATE TABLE `projects_files` (
  `projects_files_id` int(11) NOT NULL,
  `projects_files_file` varchar(300) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `client_projects_id` int(11) NOT NULL,
  `projects_files_status` tinyint(1) NOT NULL DEFAULT 0,
  `projects_files_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_files`
--

INSERT INTO `projects_files` (`projects_files_id`, `projects_files_file`, `extension`, `client_projects_id`, `projects_files_status`, `projects_files_date`) VALUES
(2, 'Dynisty_Business_Description_and_Tagline_(1).docx', 'docx', 312, 0, '2021-01-26 07:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `projects_tasks`
--

CREATE TABLE `projects_tasks` (
  `projects_tasks_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `client_projects_id` int(11) NOT NULL,
  `task_name` varchar(100) NOT NULL,
  `priority` enum('High','Medium','Low','') NOT NULL,
  `description` text NOT NULL,
  `status` enum('Pending','Completed','Stopped','') NOT NULL,
  `phase_id` int(11) DEFAULT NULL,
  `start_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `server_time` varchar(191) DEFAULT NULL,
  `task_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_tasks`
--

INSERT INTO `projects_tasks` (`projects_tasks_id`, `client_id`, `assigned_to`, `client_projects_id`, `task_name`, `priority`, `description`, `status`, `phase_id`, `start_date`, `due_date`, `ip_address`, `browser`, `os`, `server_time`, `task_status`) VALUES
(1, 1, 1, 343, 'test', '', 'test', 'Completed', 0, '2021-01-26', '2021-01-26', NULL, NULL, NULL, NULL, 0),
(2, 1, 150, 343, 'new', '', 'tes', 'Completed', 0, '2021-01-21', '2021-01-26', NULL, NULL, NULL, NULL, 0),
(3, 1, 1, 343, 'dsad', '', 'dsadsa', 'Completed', 0, '2021-01-22', '2021-01-26', NULL, NULL, NULL, NULL, 0),
(4, 1, 1, 344, 'dsadsa', '', 'dasdsa', 'Completed', 0, '2021-01-14', '2021-01-27', NULL, NULL, NULL, NULL, 1),
(5, 1, 1, 344, 'dsadsa', '', 'dasda', 'Pending', 0, '2021-01-09', '2021-01-22', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_additional`
--

CREATE TABLE `project_additional` (
  `project_additional_id` int(11) NOT NULL,
  `client_projects_id` int(11) NOT NULL,
  `project_additional_feature_name` varchar(255) NOT NULL,
  `project_additional_feature_price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_additional`
--

INSERT INTO `project_additional` (`project_additional_id`, `client_projects_id`, `project_additional_feature_name`, `project_additional_feature_price`) VALUES
(25, 338, 'Addon 1', '22'),
(26, 338, 'Addon 2', '15'),
(27, 338, 'rush', '22'),
(28, 339, 'Addon 1', '22'),
(29, 339, 'Addon 2', '15'),
(30, 339, 'rush', '22'),
(31, 342, 'Addon 1', '22'),
(32, 342, 'rush', '22'),
(33, 343, 'Addon 1', '22'),
(34, 343, 'Addon 2', '15'),
(35, 343, 'rush', '22'),
(36, 344, 'Addon 1', '22'),
(37, 344, 'Addon 2', '15'),
(38, 344, 'rush', '22');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_permission` text NOT NULL,
  `role_status` enum('enable','disable') DEFAULT 'enable',
  `role_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role_created_by` int(11) DEFAULT NULL,
  `role_updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_permission`, `role_status`, `role_created_at`, `role_created_by`, `role_updated_at`, `role_updated_by`) VALUES
(1, 'Admin', '[\"viewUser\",\"createRoles\",\"editRoles\",\"viewRoles\",\"deleteRoles\",\"createClient\",\"updateClient\",\"viewClient\",\"deleteClient\",\"viewCRM\",\"viewCircle\",\"viewMarketPlace\",\"viewMarketAnalytics\",\"createFileManagement\",\"updateFileManagement\",\"viewFileManagement\",\"deleteFileManagement\",\"createClientProjects\",\"updateClientProjects\",\"viewClientProjects\",\"deleteClientProjects\",\"createAssignProjects\",\"updateAssignProjects\",\"viewAssignProjects\",\"deleteAssignProjects\",\"createAssignResources\",\"updateAssignResources\",\"viewAssignResources\",\"deleteAssignResources\",\"createPayment\",\"viewPayment\",\"viewSupport\",\"deleteSupport\",\"updateProfile\",\"viewProfile\",\"viewAnalytics\"]', 'enable', '2020-12-04 03:24:26', 1, '2020-10-20 22:50:57', 1),
(2, 'Client', '[\"createUser\",\"updateUser\",\"viewUser\",\"deleteUser\",\"createClient\",\"updateClient\",\"viewClient\",\"deleteClient\",\"createCRM\",\"updateCRM\",\"viewCRM\",\"deleteCRM\",\"createCircle\",\"updateCircle\",\"viewCircle\",\"deleteCircle\",\"viewMarketAnalytics\",\"createFileManagement\",\"updateFileManagement\",\"viewFileManagement\",\"deleteFileManagement\",\"createClientProjects\",\"updateClientProjects\",\"viewClientProjects\",\"deleteClientProjects\",\"createAssignProjects\",\"updateAssignProjects\",\"viewAssignProjects\",\"deleteAssignProjects\",\"createAssignResources\",\"updateAssignResources\",\"viewAssignResources\",\"deleteAssignResources\",\"createPayment\",\"viewPayment\",\"viewSupport\",\"deleteSupport\",\"updateProfile\",\"viewProfile\",\"viewAnalytics\"]', 'enable', '2020-12-30 11:14:25', 1, '2020-10-20 22:53:28', 1),
(3, 'Prospect', '[\"updateUser\"]', 'enable', '2020-11-26 10:54:39', NULL, '2020-11-26 05:01:36', NULL),
(4, 'Project Manager', '[\"updateUser\",\"updateClientProjects\",\"viewClientProjects\"]', 'enable', '2020-12-09 02:53:06', NULL, '2020-11-23 20:37:19', NULL),
(16, 'test', '[\"createUser\",\"updateUser\",\"createRoles\",\"editRoles\",\"viewRoles\",\"deleteRoles\",\"createClient\",\"updateClient\"]', 'enable', '2020-12-18 03:13:27', NULL, '2020-12-03 07:51:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) UNSIGNED NOT NULL,
  `settings_site_title` varchar(50) NOT NULL,
  `settings_email` varchar(50) NOT NULL,
  `settings_email_from` varchar(300) NOT NULL,
  `settings_email_to` varchar(300) DEFAULT NULL,
  `settings_phone` varchar(50) NOT NULL,
  `settings_address` varchar(300) NOT NULL,
  `settings_favicon` varchar(50) DEFAULT NULL,
  `settings_logo` varchar(50) DEFAULT NULL,
  `settings_shipping_flat` int(11) DEFAULT NULL,
  `settings_shipping_free` int(11) DEFAULT NULL,
  `settings_tax` double(8,2) DEFAULT NULL,
  `settings_header` varchar(300) NOT NULL,
  `settings_background` varchar(300) DEFAULT NULL,
  `settings_status` enum('enable','disable') DEFAULT NULL,
  `settings_created_by` int(11) DEFAULT NULL,
  `settings_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `settings_updated_by` int(11) DEFAULT NULL,
  `settings_updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `settings_site_title`, `settings_email`, `settings_email_from`, `settings_email_to`, `settings_phone`, `settings_address`, `settings_favicon`, `settings_logo`, `settings_shipping_flat`, `settings_shipping_free`, `settings_tax`, `settings_header`, `settings_background`, `settings_status`, `settings_created_by`, `settings_created_at`, `settings_updated_by`, `settings_updated_at`) VALUES
(1, 'Dynisty', 'support@dynistybranding.com', 'support@dynistybranding.com', 'support@dynistybranding.com', '(100) 030-0800', '', 'fev-icon.png', 'logo.png', 200, 900, 0.00, 'Mon to Fri : 9:00am to 6:00pm', 'bg-02.jpg', 'enable', 1, '2019-05-20 09:55:42', 1, '2020-10-07 14:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `ticket_no` text NOT NULL,
  `subject` varchar(70) NOT NULL,
  `department` varchar(40) NOT NULL,
  `message` text NOT NULL,
  `attachment_file` text DEFAULT NULL,
  `status` enum('Open','Answered','','') NOT NULL DEFAULT 'Open',
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `generated_by` int(11) NOT NULL,
  `answered_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_email` varchar(300) NOT NULL,
  `user_image` varchar(300) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_cover_image` varchar(300) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `admin_bussniess` varchar(300) DEFAULT NULL,
  `user_address` varchar(300) DEFAULT NULL,
  `user_type` enum('admin','wordpress','wp-html','custom','designer','other') NOT NULL DEFAULT 'admin',
  `designation_id` text DEFAULT NULL,
  `user_pass` varchar(300) NOT NULL,
  `forgot_password_token` varchar(300) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT 0,
  `user_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `online_status` enum('Yes','No','','') NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `user_email`, `user_image`, `user_phone`, `user_cover_image`, `user_name`, `admin_bussniess`, `user_address`, `user_type`, `designation_id`, `user_pass`, `forgot_password_token`, `user_status`, `user_date`, `online_status`, `last_login`) VALUES
(5, 1, 'zar@plutoprojects.net', 'zvr786_14_04_17_22_21.png', '9179631984', 'cover.jpg', 'Zar786', 'Pluto Projects LLC', 'https://plutoprojects.net/', 'admin', NULL, '95b8601890eb8cb98d31dd0532838baa9e717455683c72a9abc7e0f14b070e816a5085790172e580c26501247775752b9f475c887a3bb5a7da81c60bb5161871dMBv/DbuIHAiX9GIJMKM9Wu3/AWM8uitvPe/DrYH5T7ySJ7h6layNwD2iZkzXsTG', '201904016472A050110E9D68009729D6627C25C0CFDC9B2B5CA1C0AB45FD9', 0, '2017-12-29 12:39:28', 'Yes', '2020-11-21 07:52:42'),
(6, 0, 'admin@outsourceinpakistan.com', '56153781_325577931461520_868313323483955200_n.jpg', '16092815203', '', 'Admin', NULL, NULL, 'admin', NULL, '0c39effa6515a85c42846f17ccb31de38e233d2a1e5d4bb90c3a3d9c490dc42e1e2d201bf2a2892639b0edd9edc5160697f269e04a908cf96882e91bba08e3ecWCLEjB2MbPgnZXKb//+iomXiulfzLYj4vWWLTJxI3gY=', '', 0, '2020-07-22 14:37:20', 'No', '2020-11-16 20:07:53'),
(8, 1, 'uarain229@gmail.com', 'images_(2).jpg', '21321322', '', 'umar Mansoor Arain', NULL, NULL, 'admin', NULL, 'da19d2da8c6d32eb994b1a949c5bd72981b411119c5838ddc07afd56842bddc47f0a1f7f10e6fe8cf0e907e0265567350bc938eb080ba30b885ce4a53951157e5vfWCoRx1a/2lxsIr6EGrJ8K4CNHRrVh8WRaUbFuUjc=', '', 0, '2020-08-27 18:37:21', 'No', '2020-11-16 20:07:53'),
(9, 7, 'tanveer.ahmed@technado.co', 'gerlly-01.jpg', '0465456436', '', 'TanveerKanband', NULL, NULL, 'admin', '[\"13\",\"14\"]', '59fe884c20f9420d83f86c5bc641cda70ac8a0f2b3cecc834b9d60ed05c92db5219fe5d28410e7c151207135b8090dae8eec28d73ee1b6b26cc9815c55ad39fcXqmtjsHa7MHs/hrHr1QlyrI6kfC+xA6ZdXkDCq8S46g=', '', 0, '2020-10-01 12:38:46', 'No', '2020-11-16 20:07:53'),
(11, 7, 'altaf@demo.co', 'download1.jpg', '465456435', '', 'altaf', NULL, NULL, 'admin', '[\"13\",\"14\"]', '5924362da3bc9dcf73dbff55744a19faa751085bcfac5b5353577c01074eba900619bd16bc8cdba0b213cd52aff007543dc5cc68901f82d5c89030a1c4a71a1c/WOeft6FrTsJ8/CveZ2mQuonK9cb6UxqUxCLQKYOKJ8=', '', 0, '2020-10-06 12:49:07', 'No', '2020-11-16 20:07:53'),
(12, 1, 'muhammad.minhaj@technado.co', 'photo-1490131784822-b4626a8ec96a1.jpg', '1234562', '4k-ultra-hd-background-road-mountains-trees-autumn-leaves-ye1.jpg', 'Minhaj', NULL, NULL, 'admin', NULL, '12345', '', 0, '2020-10-07 18:42:27', 'Yes', '2021-01-19 11:05:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_type`
--
ALTER TABLE `appointment_type`
  ADD PRIMARY KEY (`appointment_type_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_intake_payments`
--
ALTER TABLE `client_intake_payments`
  ADD PRIMARY KEY (`client_payments_id`);

--
-- Indexes for table `client_package`
--
ALTER TABLE `client_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_projects`
--
ALTER TABLE `client_projects`
  ADD PRIMARY KEY (`client_projects_id`);

--
-- Indexes for table `client_project_brief`
--
ALTER TABLE `client_project_brief`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `comments_files`
--
ALTER TABLE `comments_files`
  ADD PRIMARY KEY (`comments_files_id`);

--
-- Indexes for table `comments_images`
--
ALTER TABLE `comments_images`
  ADD PRIMARY KEY (`comments_images_id`);

--
-- Indexes for table `crm_contacts`
--
ALTER TABLE `crm_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_available`
--
ALTER TABLE `default_available`
  ADD PRIMARY KEY (`default_available_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`developer_id`);

--
-- Indexes for table `kanban`
--
ALTER TABLE `kanban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_department`
--
ALTER TABLE `main_department`
  ADD PRIMARY KEY (`main_department_id`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_files`
--
ALTER TABLE `projects_files`
  ADD PRIMARY KEY (`projects_files_id`);

--
-- Indexes for table `projects_tasks`
--
ALTER TABLE `projects_tasks`
  ADD PRIMARY KEY (`projects_tasks_id`);

--
-- Indexes for table `project_additional`
--
ALTER TABLE `project_additional`
  ADD PRIMARY KEY (`project_additional_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_type`
--
ALTER TABLE `appointment_type`
  MODIFY `appointment_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `client_intake_payments`
--
ALTER TABLE `client_intake_payments`
  MODIFY `client_payments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `client_package`
--
ALTER TABLE `client_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `client_projects`
--
ALTER TABLE `client_projects`
  MODIFY `client_projects_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `client_project_brief`
--
ALTER TABLE `client_project_brief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `comments_files`
--
ALTER TABLE `comments_files`
  MODIFY `comments_files_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_images`
--
ALTER TABLE `comments_images`
  MODIFY `comments_images_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_contacts`
--
ALTER TABLE `crm_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `default_available`
--
ALTER TABLE `default_available`
  MODIFY `default_available_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `developer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kanban`
--
ALTER TABLE `kanban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `main_department`
--
ALTER TABLE `main_department`
  MODIFY `main_department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects_files`
--
ALTER TABLE `projects_files`
  MODIFY `projects_files_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects_tasks`
--
ALTER TABLE `projects_tasks`
  MODIFY `projects_tasks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_additional`
--
ALTER TABLE `project_additional`
  MODIFY `project_additional_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
