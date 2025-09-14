-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2025 at 06:52 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `entity_id` bigint UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `options` json DEFAULT NULL,
  `scope` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'view-customer', 'View customer customers', NULL, 'App\\Models\\Customer', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(2, 'create-customer', 'Create customer customers', NULL, 'App\\Models\\Customer', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(3, 'edit-customer', 'Edit customer customers', NULL, 'App\\Models\\Customer', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(4, 'delete-customer', 'Delete customer customers', NULL, 'App\\Models\\Customer', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(5, 'view-item', 'View item items', NULL, 'App\\Models\\Item', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(6, 'create-item', 'Create item items', NULL, 'App\\Models\\Item', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(7, 'edit-item', 'Edit item items', NULL, 'App\\Models\\Item', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(8, 'delete-item', 'Delete item items', NULL, 'App\\Models\\Item', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(9, 'view-tax-type', 'View tax type tax types', NULL, 'App\\Models\\TaxType', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(10, 'create-tax-type', 'Create tax type tax types', NULL, 'App\\Models\\TaxType', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(11, 'edit-tax-type', 'Edit tax type tax types', NULL, 'App\\Models\\TaxType', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(12, 'delete-tax-type', 'Delete tax type tax types', NULL, 'App\\Models\\TaxType', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(13, 'view-estimate', 'View estimate estimates', NULL, 'App\\Models\\Estimate', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(14, 'create-estimate', 'Create estimate estimates', NULL, 'App\\Models\\Estimate', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(15, 'edit-estimate', 'Edit estimate estimates', NULL, 'App\\Models\\Estimate', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(16, 'delete-estimate', 'Delete estimate estimates', NULL, 'App\\Models\\Estimate', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(17, 'send-estimate', 'Send estimate estimates', NULL, 'App\\Models\\Estimate', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(18, 'view-invoice', 'View invoice invoices', NULL, 'App\\Models\\Invoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(19, 'create-invoice', 'Create invoice invoices', NULL, 'App\\Models\\Invoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(20, 'edit-invoice', 'Edit invoice invoices', NULL, 'App\\Models\\Invoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(21, 'delete-invoice', 'Delete invoice invoices', NULL, 'App\\Models\\Invoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(22, 'send-invoice', 'Send invoice invoices', NULL, 'App\\Models\\Invoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(23, 'view-recurring-invoice', 'View recurring invoice recurring invoices', NULL, 'App\\Models\\RecurringInvoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(24, 'create-recurring-invoice', 'Create recurring invoice recurring invoices', NULL, 'App\\Models\\RecurringInvoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(25, 'edit-recurring-invoice', 'Edit recurring invoice recurring invoices', NULL, 'App\\Models\\RecurringInvoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(26, 'delete-recurring-invoice', 'Delete recurring invoice recurring invoices', NULL, 'App\\Models\\RecurringInvoice', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(27, 'view-payment', 'View payment payments', NULL, 'App\\Models\\Payment', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(28, 'create-payment', 'Create payment payments', NULL, 'App\\Models\\Payment', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(29, 'edit-payment', 'Edit payment payments', NULL, 'App\\Models\\Payment', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(30, 'delete-payment', 'Delete payment payments', NULL, 'App\\Models\\Payment', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(31, 'send-payment', 'Send payment payments', NULL, 'App\\Models\\Payment', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(32, 'view-expense', 'View expense expenses', NULL, 'App\\Models\\Expense', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(33, 'create-expense', 'Create expense expenses', NULL, 'App\\Models\\Expense', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(34, 'edit-expense', 'Edit expense expenses', NULL, 'App\\Models\\Expense', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(35, 'delete-expense', 'Delete expense expenses', NULL, 'App\\Models\\Expense', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(36, 'view-custom-field', 'View custom field custom fields', NULL, 'App\\Models\\CustomField', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(37, 'create-custom-field', 'Create custom field custom fields', NULL, 'App\\Models\\CustomField', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(38, 'edit-custom-field', 'Edit custom field custom fields', NULL, 'App\\Models\\CustomField', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(39, 'delete-custom-field', 'Delete custom field custom fields', NULL, 'App\\Models\\CustomField', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(40, 'view-financial-reports', 'View financial reports', NULL, NULL, 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(41, 'view-exchange-rate-provider', 'View exchange rate provider exchange rate providers', NULL, 'App\\Models\\ExchangeRateProvider', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(42, 'create-exchange-rate-provider', 'Create exchange rate provider exchange rate providers', NULL, 'App\\Models\\ExchangeRateProvider', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(43, 'edit-exchange-rate-provider', 'Edit exchange rate provider exchange rate providers', NULL, 'App\\Models\\ExchangeRateProvider', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(44, 'delete-exchange-rate-provider', 'Delete exchange rate provider exchange rate providers', NULL, 'App\\Models\\ExchangeRateProvider', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(45, 'dashboard', 'Dashboard', NULL, NULL, 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(46, 'view-all-notes', 'View all notes notes', NULL, 'App\\Models\\Note', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(47, 'manage-all-notes', 'Manage all notes notes', NULL, 'App\\Models\\Note', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(48, 'view-menu', 'View menu', NULL, 'App\\Models\\Menu', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(49, 'create-menu', 'Create menu', NULL, 'App\\Models\\Menu', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(50, 'edit-menu', 'Edit menu', NULL, 'App\\Models\\Menu', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(51, 'delete-menu', 'Delete menu', NULL, 'App\\Models\\Menu', 0, NULL, 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_street_1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_street_2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `address_street_1`, `address_street_2`, `city`, `state`, `country_id`, `zip`, `phone`, `fax`, `type`, `user_id`, `created_at`, `updated_at`, `company_id`, `customer_id`) VALUES
(1, NULL, '06/41, E-block', NULL, 'Mirpur-12', 'Dhaka', 231, '1200', '01855996632', NULL, NULL, NULL, '2025-07-27 06:04:15', '2025-07-27 22:47:45', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `restricted_to_id` bigint UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `scope` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(1, 1, 1, 'App\\Models\\User', NULL, NULL, 1),
(3, 2, 3, 'App\\Models\\User', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unique_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `vat_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `owner_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `unique_hash`, `vat_id`, `tax_id`, `created_at`, `updated_at`, `slug`, `owner_id`) VALUES
(1, 'Offshore Infotech', NULL, 'EK4PnOV6LJYL1AgJz592', NULL, NULL, '2025-07-14 22:35:01', '2025-07-27 06:04:15', 'xyz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` int UNSIGNED NOT NULL,
  `option` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `option`, `value`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'invoice_auto_generate', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(2, 'payment_auto_generate', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(3, 'estimate_auto_generate', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(4, 'save_pdf_to_disk', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(5, 'invoice_mail_body', 'You have received a new invoice from <b>{COMPANY_NAME}</b>.</br> Please download using the button below:', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(6, 'estimate_mail_body', 'You have received a new estimate from <b>{COMPANY_NAME}</b>.</br> Please download using the button below:', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(7, 'payment_mail_body', 'Thank you for the payment.</b></br> Please download your payment receipt using the button below:', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(8, 'invoice_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(9, 'invoice_shipping_address_format', '<h3>{SHIPPING_ADDRESS_NAME}</h3><p>{SHIPPING_ADDRESS_STREET_1}</p><p>{SHIPPING_ADDRESS_STREET_2}</p><p>{SHIPPING_CITY}  {SHIPPING_STATE}</p><p>{SHIPPING_COUNTRY}  {SHIPPING_ZIP_CODE}</p><p>{SHIPPING_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(10, 'invoice_billing_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY}  {BILLING_STATE}</p><p>{BILLING_COUNTRY}  {BILLING_ZIP_CODE}</p><p>{BILLING_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(11, 'estimate_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(12, 'estimate_shipping_address_format', '<h3>{SHIPPING_ADDRESS_NAME}</h3><p>{SHIPPING_ADDRESS_STREET_1}</p><p>{SHIPPING_ADDRESS_STREET_2}</p><p>{SHIPPING_CITY}  {SHIPPING_STATE}</p><p>{SHIPPING_COUNTRY}  {SHIPPING_ZIP_CODE}</p><p>{SHIPPING_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(13, 'estimate_billing_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY}  {BILLING_STATE}</p><p>{BILLING_COUNTRY}  {BILLING_ZIP_CODE}</p><p>{BILLING_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(14, 'payment_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(15, 'payment_from_customer_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY} {BILLING_STATE} {BILLING_ZIP_CODE}</p><p>{BILLING_COUNTRY}</p><p>{BILLING_PHONE}</p>', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(16, 'currency', '177', 1, '2025-07-14 22:35:02', '2025-07-27 06:05:22'),
(17, 'time_zone', 'Asia/Dhaka', 1, '2025-07-14 22:35:02', '2025-07-27 06:05:22'),
(18, 'language', 'en', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(19, 'fiscal_year', '7-6', 1, '2025-07-14 22:35:02', '2025-07-27 23:18:58'),
(20, 'carbon_date_format', 'd/m/Y', 1, '2025-07-14 22:35:02', '2025-07-28 00:10:45'),
(21, 'moment_date_format', 'YYYY/MM/DD', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(22, 'carbon_time_format', 'H:i', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(23, 'moment_time_format', 'HH:mm', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(24, 'invoice_use_time', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(25, 'notification_email', 'noreply@invoiceshelf.com', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(26, 'notify_invoice_viewed', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(27, 'notify_estimate_viewed', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(28, 'tax_per_item', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(29, 'discount_per_item', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(30, 'invoice_email_attachment', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(31, 'estimate_email_attachment', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(32, 'payment_email_attachment', 'NO', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(33, 'retrospective_edits', 'allow', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(34, 'invoice_number_format', '{{SERIES:INV}}{{DELIMITER:-}}{{SEQUENCE:6}}', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(35, 'estimate_number_format', '{{SERIES:EST}}{{DELIMITER:-}}{{SEQUENCE:6}}', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(36, 'payment_number_format', '{{SERIES:PAY}}{{DELIMITER:-}}{{SEQUENCE:6}}', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(37, 'estimate_set_expiry_date_automatically', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(38, 'estimate_expiry_date_days', '7', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(39, 'invoice_set_due_date_automatically', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(40, 'invoice_due_date_days', '7', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(41, 'bulk_exchange_rate_configured', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(42, 'estimate_convert_action', 'no_action', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(43, 'automatically_expire_public_links', 'YES', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(44, 'link_expiry_days', '7', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phonecode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `precision` int NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `swap_currency_symbol` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `swap_currency_symbol`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(2, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(3, 'Euro', 'EUR', '€', 2, '.', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(4, 'Bosnia and Herzegovina Convertible Mark', 'BAM', 'KM', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(5, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(6, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(7, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(8, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(9, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(10, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(11, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(12, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(13, 'Nepali Rupee', 'NPR', 'रू', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(14, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(15, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(16, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(17, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(18, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(19, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(20, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(21, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(22, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(23, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(24, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(25, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(26, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(27, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(28, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(29, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(30, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(31, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(32, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(33, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(34, 'Central African Franc', 'XAF', 'CFA ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(35, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(36, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(37, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(38, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(39, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(40, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(41, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(42, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(43, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(44, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(45, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(46, 'Turkmenistani manat', 'TMT', 'M ', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(47, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(48, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(49, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(50, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(51, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(52, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(53, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(54, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(55, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(56, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(57, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(58, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(59, 'Tunisian Dinar', 'TND', 'DT', 3, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(60, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(61, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(62, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(63, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(64, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(65, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(66, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(67, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(68, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(69, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(70, 'Iraqi Dinar', 'IQD', 'ع.د', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(71, 'Peruvian Soles', 'PEN', 'S/', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(72, 'Moroccan Dirham', 'MAD', 'DH', 2, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(73, 'Jamaican Dollar', 'JMD', '$', 0, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(74, 'Macedonian Denar', 'MKD', 'ден', 0, '.', ',', 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(75, 'Libyan Dinar', 'LYD', 'LD', 3, ',', '.', 0, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(76, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(77, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(78, 'Euro', 'EUR', '€', 2, '.', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(79, 'Bosnia and Herzegovina Convertible Mark', 'BAM', 'KM', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(80, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(81, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(82, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(83, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(84, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(85, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(86, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(87, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(88, 'Nepali Rupee', 'NPR', 'रू', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(89, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(90, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(91, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(92, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(93, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(94, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(95, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(96, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(97, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(98, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(99, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(100, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(101, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(102, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(103, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(104, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(105, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(106, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(107, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(108, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(109, 'Central African Franc', 'XAF', 'CFA ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(110, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(111, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(112, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(113, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(114, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(115, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(116, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(117, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(118, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(119, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(120, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(121, 'Turkmenistani manat', 'TMT', 'M ', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(122, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(123, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(124, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(125, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(126, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(127, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(128, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(129, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(130, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(131, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(132, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(133, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(134, 'Tunisian Dinar', 'TND', 'DT', 3, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(135, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(136, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(137, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(138, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(139, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(140, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(141, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(142, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(143, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(144, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(145, 'Iraqi Dinar', 'IQD', 'ع.د', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(146, 'Peruvian Soles', 'PEN', 'S/', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(147, 'Moroccan Dirham', 'MAD', 'DH', 2, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(148, 'Jamaican Dollar', 'JMD', '$', 0, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(149, 'Macedonian Denar', 'MKD', 'ден', 0, '.', ',', 1, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(150, 'Libyan Dinar', 'LYD', 'LD', 3, ',', '.', 0, '2025-07-27 00:37:45', '2025-07-27 00:37:45'),
(151, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(152, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(153, 'Euro', 'EUR', '€', 2, '.', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(154, 'Bosnia and Herzegovina Convertible Mark', 'BAM', 'KM', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(155, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(156, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(157, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(158, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(159, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(160, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(161, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(162, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(163, 'Nepali Rupee', 'NPR', 'रू', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(164, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(165, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(166, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(167, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(168, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(169, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(170, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(171, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(172, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(173, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(174, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(175, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(176, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(177, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(178, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(179, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(180, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(181, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(182, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(183, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(184, 'Central African Franc', 'XAF', 'CFA ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(185, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(186, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(187, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(188, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(189, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(190, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(191, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(192, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(193, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(194, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(195, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(196, 'Turkmenistani manat', 'TMT', 'M ', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(197, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(198, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(199, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(200, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(201, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(202, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(203, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(204, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(205, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(206, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(207, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(208, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(209, 'Tunisian Dinar', 'TND', 'DT', 3, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(210, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(211, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(212, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(213, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(214, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(215, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(216, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(217, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(218, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(219, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(220, 'Iraqi Dinar', 'IQD', 'ع.د', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(221, 'Peruvian Soles', 'PEN', 'S/', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(222, 'Moroccan Dirham', 'MAD', 'DH', 2, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(223, 'Jamaican Dollar', 'JMD', '$', 0, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(224, 'Macedonian Denar', 'MKD', 'ден', 0, '.', ',', 1, '2025-07-27 00:41:23', '2025-07-27 00:41:23'),
(225, 'Libyan Dinar', 'LYD', 'LD', 3, ',', '.', 0, '2025-07-27 00:41:23', '2025-07-27 00:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `prefix` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enable_portal` tinyint(1) NOT NULL DEFAULT '0',
  `currency_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `prefix`, `name`, `email`, `phone`, `password`, `remember_token`, `facebook_id`, `google_id`, `github_id`, `tax_id`, `contact_name`, `company_name`, `website`, `enable_portal`, `currency_id`, `company_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mabrur', 'md@gmail.com', '01855996632', NULL, NULL, NULL, NULL, NULL, NULL, 'Md Mabrur Rahman', NULL, NULL, 0, 177, 1, 1, '2025-08-05 00:09:43', '2025-08-05 00:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `options` json DEFAULT NULL,
  `boolean_answer` tinyint(1) DEFAULT NULL,
  `date_answer` date DEFAULT NULL,
  `time_answer` time DEFAULT NULL,
  `string_answer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `number_answer` bigint UNSIGNED DEFAULT NULL,
  `date_time_answer` datetime DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `order` bigint UNSIGNED NOT NULL DEFAULT '1',
  `company_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `slug`, `label`, `model_type`, `type`, `placeholder`, `options`, `boolean_answer`, `date_answer`, `time_answer`, `string_answer`, `number_answer`, `date_time_answer`, `is_required`, `order`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'map', 'CUSTOM_CUSTOMER_MAP', 'Google Map', 'Customer', 'Input', 'Enter google map address.', '[]', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2025-07-28 22:28:52', '2025-07-28 22:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint UNSIGNED NOT NULL,
  `custom_field_valuable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `custom_field_valuable_id` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `boolean_answer` tinyint(1) DEFAULT NULL,
  `date_answer` date DEFAULT NULL,
  `time_answer` time DEFAULT NULL,
  `string_answer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `number_answer` bigint UNSIGNED DEFAULT NULL,
  `date_time_answer` datetime DEFAULT NULL,
  `custom_field_id` bigint UNSIGNED NOT NULL,
  `company_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `custom_field_valuable_type`, `custom_field_valuable_id`, `type`, `boolean_answer`, `date_answer`, `time_answer`, `string_answer`, `number_answer`, `date_time_answer`, `custom_field_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Customer', 1, 'Input', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-08-05 00:09:43', '2025-08-05 00:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `from` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `to` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mailable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mailable_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int UNSIGNED NOT NULL,
  `sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `customer_sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `estimate_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `estimate_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_per_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `sub_total` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `unique_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `template_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint UNSIGNED DEFAULT NULL,
  `base_sub_total` bigint UNSIGNED DEFAULT NULL,
  `base_total` bigint UNSIGNED DEFAULT NULL,
  `base_tax` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `sales_tax_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sales_tax_address_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `estimate_id` int UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint UNSIGNED DEFAULT NULL,
  `base_price` bigint UNSIGNED DEFAULT NULL,
  `base_tax` bigint UNSIGNED DEFAULT NULL,
  `base_total` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rate_logs`
--

CREATE TABLE `exchange_rate_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `base_currency_id` int UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rate_providers`
--

CREATE TABLE `exchange_rate_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `driver` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `currencies` json DEFAULT NULL,
  `driver_config` json DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `attachment_receipt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `expense_category_id` int UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `payment_method_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_disks`
--

CREATE TABLE `file_disks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'REMOTE',
  `driver` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `set_as_default` tinyint(1) NOT NULL DEFAULT '0',
  `credentials` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `file_disks`
--

INSERT INTO `file_disks` (`id`, `name`, `type`, `driver`, `set_as_default`, `credentials`, `created_at`, `updated_at`) VALUES
(1, 'local_public', 'SYSTEM', 'local', 0, '\"{\\\"driver\\\":\\\"local\\\",\\\"root\\\":\\\"D:\\\\\\\\laragon\\\\\\\\www\\\\\\\\InvoiceShelf\\\\\\\\storage\\\\\\\\app\\\\/public\\\",\\\"url\\\":\\\"http:\\\\/\\\\/127.0.0.1:8000\\\\/storage\\\",\\\"visibility\\\":\\\"public\\\"}\"', '2025-07-14 22:34:16', '2025-07-14 22:34:16'),
(2, 'local_private', 'SYSTEM', 'local', 1, '\"{\\\"root\\\":\\\"D:\\\\\\\\laragon\\\\\\\\www\\\\\\\\InvoiceShelf\\\\\\\\storage\\\\\\\\app\\\",\\\"driver\\\":\\\"local\\\"}\"', '2025-07-14 22:34:16', '2025-07-14 22:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int UNSIGNED NOT NULL,
  `sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `customer_sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `invoice_date` datetime NOT NULL,
  `due_date` date DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `paid_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tax_per_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint DEFAULT NULL,
  `sub_total` bigint NOT NULL,
  `total` bigint NOT NULL,
  `tax` bigint NOT NULL,
  `due_amount` bigint NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `unique_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `template_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `recurring_invoice_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint DEFAULT NULL,
  `base_sub_total` bigint DEFAULT NULL,
  `base_total` bigint DEFAULT NULL,
  `base_tax` bigint DEFAULT NULL,
  `base_due_amount` bigint DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `sales_tax_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sales_tax_address_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `overdue` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint NOT NULL,
  `tax` bigint NOT NULL,
  `total` bigint NOT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recurring_invoice_id` bigint UNSIGNED DEFAULT NULL,
  `base_price` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint DEFAULT NULL,
  `base_tax` bigint DEFAULT NULL,
  `base_total` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `name`, `description`, `discount_type`, `price`, `quantity`, `unit_name`, `discount`, `discount_val`, `tax`, `total`, `invoice_id`, `item_id`, `company_id`, `created_at`, `updated_at`, `recurring_invoice_id`, `base_price`, `exchange_rate`, `base_discount_val`, `base_tax`, `base_total`) VALUES
(1, 'Shirt', 'na', 'fixed', 10000, 1.00, 'pc', 0.00, 0, 0, 10000, 1, 1, 1, '2025-07-27 06:17:34', '2025-07-27 06:17:34', NULL, 10000, 1.000000, 0, 0, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `price` bigint UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `tax_per_item` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` int UNSIGNED NOT NULL,
  `manipulations` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `custom_properties` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `responsive_images` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `generated_conversions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`, `uuid`, `conversions_disk`, `generated_conversions`) VALUES
(2, 'App\\Models\\Company', 1, 'logo', 'med768E', '1_citizen_charter_1708247145.png', 'image/png', 'public', 1942, '[]', '[]', '[]', 1, '2025-07-28 00:32:49', '2025-07-28 00:32:49', '9f41c92f-bed5-4499-a9f3-235fcdef8d72', 'public', '[]'),
(4, 'App\\Models\\User', 1, 'admin_avatar', 'avatar', 'avatar.jpg', 'image/jpeg', 'public', 13931, '[]', '[]', '[]', 1, '2025-07-28 04:47:18', '2025-07-28 04:47:18', '616fed72-3f55-4274-b482-2c4fabd9b7f6', 'public', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `order_no` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `en` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` enum('Topbar','Sidebar') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Topbar',
  `menu_status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `order_no`, `parent_id`, `en`, `bn`, `path`, `slug`, `icon`, `location`, `menu_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, NULL, 'Global Settings', 'গ্লোবাল সেটিংস', '#', 'global-settings', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2022-01-01 07:15:46', '2025-08-04 22:41:03', NULL),
(3, 16, NULL, 'Language Management', 'ভাষা ব্যবস্থাপনা', '#', 'language_management', 'CircleIcon', 'Topbar', 'Inactive', 0, NULL, '2022-12-11 10:26:11', '2023-02-19 17:42:00', NULL),
(4, 1, 3, 'A | Language', 'A |  ভাষা', '/admin/language', 'admin_language', 'CircleIcon', 'Topbar', 'Active', 0, NULL, '2022-12-27 10:14:31', '2023-02-22 19:03:16', NULL),
(5, 1, 2, 'Region-Area Setting', 'রিজিওন এরিয়া সেটিং', '#', 'region_area_setting', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-10 10:57:34', '2023-12-10 10:57:34', NULL),
(6, 1, 5, 'Division', 'ডিভিশন', '/admin/global_settings/region_area_settings/division', 'admin_global_settings_region_area_settings_division', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-10 10:59:25', '2023-12-10 10:59:25', NULL),
(7, 2, 5, 'District', 'থানা', '/admin/global_settings/region_area_settings/district', 'admin_global_settings_region_area_settings_district', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-10 11:01:04', '2023-12-10 11:01:04', NULL),
(8, 3, 5, 'Upazilla', 'উপজিলা', '/admin/global_settings/region_area_settings/upazila', 'admin_global_settings_region_area_settings_upazila', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-10 11:20:46', '2023-12-10 11:20:46', NULL),
(9, 2, 2, 'General Settings', 'জেনারেল সেটিংস', '#', 'general_settings', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-11 00:06:04', '2023-12-11 00:06:04', NULL),
(10, 4, 9, 'Class Setting', 'ক্লাস সেটিংস', '/admin/global_settings/general_settings/class', 'admin_global_settings_general_settings_class', 'CircleIcon', 'Topbar', 'Inactive', 1, 1, '2023-12-11 00:15:14', '2024-04-30 16:09:28', NULL),
(11, 2, 9, 'Designation', 'ডেসিগনেশন সেটিং', '/admin/global_settings/general_settings/designation', 'admin_global_settings_general_settings_designation', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-11 00:17:31', '2023-12-11 00:17:31', NULL),
(12, 3, 9, 'BCS Batch Setting', 'বিসিএস ব্যাচ সেটিং', '/admin/global_settings/general_settings/batch', 'admin_global_settings_general_settings_batch', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-11 00:20:31', '2023-12-11 00:20:31', NULL),
(13, 1, 9, 'Department', 'ডিপার্টমেন্ট সেটিং', '/admin/global_settings/general_settings/department', 'admin_global_settings_general_settings_department', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2023-12-11 00:23:51', '2024-04-30 16:07:19', NULL),
(14, 3, 2, 'Office Type Setting', 'অফিস টাইপ সেটিং', '#', 'office_type_setting', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 00:15:14', '2023-12-12 00:15:14', NULL),
(15, 1, 14, 'Office Type', 'অফিস টাইপ', '/admin/global_settings/office_type_settings/office_type', 'admin_global_settings_office_type_settings_office_type', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 00:17:15', '2023-12-12 00:17:15', NULL),
(16, 4, 2, 'Office Management', 'অফিস ম্যানেজমেন্ট', '#', 'office_management', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2023-12-12 02:54:22', '2024-01-29 03:39:06', NULL),
(17, 1, 16, 'New Entry', 'নিউ এন্ট্রি', '/admin/global_settings/office_management/office/create', 'admin_global_settings_office_management_office_create', 'CircleIcon', 'Topbar', 'Inactive', 1, 1, '2023-12-12 02:59:30', '2024-01-29 03:42:07', NULL),
(18, 2, 16, 'Office List', 'অফিস লিস্ট', '/admin/global_settings/office_management/office', 'admin_global_settings_office_management_office', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2023-12-12 03:00:55', '2024-01-29 03:41:48', NULL),
(19, 3, 16, 'VTC Office', 'ভিটিসি অফিস', '/admin/global_settings/office_address_settings/vtc_office', 'admin_global_settings_office_address_settings_vtc_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:02:17', '2023-12-12 03:02:17', NULL),
(20, 4, 16, 'Academic Office', 'একাডেমিক অফিস', '/admin/global_settings/office_address_settings/academic_office', 'admin_global_settings_office_address_settings_academic_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:03:41', '2023-12-12 03:03:41', NULL),
(21, 5, 16, 'Range Office', 'রেঞ্জ অফিস', '/admin/global_settings/office_address_settings/range_office', 'admin_global_settings_office_address_settings_range_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:04:46', '2023-12-12 03:04:46', NULL),
(22, 6, 16, 'Zone Office', 'জোন অফিস', '/admin/global_settings/office_address_settings/zone_office', 'admin_global_settings_office_address_settings_zone_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:06:04', '2023-12-12 03:06:04', NULL),
(23, 7, 16, 'Battalion Office', 'ব্যাটেলিয়ন অফিস', '/admin/global_settings/office_address_settings/battalion_office', 'admin_global_settings_office_address_settings_battalion_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:07:34', '2023-12-12 03:07:34', NULL),
(24, 8, 16, 'District Office', 'ডিস্ট্রিক্ট অফিস', '/admin/global_settings/office_address_settings/district_office', 'admin_global_settings_office_address_settings_district_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:09:13', '2023-12-12 03:09:13', NULL),
(25, 9, 16, 'Upazilla Office', 'উপজিলা অফিস', '/admin/global_settings/office_address_settings/district_office', 'admin_global_settings_office_address_settings_district_office', 'CircleIcon', 'Topbar', 'Inactive', 1, NULL, '2023-12-12 03:10:18', '2023-12-12 03:10:18', NULL),
(26, 1, NULL, 'Dashboard', 'ড্যাশবোর্ড', '/admin/dashboard', 'admin_dashboard', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2023-12-13 14:33:12', '2023-12-13 14:33:12', NULL),
(27, 7, NULL, 'HR Management', 'এইচ আর ম্যানেজমেন্ট', '#', 'hr_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-13 14:39:59', '2024-11-03 08:52:10', NULL),
(28, 1, 27, 'HR Settings', 'এইচ আর সেটিংস', '#', 'hr_settings', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-13 14:45:05', '2024-01-21 03:23:12', NULL),
(29, 2, 27, 'HR Information', 'এইচ আর ইনফরমেশন', '#', 'hr_information', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-13 14:50:40', '2025-03-17 18:46:59', NULL),
(30, 5, 27, 'HR Reports', 'এইচআর রিপোর্টস', '#', 'hr_reports', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-13 14:51:32', '2025-04-16 01:42:22', NULL),
(31, 1, 28, 'Training Name', 'ট্রেনিং নাম', '/admin/staff_information/personal_settings/training_name', 'admin_staff_information_personal_settings_training_name', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-13 15:47:04', '2023-12-13 16:00:00', NULL),
(32, 2, 28, 'Training Institute Name', 'ট্রেনিং  ইনস্টিটিউট নাম', '/admin/staff_information/personal_settings/institute_name', 'admin_staff_information_personal_settings_institute_name', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-14 02:14:57', '2025-01-23 20:29:44', NULL),
(33, 3, 28, 'Education Name', 'এডুকেশন নাম', '/admin/staff_information/personal_settings/education_name', 'admin_staff_information_personal_settings_education_name', 'CircleIcon', 'Sidebar', 'Inactive', 1, NULL, '2023-12-14 02:40:32', '2023-12-14 02:40:32', NULL),
(34, 4, 28, 'Blood Group', 'ব্লাড গ্রুপ', '/admin/staff_information/personal_settings/blood_group_name', 'admin_staff_information_personal_settings_blood_group_name', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-16 22:58:00', '2024-02-15 04:42:12', NULL),
(35, 5, 28, 'Religion', 'রিলিজিওন', '/admin/staff_information/personal_settings/religion_name', 'admin_staff_information_personal_settings_religion_name', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2023-12-16 23:24:19', '2024-05-01 09:34:01', NULL),
(36, 6, 28, 'Relation', 'রিলেশন', '/admin/staff_information/personal_settings/relation_name', 'admin_staff_information_personal_settings_relation_name', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2023-12-16 23:44:31', '2023-12-16 23:44:31', NULL),
(37, 1, 29, 'New Employee', 'নিউ এমপ্লয়ী', '/admin/hr_management/personal_information/employee/create', 'admin_hr_management_personal_information_employee_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-17 00:13:51', '2024-01-21 06:42:09', NULL),
(38, 2, 29, 'Employee List', 'এমপ্লয়ী লিস্ট', '/admin/hr_management/personal_information/employee', 'admin_hr_management_personal_information_employee', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2023-12-17 00:15:18', '2024-01-21 06:42:19', NULL),
(39, 2, NULL, 'Master Reports', 'মাস্টার রিপোর্টস', '/admin/master-reports', 'admin_master_reports', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2023-12-19 09:58:46', '2024-05-02 13:00:38', NULL),
(40, 3, NULL, 'Users', 'ব্যবহারকারী', '#', 'users', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-19 10:00:28', '2023-12-19 10:00:28', NULL),
(41, 1, 40, 'Roles', 'রোলস', '#', 'roles', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2023-12-19 10:04:25', '2023-12-19 10:10:30', NULL),
(42, 2, 40, 'Users Management', 'ব্যবহারকারী ব্যবস্থাপনা', '#', 'users_management', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2023-12-19 10:05:35', '2023-12-19 10:15:14', NULL),
(44, 1, 41, 'New Roles', 'নতুন রোলস', '/admin/user_management/roles/create', 'admin_user_management_roles_create', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-19 10:12:20', '2023-12-19 10:12:20', NULL),
(45, 2, 41, 'Roles List', 'রোলস  তালিকা', '/admin/user_management/roles', 'admin_user_management_roles', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-19 10:13:18', '2023-12-19 10:13:18', NULL),
(46, 1, 42, 'New User', 'নতুন ব্যবহারকারী', '/admin/user_management/users/create', 'admin_user_management_users_create', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-19 10:17:10', '2023-12-19 10:17:10', NULL),
(47, 2, 42, 'Users List', 'ব্যবহারকারী তালিকা', '/admin/user_management/users', 'admin_user_management_users', 'CircleIcon', 'Topbar', 'Active', 1, NULL, '2023-12-19 10:18:09', '2023-12-19 10:18:09', NULL),
(48, 3, NULL, 'Website/Landing Page', '-', '#', 'website_landing_page', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-14 02:42:56', '2024-01-14 02:42:56', NULL),
(49, 1, 48, 'Notice Management', 'নোটিশ ম্যানেজমেন্ট', '#', 'notice_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-14 02:47:07', '2024-01-14 02:49:46', NULL),
(50, 1, 49, 'New Notice', 'নিউ নোটিশ', '/admin/website/notice_management/notice/create', 'admin_website_notice_management_notice_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-14 02:51:18', '2024-01-14 02:51:18', NULL),
(51, 2, 49, 'Notice List', 'নোটিশ লিস্ট', '/admin/website/notice_management/notice', 'admin_website_notice_management_notice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-14 02:52:39', '2024-01-14 02:52:39', NULL),
(52, 2, 48, 'News Management', 'নিউস ম্যানেজমেন্ট', '#', 'news_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-15 03:36:00', '2024-01-15 03:36:00', NULL),
(53, 1, 52, 'New News', 'নিউ নিউস', '/admin/website/news_management/news/create', 'admin_website_news_management_news_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-15 03:39:19', '2024-01-15 03:39:19', NULL),
(54, 2, 52, 'News List', 'নিউস লিস্ট', '/admin/website/news_management/news', 'admin_website_news_management_news', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-15 03:44:06', '2024-01-15 03:44:06', NULL),
(55, 3, 48, 'Event Management', 'ইভেন্ট ম্যানেজমেন্ট', '#', 'event_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-15 05:55:25', '2024-01-15 05:55:25', NULL),
(56, 1, 55, 'New Event', 'নিউ ইভেন্ট', '/admin/website/event_management/event/create', 'admin_website_event_management_event_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-15 05:56:43', '2024-01-15 06:31:21', NULL),
(57, 2, 55, 'Event List', 'ইভেন্ট লিস্ট', '/admin/website/event_management/event', 'admin_website_event_management_event', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-15 05:58:05', '2024-01-15 06:31:33', NULL),
(58, 4, 48, 'Photo Management', 'ফটো ম্যানেজমেন্ট', '#', 'photo_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 00:37:25', '2024-01-16 00:37:25', NULL),
(59, 2, 58, 'New Photo', 'নিউ ফটো', '/admin/website/photo_management/photo/create', 'admin_website_photo_management_photo_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-16 00:39:59', '2024-01-16 01:00:22', NULL),
(60, 3, 58, 'Photo List', 'ফটো লিস্ট', '/admin/website/photo_management/photo', 'admin_website_photo_management_photo', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-16 00:42:47', '2024-01-16 01:00:30', NULL),
(61, 6, 48, 'Achievement Management', 'অ্যাচিভমেন্ট ম্যানেজমেন্ট', '#', 'achievement_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-16 02:20:33', '2024-01-16 02:29:58', NULL),
(62, 1, 61, 'New Achievement', 'নিউ অ্যাচিভমেন্ট', '/admin/website/achieve_management/achieve/create', 'admin_website_achieve_management_achieve_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 02:22:43', '2024-01-16 02:22:43', NULL),
(63, 2, 61, 'Achievement List', 'অ্যাচিভমেন্ট লিস্ট', '/admin/website/achieve_management/achieve', 'admin_website_achieve_management_achieve', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 02:24:02', '2024-01-16 02:24:02', NULL),
(64, 7, 48, 'Ex-Cadet Activities Management', 'এক্স-ক্যাডেট একটিভিটিস ম্যানেজমেন্ট', '#', 'ex_cadet_activities_management', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-01-16 03:10:07', '2024-12-04 17:36:10', NULL),
(65, 1, 64, 'New Ex-Cadet Activities', 'নিউ এক্স-ক্যাডেট একটিভিটিস', '/admin/website/ex_cadet_activities_management/ex_cadet_activitie/create', 'admin_website_ex_cadet_activities_management_ex_cadet_activitie_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-16 03:13:36', '2024-01-16 03:47:29', NULL),
(66, 2, 64, 'Ex-Cadet Activities List', 'এক্স-ক্যাডেট একটিভিটিস লিস্ট', '/admin/website/ex_cadet_activities_management/ex_cadet_activitie', 'admin_website_ex_cadet_activities_management_ex_cadet_activitie', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-16 03:15:11', '2024-01-16 03:47:35', NULL),
(67, 8, 48, 'Slider Management', 'স্লাইডার ম্যানেজমেন্ট', '#', 'slider_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-16 04:06:11', '2024-01-16 04:17:30', NULL),
(68, 1, 67, 'New Slider', 'নিউ স্লাইডার', '/admin/website/slider_management/slider/create', 'admin_website_slider_management_slider_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 04:15:02', '2024-01-16 04:15:02', NULL),
(69, 2, 67, 'Slider List', 'স্লাইডার লিস্ট', '/admin/website/slider_management/slider', 'admin_website_slider_management_slider', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 04:15:53', '2024-01-16 04:15:53', NULL),
(70, 5, 48, 'Video Management', 'ভিডিও ম্যানেজমেন্ট', '#', 'video_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 04:58:23', '2024-01-16 04:58:23', NULL),
(71, 1, 70, 'New Video', 'নিউ ভিডিও', '/admin/website/video_management/video/create', 'admin_website_video_management_video_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 04:59:43', '2024-01-16 04:59:43', NULL),
(72, 2, 70, 'Video List', 'ভিডিও লিস্ট', '/admin/website/video_management/video', 'admin_website_video_management_video', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-16 05:00:28', '2024-01-16 05:00:28', NULL),
(73, 11, 48, 'Chairman Message Management', 'চেয়ারম্যান মেসেজ ম্যানেজমেন্ট', '#', 'chairman_message_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-17 22:57:32', '2024-01-17 22:57:32', NULL),
(74, 1, 73, 'New Message', 'নিউ মেসেজ', '/admin/website/message_management/message/create', 'admin_website_message_management_message_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-17 22:58:54', '2024-01-17 22:58:54', NULL),
(75, 2, 73, 'Message List', 'মেসেজ লিস্ট', '/admin/website/message_management/message', 'admin_website_message_management_message', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-17 23:00:07', '2024-01-17 23:00:07', NULL),
(76, 9, 48, 'Contact Management', 'কন্টাক্ট ম্যানেজমেন্ট', '#', 'contact_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-18 00:26:30', '2024-01-18 00:26:30', NULL),
(77, 1, 76, 'New Contact', 'নিউ কন্টাক্ট', '/admin/website/contact_management/contact/create', 'admin_website_contact_management_contact_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-18 00:28:30', '2024-01-18 00:28:30', NULL),
(78, 2, 76, 'Contact List', 'কন্টাক্ট লিস্ট', '/admin/website/contact_management/contact', 'admin_website_contact_management_contact', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-18 00:29:51', '2024-01-18 00:29:51', NULL),
(79, 7, 28, 'Employee Category', 'এমপ্লয়ী ক্যাটাগরি', '/admin/hr_management/hr_settings/employee_category', 'admin_hr_management_hr_settings_employee_category', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-21 03:51:56', '2024-01-21 04:06:45', NULL),
(80, 8, 28, 'Punishment Category', 'পানিশমেন্ট ক্যাটাগরি', '/admin/hr_management/hr_settings/employee_punishment_category', 'admin_hr_management_hr_settings_employee_punishment_category', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-21 06:24:39', '2024-01-21 06:24:39', NULL),
(81, 8, NULL, 'Accounts Management', 'একাউন্টস ম্যানেজমেন্ট', '#', 'accounts_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-20 21:19:57', '2024-12-08 23:37:12', NULL),
(82, 1, 81, 'Collection Setup', 'কালেকশন সেটআপ', '#', 'collection_setup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-20 21:21:15', '2024-01-20 21:21:15', NULL),
(83, 1, 82, 'Category Manage', 'ক্যাটাগরি ম্যানেজ', '/admin/account_management/collection_setup/collection_category', 'admin_account_management_collection_setup_collection_category', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-20 21:24:07', '2024-01-20 22:27:18', NULL),
(84, 2, 82, 'Head Manage', 'হেড ম্যানেজ', '/admin/account_management/collection_setup/collection_head', 'admin_account_management_collection_setup_collection_head', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-20 23:28:28', '2024-01-20 23:28:28', NULL),
(85, 10, NULL, 'Academic Management', 'একাডেমিক ম্যানেজমেন্ট', '#', 'academic_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-21 00:53:48', '2024-07-14 13:33:48', NULL),
(86, 1, 85, 'Academic Setup', 'একাডেমিক সেটআপ', '#', 'academic_setup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-21 16:39:13', '2024-01-21 16:39:13', NULL),
(87, 3, 82, 'Class Wise Collection Setup', 'ক্লাস কালেকশন', '/admin/account_management/collection_setup/class_wise_collection/create', 'admin_account_management_collection_setup_class_wise_collection_create', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-01-21 18:32:35', '2025-01-28 21:24:01', NULL),
(88, 5, 82, 'Cadet Wise Collection Setup', 'স্টুডেন্ট কালেকশন', '/admin/account_management/collection_setup/student_wise_collection/create', 'admin_account_management_collection_setup_student_wise_collection_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-22 16:44:24', '2025-05-14 20:21:33', NULL),
(89, 6, 82, 'Cadet Wise Collection Setup List', 'স্টুডেন্ট কালেকশন লিস্ট', '/admin/account_management/collection_setup/student_wise_collection', 'admin_account_management_collection_setup_student_wise_collection', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-01-23 18:42:34', '2025-05-14 20:21:44', NULL),
(90, 4, 82, 'Class Wise Collection Setup List', 'ক্লাস কালেকশন লিস্ট', '/admin/account_management/collection_setup/class_wise_collection', 'admin_account_management_collection_setup_class_wise_collection', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-01-24 20:05:31', '2025-01-28 21:24:22', NULL),
(91, 1, 58, 'Photo Category', 'ফটো ক্যাটাগরি', '/admin/website/photo_management/photo_category', 'admin_website_photo_management_photo_category', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-01-27 18:11:25', '2024-01-27 18:11:25', NULL),
(92, 5, 9, 'Blood Group', 'ব্লাড গ্রুপ', '/admin/global_settings/general_settings/blood_group', 'admin_global_settings_general_settings_blood_group', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2024-01-30 22:59:53', '2024-02-15 04:36:38', NULL),
(93, 2, 81, 'Transaction Management', 'Transaction  Management', '#', 'transaction_management', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-02-08 02:48:31', '2025-05-05 22:21:06', NULL),
(94, 1, 93, 'Create Payments', 'Create Payments', '/admin/account_management/collection_management/student_fee_collection', 'admin_account_management_collection_management_student_fee_collection', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-08 02:50:32', '2025-05-14 19:23:27', NULL),
(95, 2, 93, 'Payment History', 'Payment History', '/admin/account_management/collection_management/student_fee_collection/list', 'admin_account_management_collection_management_student_fee_collection_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-08 02:51:41', '2025-04-17 15:03:27', NULL),
(96, 3, 81, 'Cadet Collection Report', 'কালেকশন রিপোর্ট', '#', 'cadet_collection_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-08 02:54:04', '2025-05-14 20:50:10', NULL),
(97, 1, 96, 'Cadet Wise Earning', 'স্টুডেন্ট আর্নিং', '/admin/account_management/report_management/student_wise_earning', 'admin_account_management_report_management_student_wise_earning', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-08 02:56:05', '2025-05-14 20:20:01', NULL),
(98, 2, 96, 'Cadet Wise Dues', 'স্টুডেন্ট বাকি', '/admin/account_management/report_management/student_wise_due', 'admin_account_management_report_management_student_wise_due', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-08 02:57:40', '2025-05-14 20:20:11', NULL),
(99, 4, 81, 'Income & Expense Setup', 'ইনকাম এন্ড এক্সপেন্স সেটআপ', '#', 'income_expense_setup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:03:06', '2024-02-08 03:03:06', NULL),
(100, 1, 99, 'Category Setup', 'ক্যাটাগরি সেটআপ', '/admin/account_management/income_expense/code_category', 'admin_account_management_income_expense_code_category', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:05:09', '2024-02-08 03:05:09', NULL),
(101, 2, 99, 'Head Setup', 'হেড সেটআপ', '/admin/account_management/income_expense/code_head', 'admin_account_management_income_expense_code_head', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:06:16', '2024-02-08 03:06:16', NULL),
(102, 5, 81, 'Income & Expense Management', 'ইনকাম এন্ড এক্সপেন্স ম্যানেজমেন্ট', '#', 'income_expense_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:07:57', '2024-02-08 03:07:57', NULL),
(103, 1, 102, 'Add Income', 'নিউ ইনকাম', '/admin/account_management/income_expense/income/create', 'admin_account_management_income_expense_income_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:10:50', '2024-02-08 03:10:50', NULL),
(104, 2, 102, 'Income List', 'ইনকাম লিস্ট', '/admin/account_management/income_expense/income', 'admin_account_management_income_expense_income', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:12:01', '2024-02-08 03:12:01', NULL),
(105, 3, 102, 'Add Expense', 'নিউ এক্সপেন্স', '/admin/account_management/income_expense/expense/create', 'admin_account_management_income_expense_expense_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-08 03:13:10', '2024-02-08 03:13:10', NULL),
(106, 4, 102, 'Expense List', 'এক্সপেন্স লিস্ট', '/admin/account_management/income_expense/expense', 'admin_account_management_income_expense_expense', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-08 03:14:16', '2024-05-02 15:49:56', NULL),
(107, 1, 30, 'Vacancy Report', 'ভেকেন্সি রিপোর্ট', '/admin/hr_management/hr_report/designation_wise_vacancy_report', 'admin_hr_management_hr_report_designation_wise_vacancy_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-14 05:27:22', '2024-09-16 15:30:21', NULL),
(108, 2, 30, 'Employee Report', 'কর্মকর্তা/কর্মচারীর তালিকা', '/admin/hr_management/hr_report/employee_list', 'admin_hr_management_hr_report_employee_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-14 05:29:23', '2025-04-13 02:05:26', NULL),
(109, 0, 28, 'Department Wise Designation', 'ডিপার্টমেন্ট ওয়াইস ডেসিগন্যাশন', '/admin/hr_management/hr_settings/department_wise_designation/create', 'admin_hr_management_hr_settings_department_wise_designation_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-15 00:51:07', '2024-02-15 00:51:07', NULL),
(110, 0, 28, 'Department Wise Designation List', 'ডিপার্টমেন্ট ওয়াইস ডেসিগন্যাশন লিস্ট', '/admin/hr_management/hr_settings/department_wise_designation', 'admin_hr_management_hr_settings_department_wise_designation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-15 01:10:08', '2024-02-15 01:10:08', NULL),
(111, 0, 28, 'Add Vacancy', 'অ্যাড ভেকেন্সি', '/admin/hr_management/hr_settings/vacancy/create', 'admin_hr_management_hr_settings_vacancy_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-02-15 03:07:03', '2024-09-16 14:06:31', NULL),
(112, 6, 9, 'Religion', 'রিলিজিওন', '/admin/global_settings/general_settings/religion_name', 'admin_global_settings_general_settings_religion_name', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2024-02-15 06:28:44', '2024-05-01 08:49:00', NULL),
(113, 12, 48, 'Citizen Charter', 'সিটিজেন চার্টার', '#', 'citizen_charter', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-18 12:58:01', '2024-02-18 12:58:01', NULL),
(114, 1, 113, 'Card Name', 'কার্ডের নাম', '/admin/website/card_management/card', 'admin_website_card_management_card', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-18 12:59:50', '2024-02-18 12:59:50', NULL),
(115, 2, 113, 'Card Item', 'কার্ড আইটেম', '/admin/website/card_management/card_item/create', 'admin_website_card_management_card_item_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-18 13:00:32', '2024-02-18 13:00:32', NULL),
(116, 3, 113, 'Card Item List', 'কার্ড আইটেম লিস্ট', '/admin/website/card_management/card_item', 'admin_website_card_management_card_item', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-02-18 13:01:16', '2024-02-18 13:01:16', NULL),
(117, 0, 48, 'Content Management', 'কনটেন্ট ম্যানেজমেন্ট', '#', 'content_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-03 15:14:23', '2024-03-03 15:14:23', NULL),
(118, 1, 117, 'CMS', 'সিএমএস', '/admin/website/content_management/cms', 'admin_website_content_management_cms', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-03 15:15:22', '2024-03-03 15:15:22', NULL),
(119, 13, 48, 'Public Message', 'পাবলিক মেসেজ', '#', 'public_message', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-04 18:02:35', '2024-03-04 18:02:35', NULL),
(120, 1, 119, 'Message List', 'মেসেজ লিস্ট', '/admin/website/public_message_management/public_message', 'admin_website_public_message_management_public_message', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-04 18:03:44', '2024-03-04 18:03:44', NULL),
(121, 5, NULL, 'Cadet Admission', 'ক্যাডেট এডমিশন', '#', 'cadet_admission', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-03-20 14:29:36', '2024-03-20 15:17:33', NULL),
(122, 2, 121, 'Admission Settings', 'এডমিশন সেটিংস', '#', 'admission_settings', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-03-20 14:31:03', '2024-11-01 11:43:17', NULL),
(123, 1, 122, 'Age Limit', 'বয়স সীমা', '/admin/admission_management/settings/candidate_age_limit', 'admin_admission_management_settings_candidate_age_limit', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-03-20 14:32:07', '2024-04-28 13:08:52', NULL),
(124, 2, 121, 'Admission Operation', 'এডমিশন অপারেশন', '#', 'admission_operation', 'CircleIcon', 'Sidebar', 'Active', 1, 58, '2024-03-20 14:33:10', '2024-05-19 09:28:25', NULL),
(125, 3, 121, 'College Cadets', 'কলেজ স্টুডেন্ট', '#', 'college_cadets', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-03-20 14:34:07', '2024-05-02 14:05:39', NULL),
(126, 4, 124, 'All Applications', 'সমস্ত অ্যাপ্লিকেশন', '/admin/admission_management/operation/candidate_list', 'admin_admission_management_operation_candidate_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-03-20 14:36:35', '2024-04-24 09:11:51', NULL),
(127, 1, 125, 'Cadet List', 'স্টুডেন্ট লিস্ট', '/admin/admission_management/college_cadet/cadet_list', 'admin_admission_management_college_cadet_cadet_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-03-20 14:37:51', '2024-03-23 05:14:02', NULL),
(128, 14, 48, 'Menu Management', 'মেনু ম্যানেজমেন্ট', '#', 'menu_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-23 05:52:49', '2024-03-23 05:52:49', NULL),
(129, 1, 128, 'Create Dynamic Menu', 'ডাইনামিক মেনু তৈরি', '/admin/website/dynamic_menu_management/dynamic_menu/create', 'admin_website_dynamic_menu_management_dynamic_menu_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-23 05:55:35', '2024-03-23 05:55:35', NULL),
(130, 2, 128, 'Dynamic Menu List', 'ডাইনামিক মেনু লিস্ট', '/admin/website/dynamic_menu_management/dynamic_menu', 'admin_website_dynamic_menu_management_dynamic_menu', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-03-23 05:56:17', '2024-03-23 05:56:17', NULL),
(131, 2, 122, 'Monthly Income', 'মাসিক আয়', '/admin/admission_management/settings/monthly_income', 'admin_admission_management_settings_monthly_income', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-17 10:43:48', '2024-04-18 10:16:23', NULL),
(132, 3, 122, 'Ed Quali', 'শিক্ষাগত যোগ্যতা', '/admin/admission_management/settings/education_qualification', 'admin_admission_management_settings_education_qualification', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-17 11:10:36', '2024-04-28 13:10:52', NULL),
(133, 4, 122, 'Category', 'ক্যাটাগরি', '/admin/admission_management/settings/quota', 'admin_admission_management_settings_quota', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-17 12:57:43', '2024-10-16 10:15:45', NULL),
(134, 5, 122, 'Child Category', 'চাইল্ড ক্যাটাগরি', '/admin/admission_management/settings/child_quota', 'admin_admission_management_settings_child_quota', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-17 14:00:15', '2024-10-16 10:16:23', NULL),
(135, 6, 122, 'Sub Child Category', 'সাব চাইল্ড ক্যাটাগরি', '/admin/admission_management/settings/sub_child_quota', 'admin_admission_management_settings_sub_child_quota', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-17 15:16:56', '2024-10-16 10:16:43', NULL),
(136, 7, 122, 'School', 'স্কুল', '/admin/admission_management/settings/school', 'admin_admission_management_settings_school', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-18 09:35:41', '2024-04-18 10:15:39', NULL),
(137, 8, 122, 'Relation', 'সম্পর্ক', '/admin/admission_management/settings/relation', 'admin_admission_management_settings_relation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 10:17:21', '2024-04-18 10:17:21', NULL),
(138, 9, 122, 'REF Profession', 'REF পেশা', '/admin/admission_management/settings/ref_profession', 'admin_admission_management_settings_ref_profession', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 10:42:05', '2024-04-18 10:42:05', NULL),
(139, 10, 122, 'Profession', 'পেশা', '/admin/admission_management/settings/profession', 'admin_admission_management_settings_profession', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 10:43:05', '2024-04-18 10:43:05', NULL),
(140, 11, 122, 'Marital Status', 'বৈবাহিক অবস্থা', '/admin/admission_management/settings/marital_status', 'admin_admission_management_settings_marital_status', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 12:20:03', '2024-04-18 12:20:03', NULL),
(141, 12, 122, 'Language', 'ভাষা', '/admin/admission_management/settings/language', 'admin_admission_management_settings_language', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 12:45:57', '2024-04-18 12:45:57', NULL),
(142, 13, 122, 'Exam Centre', 'পরীক্ষা কেন্দ্র', '/admin/admission_management/settings/exam_centre', 'admin_admission_management_settings_exam_centre', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 13:27:18', '2024-04-18 13:27:18', NULL),
(143, 14, 122, 'Extra Curriculars', 'পাঠ্যক্রম বহির্ভূত', '/admin/admission_management/settings/extra_curriculars', 'admin_admission_management_settings_extra_curriculars', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 13:32:18', '2024-04-18 13:32:18', NULL),
(144, 15, 122, 'Co-Curriculars', 'সহ-পাঠ্যক্রম', '/admin/admission_management/settings/co_curriculars', 'admin_admission_management_settings_co_curriculars', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-18 13:33:01', '2024-04-18 13:33:01', NULL),
(145, 1, 124, 'Defense Category Approval', 'প্রতিরক্ষা ক্যাটাগরি অনুমোদন', '/admin/admission_management/operation/defense_quota_approval', 'admin_admission_management_operation_defense_quota_approval', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-24 09:08:01', '2024-10-16 10:12:42', NULL),
(146, 3, 124, 'Application Correction', 'আবেদন সংশোধন', '/admin/admission_management/operation/application_correction', 'admin_admission_management_operation_application_correction', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-04-24 09:09:55', '2024-05-22 10:34:19', NULL),
(147, 3, 124, 'Application Rejection', 'আবেদন প্রত্যাখ্যান', '/admin/admission_management/operation/application_rejection', 'admin_admission_management_operation_application_rejection', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-24 09:11:10', '2024-04-24 09:11:10', NULL),
(148, 5, 124, 'Pending Applications', 'মুলতুবি আবেদন', '/admin/admission_management/operation/pending_application', 'admin_admission_management_operation_pending_application', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-24 09:13:37', '2024-04-24 09:13:37', NULL),
(149, 7, 124, 'My Application', 'আমার আবেদন', '/admin/admission_management/operation/my_application', 'admin_admission_management_operation_my_application', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-04-24 09:15:02', '2024-05-22 10:41:54', NULL),
(150, 8, 124, 'Search Record', 'অনুসন্ধান রেকর্ড', '/admin/admission_management/operation/search_record', 'admin_admission_management_operation_search_record', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-24 09:17:13', '2024-09-24 10:11:17', NULL),
(151, 6, 124, 'New Application', 'নিউ এপ্লিকেশন', '/admin/admission_management/operation/new_application', 'admin_admission_management_operation_new_application', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-04-29 10:06:30', '2024-05-12 15:33:10', NULL),
(152, 9, NULL, 'Healthcare Management', 'স্বাস্থ্যেসবা', '#', 'healthcare_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 10:56:22', '2024-12-08 23:36:58', NULL),
(153, 2, 152, 'Healthcare Settings', 'স্বাস্থ্যসেবা সেটিংস', '#', 'healthcare_settings', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 10:57:22', '2025-06-01 20:27:36', NULL),
(154, 2, 152, 'Inventory System', 'ইনভেন্টরি সিস্টেম', '#', 'inventory_system', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-30 10:57:50', '2024-04-30 10:57:50', NULL),
(156, 4, 152, 'Prescription', 'প্রেসক্রিপশন', '#', 'prescription', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-04-30 10:58:45', '2024-04-30 10:58:45', NULL),
(157, 1, 153, 'Hospital Info Add', 'হাসপাতালের তথ্য অ্যাড', '/admin/healthcare-management/healthcare-settings/hospital-information/create', 'admin_healthcare_management_healthcare_settings_hospital_information_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:01:29', '2024-05-29 14:37:03', NULL),
(158, 2, 153, 'Hospital Info List', 'হাসপাতালের তথ্য তালিকা', '/admin/healthcare-management/healthcare-settings/hospital-information', 'admin_healthcare_management_healthcare_settings_hospital_information', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:10:12', '2024-05-29 14:37:11', NULL),
(159, 3, 153, 'Students Medical Information Add', 'শিক্ষার্থীদের মেডিকেল তথ্য অ্যাড', '/admin/healthcare-management/healthcare-settings/students-medical-information/create', 'admin_healthcare_management_healthcare_settings_students_medical_information_create', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-04-30 11:11:10', '2024-06-02 14:28:26', NULL),
(160, 4, 153, 'Students Medical Information List', 'শিক্ষার্থীদের মেডিকেল তথ্য তালিকা', '/admin/healthcare-management/healthcare-settings/students-medical-information', 'admin_healthcare_management_healthcare_settings_students_medical_information', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-04-30 11:12:09', '2024-06-02 14:28:35', NULL),
(161, 5, 153, 'Report Type', 'রিপোর্ট টাইপ', '/admin/healthcare-management/healthcare-settings/report-type', 'admin_healthcare_management_healthcare_settings_report_type', 'CircleIcon', 'Sidebar', 'Inactive', 1, 107, '2024-04-30 11:12:51', '2025-06-16 18:48:32', NULL),
(162, 6, 153, 'Sample', 'নমুনা', '/admin/healthcare-management/healthcare-settings/sample', 'admin_healthcare_management_healthcare_settings_sample', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:13:57', '2024-05-29 14:37:54', NULL),
(163, 7, 153, 'Lab', 'ল্যাব', '/admin/healthcare-management/healthcare-settings/lab', 'admin_healthcare_management_healthcare_settings_lab', 'CircleIcon', 'Sidebar', 'Inactive', 1, 107, '2024-04-30 11:14:34', '2025-06-03 19:50:34', NULL),
(164, 1, 154, 'Warehouse', 'গুদাম', '/admin/healthcare-management/inventory/warehouse', 'admin_healthcare_management_inventory_warehouse', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:18:38', '2024-05-29 14:38:49', NULL),
(165, 2, 154, 'Product Unit', 'পণ্য ইউনিট', '/admin/healthcare-management/inventory/product-unit', 'admin_healthcare_management_inventory_product_unit', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:23:19', '2024-05-29 14:39:00', NULL),
(166, 3, 154, 'Manufacturer', 'প্রস্তুতকারক', '/admin/healthcare-management/inventory/manufacturer', 'admin_healthcare_management_inventory_manufacturer', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:24:13', '2024-05-29 14:39:09', NULL),
(167, 4, 154, 'Presentation', 'উপস্থাপনা', '/admin/healthcare-management/inventory/presentation', 'admin_healthcare_management_inventory_presentation', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:26:28', '2024-05-29 14:39:16', NULL),
(168, 7, 154, 'Drug List', 'Drug List', '/admin/healthcare-management/inventory/item', 'admin_healthcare_management_inventory_item', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:27:06', '2025-06-02 21:06:39', NULL),
(169, 9, 154, 'Opening Stock List', 'শুরুর স্টক লিস্ট', '/admin/healthcare-management/inventory/opening-stock', 'admin_healthcare_management_inventory_opening_stock', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2024-04-30 11:27:38', '2025-01-30 19:36:30', NULL),
(170, 1, 155, 'Vendor List', 'বিক্রেতার তালিকা', '/admin/healthcare-management/inventory/vendor', 'admin_healthcare_management_inventory_vendor', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:28:41', '2024-05-29 12:12:17', NULL),
(171, 4, 155, 'Purchase  List', 'ক্রয়', '/admin/healthcare-management/inventory/purchase', 'admin_healthcare_management_inventory_purchase', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:29:22', '2024-05-29 12:14:44', NULL),
(172, 5, 155, 'Product Receive List', 'পণ্য গ্রহণ', '/admin/healthcare-management/inventory/product_receive', 'admin_healthcare_management_inventory_product_receive', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-04-30 11:30:07', '2024-05-29 12:16:16', NULL),
(173, 1, 156, 'Prescription Add', 'যুক্ত করা', '/admin/healthcare-management/prescription/create', 'admin_healthcare_management_prescription_create', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2024-04-30 11:31:29', '2025-05-31 18:41:23', NULL),
(174, 2, 156, 'Prescription List', 'তালিকা', '/admin/healthcare-management/prescription', 'admin_healthcare_management_prescription', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2024-04-30 11:32:00', '2025-05-31 18:41:33', NULL),
(175, 2, NULL, 'Web Portal', 'ওয়েব পোর্টাল', '#', 'web_portal', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-02 13:40:00', '2024-05-02 13:40:00', NULL),
(176, 4, NULL, 'CCA', 'সিসিএ', '#', 'cca', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-02 13:40:42', '2024-05-02 13:40:42', NULL),
(177, 6, NULL, 'CCIS', 'সিসিআইএস', '#', 'ccis', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-02 13:42:22', '2024-05-02 13:42:22', NULL),
(178, 4, 121, 'Exam Setting & Operation', 'এক্সাম সেটিংস এন্ড অপারেশন', '#', 'exam_setting_operation', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-07 08:52:14', '2024-08-21 07:21:43', NULL),
(179, 1, 178, 'Room Setup', 'রুম সেটআপ', '/admin/admission_management_system/exam/room_setup', 'admin_admission_management_system_exam_room_setup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-07 08:57:33', '2024-05-07 08:57:33', NULL),
(180, 2, 178, 'Seat Plan Setup', 'সিট প্ল্যান সেটআপ', '/admin/admission_management_system/exam/seat_plan_setup/create', 'admin_admission_management_system_exam_seat_plan_setup_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-07 10:49:06', '2024-05-08 12:31:47', NULL),
(181, 0, 70, 'Video Category', 'ভিডিও ক্যাটাগরি', '/admin/website/video_management/video_category', 'admin_website_video_management_video_category', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-07 13:18:40', '2024-05-07 13:18:40', NULL),
(182, 3, 178, 'Seat Plan List', 'সিট প্ল্যান লিস্ট', '/admin/admission_management_system/exam/seat_plan_setup', 'admin_admission_management_system_exam_seat_plan_setup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-08 12:32:23', '2024-05-08 12:32:23', NULL),
(183, 4, 178, 'Seat Plan Summary', 'সিট প্ল্যান সামারি', '/admin/admission_management_system/exam/seat_plan_summaray', 'admin_admission_management_system_exam_seat_plan_summaray', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-08 14:40:19', '2024-05-08 14:40:19', NULL),
(184, 8, 178, 'Attendance Sheet', 'অ্যাটেনডেন্স শিট', '/admin/admission_management_system/exam/attendance_sheet', 'admin_admission_management_system_exam_attendance_sheet', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-08 15:47:08', '2024-05-08 15:47:08', NULL),
(185, 5, 178, 'Exam Attendance', 'এক্সাম অ্যাটেনডেন্স', '/admin/admission_management_system/exam/exam_attendance', 'admin_admission_management_system_exam_exam_attendance', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-05-09 09:24:13', '2024-05-27 09:06:02', NULL),
(186, 6, 178, 'Search Record', 'সার্চ রেকর্ড', '/admin/admission_management_system/exam/search_record', 'admin_admission_management_system_exam_search_record', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-09 09:25:01', '2024-05-09 09:25:01', NULL),
(187, 7, 178, 'Print Admit/Application', 'প্রিন্ট এডমিট/এপ্লিকেশন ফর্ম', '/admin/admission_management_system/exam/print_admit', 'admin_admission_management_system_exam_print_admit', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-09 09:25:39', '2024-05-16 10:06:05', NULL),
(188, 9, 178, 'Multiple Form Print', 'মাল্টিপল ফর্ম প্রিন্ট', '/admin/admission_management_system/exam/multiple_form_print', 'admin_admission_management_system_exam_multiple_form_print', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-05-09 09:26:17', '2024-09-19 17:52:02', NULL),
(189, 12, 178, 'All Absent List', 'অবসেন্ট লিস্ট', '/admin/admission_management_system/exam/all_absent_list', 'admin_admission_management_system_exam_all_absent_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-09 09:27:21', '2024-05-27 09:03:15', NULL),
(190, 11, 178, 'Absent List', 'অবসেন্ট লিস্ট', '/admin/admission_management_system/exam/absent_list', 'admin_admission_management_system_exam_absent_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-09 09:28:02', '2024-05-27 09:02:54', NULL),
(191, 13, 178, 'Bonus Entry', 'বোনাস এন্ট্রি', '/admin/admission_management_system/exam/bonus_list/create', 'admin_admission_management_system_exam_bonus_list_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-09 09:28:38', '2024-05-27 09:03:32', NULL),
(192, 14, 178, 'Bonus List', 'বোনাস লিস্ট', '/admin/admission_management_system/exam/bonus_list', 'admin_admission_management_system_exam_bonus_list', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-09 09:29:12', '2024-05-27 09:04:08', NULL),
(193, 8, 28, 'Document Category', 'ডকুমেন্ট ক্যাটাগরি', '/admin/hr_management/hr_settings/document_category', 'admin_hr_management_hr_settings_document_category', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-09 12:44:54', '2024-05-09 12:44:54', NULL),
(194, 5, 121, 'Viva & Medical Settings', 'ভাইভা সেটিং', '#', 'viva_medical_settings', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-13 08:53:51', '2024-05-16 10:04:35', NULL),
(195, 1, 194, 'Viva Assessment', 'ভাইভা এসেসমেন্ট', '/admin/admission_management/viva_setup/viva_subject', 'admin_admission_management_viva_setup_viva_subject', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-13 08:54:41', '2024-05-21 09:04:17', NULL),
(196, 2, 194, 'Medical Assessment', 'মেডিকেল এসেসমেন্ট', '/admin/admission_management/viva_setup/mo_subject', 'admin_admission_management_viva_setup_mo_subject', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-13 08:55:21', '2024-05-21 09:06:30', NULL),
(197, 3, 194, 'MA Category', 'মেডিকেল এসেসমেন্ট ক্যাটাগরি', '/admin/admission_management/viva_setup/mo_sub_subject', 'admin_admission_management_viva_setup_mo_sub_subject', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-13 08:56:25', '2024-05-21 09:08:56', NULL),
(198, 4, 194, 'Viva Board', 'ভাইভা বোর্ড', '/admin/admission_management/viva_setup/viva_board', 'admin_admission_management_viva_setup_viva_board', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-13 08:57:07', '2024-05-13 08:57:07', NULL),
(199, 6, 194, 'Grading', 'গ্রেডিং', '/admin/admission_management/viva_setup/grading', 'admin_admission_management_viva_setup_grading', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-13 08:57:44', '2024-05-13 13:58:57', NULL),
(200, 5, 194, 'Medical Board', 'মেডিকেল বোর্ড', '/admin/admission_management/viva_setup/medical_board', 'admin_admission_management_viva_setup_medical_board', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-13 13:59:37', '2024-05-13 13:59:37', NULL),
(201, 7, 194, 'Medical Specialist', 'Medical Specialist', '/admin/admission_management/viva_setup/president_member', 'admin_admission_management_viva_setup_president_member', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-14 09:36:55', '2024-09-05 14:23:06', NULL),
(202, 2, 124, 'DC Rejected List', 'DC রিজেক্টেড লিস্ট', '/admin/admission_management/operation/defense_quota_rejected', 'admin_admission_management_operation_defense_quota_rejected', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-16 09:20:50', '2024-10-16 10:14:23', NULL),
(203, 6, 121, 'VM Operation', 'ভিএম অপারেশন', '#', 'vm_operation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-16 14:56:12', '2024-05-16 14:56:12', NULL),
(204, 1, 203, 'Assign Viva Board', 'এসাইন ভাইভা বোর্ড', '/admin/admission_management/vm_operation/assign_viva_board/create', 'admin_admission_management_vm_operation_assign_viva_board_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-16 14:56:56', '2024-05-16 14:56:56', NULL),
(205, 2, 203, 'Assign VB List', 'এসাইন VB লিস্ট', '/admin/admission_management/vm_operation/assign_viva_board', 'admin_admission_management_vm_operation_assign_viva_board', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-16 14:57:34', '2024-05-16 14:57:34', NULL),
(206, 7, 203, 'Viva Mark', 'ভাইভা মার্ক', '/admin/admission_management/vm_operation/viva_mark/create', 'admin_admission_management_vm_operation_viva_mark_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-16 15:01:51', '2024-09-01 09:57:41', NULL),
(207, 3, 203, 'Assign Medical Board', 'এসাইন মেডিকেল বোর্ড', '/admin/admission_management/vm_operation/assign_medical_board/create', 'admin_admission_management_vm_operation_assign_medical_board_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-19 10:36:39', '2024-09-01 09:56:36', NULL),
(208, 4, 203, 'Assign MB List', 'এসাইন এমবি লিস্ট', '/admin/admission_management/vm_operation/assign_medical_board', 'admin_admission_management_vm_operation_assign_medical_board', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-19 10:39:14', '2024-09-01 09:56:51', NULL),
(209, 9, 203, 'Medical Mark', 'মেডিকেল মার্ক', '/admin/admission_management/vm_operation/medical_mark_entry/create', 'admin_admission_management_vm_operation_medical_mark_entry_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-19 10:40:49', '2024-09-01 09:55:49', NULL),
(210, 10, 203, 'Medical Mark List', 'মেডিকেল মার্ক লিস্ট', '/admin/admission_management/vm_operation/medical_mark_entry', 'admin_admission_management_vm_operation_medical_mark_entry', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-22 16:10:54', '2024-09-01 09:55:38', NULL),
(211, 8, 203, 'Viva Mark List', '-', '/admin/admission_management/vm_operation/viva_mark', 'admin_admission_management_vm_operation_viva_mark', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-23 09:19:33', '2024-09-01 09:57:23', NULL),
(212, 10, 178, 'Absent', 'অবসেন্ট', '/admin/admission_management_system/exam/absent_list/create', 'admin_admission_management_system_exam_absent_list_create', 'CircleIcon', 'Sidebar', 'Active', 1, 81, '2024-05-27 09:05:33', '2024-06-02 13:15:30', NULL),
(213, 3, 124, 'Index Generate', 'সূচক তৈরি করুন', '/admin/admission_management/operation/index_number_generate/create', 'admin_admission_management_operation_index_number_generate_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-27 09:07:58', '2024-11-03 08:11:53', NULL),
(214, 8, 153, 'Clinical History', 'ক্লিনিকাল ইতিহাস', '/admin/healthcare-management/healthcare-settings/clinical-history', 'admin_healthcare_management_healthcare_settings_clinical_history', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:05:49', '2024-05-29 12:05:49', NULL);
INSERT INTO `menus` (`id`, `order_no`, `parent_id`, `en`, `bn`, `path`, `slug`, `icon`, `location`, `menu_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(215, 9, 153, 'Physical Examination', 'শারীরিক পরীক্ষা', '/admin/healthcare-management/healthcare-settings/physical-examination', 'admin_healthcare_management_healthcare_settings_physical_examination', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:06:28', '2024-05-29 12:06:28', NULL),
(216, 10, 153, 'Investigation', 'তদন্ত', '/admin/healthcare-management/healthcare-settings/investigation', 'admin_healthcare_management_healthcare_settings_investigation', 'CircleIcon', 'Sidebar', 'Inactive', 1, 107, '2024-05-29 12:06:58', '2025-06-16 18:48:56', NULL),
(217, 11, 153, 'Diagnosis', 'রোগ নির্ণয়', '/admin/healthcare-management/healthcare-settings/diagnosis', 'admin_healthcare_management_healthcare_settings_diagnosis', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:07:27', '2024-05-29 12:07:27', NULL),
(218, 12, 153, 'Advice', 'উপদেশ', '/admin/healthcare-management/healthcare-settings/advice', 'admin_healthcare_management_healthcare_settings_advice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:08:12', '2024-05-29 12:08:12', NULL),
(219, 13, 153, 'Excuse', 'অজুহাত', '/admin/healthcare-management/healthcare-settings/excuse', 'admin_healthcare_management_healthcare_settings_excuse', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-05-29 12:08:45', '2024-06-02 14:28:58', NULL),
(220, 14, 153, 'Instruction', 'নির্দেশ', '/admin/healthcare-management/healthcare-settings/instruction', 'admin_healthcare_management_healthcare_settings_instruction', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:09:19', '2024-05-29 12:09:19', NULL),
(221, 8, 154, 'Opening Stock Add', 'শুরুর স্টক অ্যাড', '/admin/healthcare-management/inventory/opening-stock/create', 'admin_healthcare_management_inventory_opening_stock_create', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2024-05-29 12:10:59', '2025-01-30 19:36:17', NULL),
(222, 2, 155, 'Vendor Create', 'বিক্রেতা অ্যাড', '/admin/healthcare-management/inventory/vendor/create', 'admin_healthcare_management_inventory_vendor_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:13:28', '2024-05-29 12:13:28', NULL),
(223, 4, 155, 'Purchase create', '--', '/admin/healthcare-management/inventory/purchase/create', 'admin_healthcare_management_inventory_purchase_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:15:39', '2024-05-29 12:15:39', NULL),
(224, 6, 155, 'Product Receive', '--', '/admin/healthcare-management/inventory/product_receive/create', 'admin_healthcare_management_inventory_product_receive_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:22:33', '2024-05-29 12:22:33', NULL),
(225, 7, 155, 'Stock Out List', '--', '/admin/healthcare-management/inventory/drug_stock_out', 'admin_healthcare_management_inventory_drug_stock_out', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:23:01', '2024-05-29 12:23:01', NULL),
(226, 8, 155, 'Stock Out Create', '--', '/admin/healthcare-management/inventory/drug_stock_out/create', 'admin_healthcare_management_inventory_drug_stock_out_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-05-29 12:23:37', '2024-05-29 12:23:37', NULL),
(227, 3, 152, 'Stock & Purchase', 'স্টক/ক্রয় সিস্টেম', '#', 'stock_purchase', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:22:49', '2024-05-29 14:29:06', NULL),
(228, 2, 227, 'Vendor List', 'বিক্রেতার তালিকা', '/admin/healthcare-management/stock-purchase/vendor', 'admin_healthcare_management_stock_purchase_vendor', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2024-05-29 14:31:33', '2025-01-30 22:36:39', NULL),
(229, 1, 227, 'Vendor Create', 'বিক্রেতা অ্যাড', '/admin/healthcare-management/stock-purchase/vendor/create', 'admin_healthcare_management_stock_purchase_vendor_create', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2024-05-29 14:32:22', '2025-01-30 22:36:30', NULL),
(230, 10, 227, 'Purchase  List', 'ক্রয় লিস্ট', '/admin/healthcare-management/stock-purchase/purchase', 'admin_healthcare_management_stock_purchase_purchase', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:32:47', '2025-02-26 21:19:36', NULL),
(231, 9, 227, 'Purchase Create', 'ক্রয় করুন', '/admin/healthcare-management/stock-purchase/purchase/create', 'admin_healthcare_management_stock_purchase_purchase_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:33:12', '2025-02-26 21:19:07', NULL),
(232, 14, 227, 'Purchase Receive List', 'ক্রয় গ্রহণ-সংরক্ষণ তালিকা', '/admin/healthcare-management/stock-purchase/product_receive', 'admin_healthcare_management_stock_purchase_product_receive', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:33:40', '2025-02-26 21:34:07', NULL),
(233, 13, 227, 'Purchase Receive', 'ক্রয় গ্রহণ-সংরক্ষণ', '/admin/healthcare-management/stock-purchase/product_receive/create', 'admin_healthcare_management_stock_purchase_product_receive_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:34:21', '2025-02-26 21:33:16', NULL),
(234, 16, 227, 'Stock Out List', 'স্টক আউট লিস্ট', '/admin/healthcare-management/stock-purchase/drug_stock_out', 'admin_healthcare_management_stock_purchase_drug_stock_out', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:34:48', '2025-02-26 21:35:54', NULL),
(235, 15, 227, 'Stock Out Create', 'স্টক আউট প্রস্তুতকরণ', '/admin/healthcare-management/stock-purchase/drug_stock_out/create', 'admin_healthcare_management_stock_purchase_drug_stock_out_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 14:35:16', '2025-02-26 21:35:26', NULL),
(236, 7, 152, 'Reports', 'রিপোর্ট', '#', 'reports', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 15:02:18', '2025-06-02 14:41:59', NULL),
(237, 1, 236, 'Drug Stock Report', '--', '/admin/healthcare-management/reports/drug_stock_report', 'admin_healthcare_management_reports_drug_stock_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-05-29 15:02:51', '2024-05-30 09:36:08', NULL),
(238, 3, 42, 'User Permission', '-', '/admin/user_management/users/permission', 'admin_user_management_users_permission', 'CircleIcon', 'Topbar', 'Active', 1, 1, '2024-05-29 17:52:58', '2025-04-14 20:18:40', NULL),
(239, 11, NULL, 'Canteen Management', 'ক্যান্টিন ম্যানেজমেন্ট', '#', 'canteen_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-06-02 15:49:56', '2024-12-08 23:36:02', NULL),
(240, 2, 239, 'Inventory Manage', 'ইনভেন্টরি ম্যানেজ', '#', 'inventory_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:50:50', '2024-06-02 15:50:50', NULL),
(241, 1, 240, 'Brand Manage', 'ব্র্যান্ড ম্যানেজ', '/admin/canteen_management_system/inventory_manage/canteen_brand_manage', 'admin_canteen_management_system_inventory_manage_canteen_brand_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:52:02', '2024-06-02 15:52:02', NULL),
(242, 2, 240, 'Product Unit Manage', 'প্রোডাক্ট ইউনিট ম্যানেজ', '/admin/canteen_management_system/inventory_manage/canteen_unit_manage', 'admin_canteen_management_system_inventory_manage_canteen_unit_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:52:39', '2024-06-02 15:52:39', NULL),
(243, 3, 240, 'Product Group Manage', 'প্রোডাক্ট গ্রুপ ম্যানেজ', '/admin/canteen_management_system/inventory_manage/canteen_product_group_manage', 'admin_canteen_management_system_inventory_manage_canteen_product_group_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:53:19', '2024-06-02 15:53:19', NULL),
(244, 4, 240, 'Product Sub-Group Manage', 'প্রোডাক্ট সাব-গ্রুপ ম্যানেজ', '/admin/canteen_management_system/inventory_manage/canteen_product_sub_group_manage', 'admin_canteen_management_system_inventory_manage_canteen_product_sub_group_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:53:55', '2024-06-02 15:53:55', NULL),
(245, 5, 240, 'Product Manage', 'প্রোডাক্ট ম্যানেজ', '/admin/canteen_management_system/inventory_manage/canteen_product_manage/create', 'admin_canteen_management_system_inventory_manage_canteen_product_manage_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:54:37', '2024-06-02 15:54:37', NULL),
(246, 6, 240, 'Product List', 'প্রোডাক্ট লিস্ট', '/admin/canteen_management_system/inventory_manage/canteen_product_manage', 'admin_canteen_management_system_inventory_manage_canteen_product_manage', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-06-02 15:55:16', '2025-01-27 17:50:33', NULL),
(247, 7, 240, 'Opening Stock', 'ওপেনিং স্টক', '/admin/canteen_management_system/inventory_manage/canteen_opening_stock_manage/create', 'admin_canteen_management_system_inventory_manage_canteen_opening_stock_manage_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:55:59', '2024-06-02 15:55:59', NULL),
(248, 8, 240, 'Opening Stock List', 'ওপেনিং স্টক লিস্ট', '/admin/canteen_management_system/inventory_manage/canteen_opening_stock_manage', 'admin_canteen_management_system_inventory_manage_canteen_opening_stock_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-02 15:56:33', '2024-06-02 15:56:33', NULL),
(249, 1, 239, 'Canteen Settings', 'ক্যান্টিন সেটিংস', '#', 'canteen_settings', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-06-04 09:40:22', '2024-06-04 09:43:25', NULL),
(250, 1, 249, 'Canteen Manage', 'ক্যান্টিন ম্যানেজ', '/admin/canteen_management_system/canteen_setting/canteen_manage/create', 'admin_canteen_management_system_canteen_setting_canteen_manage_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-04 09:41:02', '2024-06-04 09:41:02', NULL),
(251, 2, 249, 'Canteen List', 'ক্যান্টিন লিস্ট', '/admin/canteen_management_system/canteen_setting/canteen_manage', 'admin_canteen_management_system_canteen_setting_canteen_manage', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-06-04 09:41:33', '2025-01-27 17:22:37', NULL),
(252, 3, 239, 'Stock In/Purchase Management', 'Stock In/Purchase ম্যানেজমেন্ট', '#', 'stock_in_purchase_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-04 13:38:26', '2024-06-04 13:38:26', NULL),
(253, 1, 252, 'Vendor Manage', 'ভেন্ডর ম্যানেজ', '/admin/canteen_management_system/purchase_manage/canteen_vendor_manage/create', 'admin_canteen_management_system_purchase_manage_canteen_vendor_manage_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-04 13:39:19', '2024-06-04 13:39:19', NULL),
(254, 2, 252, 'Vendor List', 'ভেন্ডর লিস্ট', '/admin/canteen_management_system/purchase_manage/canteen_vendor_manage', 'admin_canteen_management_system_purchase_manage_canteen_vendor_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-04 13:40:09', '2024-06-04 13:40:09', NULL),
(255, 3, 252, 'Demand Create', 'ডিমান্ড Create', '/admin/canteen_management_system/purchase_manage/canteen_demand_manage/create', 'admin_canteen_management_system_purchase_manage_canteen_demand_manage_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-04 13:45:07', '2024-06-04 13:45:07', NULL),
(256, 4, 252, 'Demand List', 'ডিমান্ড লিস্ট', '/admin/canteen_management_system/purchase_manage/canteen_demand_manage', 'admin_canteen_management_system_purchase_manage_canteen_demand_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-04 13:45:48', '2024-06-04 13:45:48', NULL),
(257, 5, 252, 'Demand Approved', 'ডিমান্ড Approved', '/admin/canteen_management_system/purchase_manage/canteen_demand_manage/approved', 'admin_canteen_management_system_purchase_manage_canteen_demand_manage_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-06 16:23:30', '2024-06-06 16:23:30', NULL),
(258, 6, 252, 'Purchase From Demand', 'Purchase ফ্রম ডিমান্ড', '/admin/canteen_management_system/purchase_manage/canteen_purchase_from_demand/create', 'admin_canteen_management_system_purchase_manage_canteen_purchase_from_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-06 16:24:13', '2024-06-06 16:24:13', NULL),
(259, 7, 252, 'Direct Purchase', '.', '/admin/canteen_management_system/purchase_manage/canteen_direct_purchase/create', 'admin_canteen_management_system_purchase_manage_canteen_direct_purchase_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-06 16:24:47', '2024-06-06 16:24:47', NULL),
(260, 8, 252, 'Purchase List', '.', '/admin/canteen_management_system/purchase_manage/canteen_purchase', 'admin_canteen_management_system_purchase_manage_canteen_purchase', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-06 16:25:20', '2024-06-06 16:25:20', NULL),
(261, 4, 239, 'Canteen Stock Out Management', '.', '#', 'canteen_stock_out_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40', NULL),
(262, 9, 252, 'Purchase Approved', '.', '/admin/canteen_management_system/purchase_manage/canteen_purchase_approved', 'admin_canteen_management_system_purchase_manage_canteen_purchase_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:42:53', '2024-06-11 13:42:53', NULL),
(263, 10, 252, 'Purchase Receive', '.', '/admin/canteen_management_system/purchase_manage/canteen_purchase_receive/create', 'admin_canteen_management_system_purchase_manage_canteen_purchase_receive_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:43:28', '2024-06-11 13:43:28', NULL),
(264, 11, 252, 'Purchase Receive List', '.', '/admin/canteen_management_system/purchase_manage/canteen_purchase_receive', 'admin_canteen_management_system_purchase_manage_canteen_purchase_receive', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:44:03', '2024-06-11 13:44:03', NULL),
(265, 1, 261, 'Stock Out', '.', '/admin/canteen_management_system/canteen_stock_out_management/canteen_stock_out/create', 'admin_canteen_management_system_canteen_stock_out_management_canteen_stock_out_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:45:49', '2024-06-11 13:45:49', NULL),
(266, 2, 261, 'Stock Out List', '.', '/admin/canteen_management_system/canteen_stock_out_management/canteen_stock_out', 'admin_canteen_management_system_canteen_stock_out_management_canteen_stock_out', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:46:34', '2024-06-11 13:46:34', NULL),
(267, 3, 261, 'Product Condemnation', '.', '/admin/canteen_management_system/canteen_stock_out_management/canteen_product_condemnation/create', 'admin_canteen_management_system_canteen_stock_out_management_canteen_product_condemnation_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:47:35', '2024-06-11 13:47:35', NULL),
(268, 4, 261, 'Condemnation List', '.', '/admin/canteen_management_system/canteen_stock_out_management/canteen_product_condemnation', 'admin_canteen_management_system_canteen_stock_out_management_canteen_product_condemnation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:48:16', '2024-06-11 13:48:16', NULL),
(269, 5, 239, 'Report Management', '.', '#', 'report_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-11 13:58:17', '2024-06-11 13:58:17', NULL),
(270, 1, 269, 'Ledger Report', '.', '/admin/canteen_management_system/canteen_report_management/canteen_stock_details_report', 'admin_canteen_management_system_canteen_report_management_canteen_stock_details_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-06-11 13:59:00', '2025-01-14 17:27:48', NULL),
(271, 10, NULL, 'Library Management', 'লাইব্রেরি', '#', 'library_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-06-13 17:29:06', '2024-12-08 23:30:56', NULL),
(273, 1, 271, 'Library Settings', 'লাইব্রেরি সেটিংস', '#', 'library_settings', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:24:37', '2024-06-23 16:24:37', NULL),
(274, 2, 271, 'Issue Book', 'ইস্যু বই', '/admin/library-management/issue-book', 'admin_library_management_issue_book', 'CircleIcon', 'Sidebar', 'Active', 1, 1362, '2024-06-23 16:25:03', '2025-04-21 23:40:38', NULL),
(275, 3, 271, 'Return Book', 'বই ফেরত', '/admin/library-management/return-book', 'admin_library_management_return_book', 'CircleIcon', 'Sidebar', 'Active', 1, 1362, '2024-06-23 16:25:34', '2025-04-21 23:40:43', NULL),
(276, 4, 271, 'Notice', 'Notice', '#', 'notice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:25:57', '2024-06-23 16:25:57', NULL),
(277, 5, 271, 'Written Off Books', 'Written Off Books', '/admin/library-management/written-off-books', 'admin_library_management_written_off_books', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:26:19', '2024-06-23 16:26:19', NULL),
(278, 6, 271, 'Ebook', 'ইবুক', '#', 'ebook', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:26:44', '2024-06-23 16:26:44', NULL),
(279, 7, 271, 'Reports', 'Reports', '#', 'reports', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:27:22', '2024-06-23 16:27:22', NULL),
(280, 1, 273, 'Library List', 'লাইব্রেরি লিস্ট', '/admin/library-management/library-settings/library-information', 'admin_library_management_library_settings_library_information', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:28:03', '2024-06-23 16:28:03', NULL),
(281, 2, 273, 'Library Create', 'Library Create', '/admin/library-management/library-settings/library-information/create', 'admin_library_management_library_settings_library_information_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:29:26', '2024-06-23 16:29:26', NULL),
(282, 3, 273, 'Book Type', 'বইয়ের ধরন', '/admin/library-management/library-settings/book-type', 'admin_library_management_library_settings_book_type', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:30:33', '2024-06-23 16:30:33', NULL),
(283, 4, 273, 'Book List', 'বই লিস্ট', '/admin/library-management/library-settings/book', 'admin_library_management_library_settings_book', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:31:04', '2024-06-23 16:31:04', NULL),
(284, 5, 273, 'Book Add', 'বই যুক্ত করুন', '/admin/library-management/library-settings/book/create', 'admin_library_management_library_settings_book_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:31:34', '2024-06-23 16:31:34', NULL),
(285, 1, 276, 'New notice', '--', '/admin/library-management/notice/create', 'admin_library_management_notice_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:32:39', '2024-06-23 16:32:39', NULL),
(286, 2, 276, 'Notice List', '--', '/admin/library-management/notice', 'admin_library_management_notice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:33:05', '2024-06-23 16:33:05', NULL),
(287, 1, 278, 'E-book Upload', 'E-book Upload', '/admin/library-management/e-book/create', 'admin_library_management_e_book_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:33:44', '2024-06-23 16:33:44', NULL),
(288, 2, 278, 'E-book List', 'E-book List', '/admin/library-management/e-book', 'admin_library_management_e_book', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:34:08', '2024-06-23 16:34:08', NULL),
(289, 1, 279, 'Stock Taking', 'Stock Taking', '/admin/library-management/stock-taking', 'admin_library_management_stock_taking', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:34:44', '2024-06-23 16:34:44', NULL),
(290, 2, 279, 'Issued book', 'Issued book', '/admin/library-management/report/issued', 'admin_library_management_report_issued', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-23 16:35:30', '2024-06-23 16:35:30', NULL),
(291, 10, NULL, 'General Store Management', 'জেনারেল স্টোর', '#', 'general_store_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-06-24 16:28:39', '2024-12-08 23:36:39', NULL),
(292, 1, 291, 'General Settings', 'জেনারেল সেটিংস', '#', 'general_settings', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:30:01', '2024-06-24 16:30:01', NULL),
(293, 2, 291, 'Purchase Management', 'ক্রয় ম্যানেজমেন্ট', '#', 'purchase_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:30:50', '2024-06-24 16:30:50', NULL),
(294, 1, 292, 'Warehouse Manage', 'ওয়্যারহাউস ম্যানেজ', '/admin/general_store/general_settings/warehouse', 'admin_general_store_general_settings_warehouse', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:31:55', '2024-06-24 16:31:55', NULL),
(295, 2, 292, 'Department Manage', 'ডিপার্টমেন্ট ম্যানেজ', '/admin/general_store/general_settings/department', 'admin_general_store_general_settings_department', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-06-24 16:32:49', '2024-08-01 10:38:39', NULL),
(296, 3, 292, 'Brand Manage', 'ব্র্যান্ড ম্যানেজ', '/admin/general_store/general_settings/brand', 'admin_general_store_general_settings_brand', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:33:35', '2024-06-24 16:33:35', NULL),
(297, 4, 292, 'Group Manage', 'গ্রুপ ম্যানেজ', '/admin/general_store/general_settings/group', 'admin_general_store_general_settings_group', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:34:40', '2024-06-24 16:34:40', NULL),
(298, 5, 292, 'SubGroup Manage', 'সাবগ্রুপ ম্যানেজ', '/admin/general_store/general_settings/subgroup', 'admin_general_store_general_settings_subgroup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:35:25', '2024-06-24 16:35:25', NULL),
(299, 6, 292, 'Item Manage', 'আইটেম ম্যানেজ', '/admin/general_store/general_settings/item/create', 'admin_general_store_general_settings_item_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:36:13', '2024-06-24 16:36:13', NULL),
(300, 7, 292, 'Item List', 'আইটেম লিস্ট', '/admin/general_store/general_settings/item', 'admin_general_store_general_settings_item', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:37:03', '2024-06-24 16:37:03', NULL),
(301, 8, 292, 'Create Opening Stock', 'ওপেনিং স্টক', '/admin/general_store/general_settings/opening_stock/create', 'admin_general_store_general_settings_opening_stock_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:37:52', '2024-06-24 16:37:52', NULL),
(302, 9, 292, 'Opening Stock List', 'ওপেনিং স্টক লিস্ট', '/admin/general_store/general_settings/opening_stock', 'admin_general_store_general_settings_opening_stock', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:38:42', '2024-06-24 16:38:42', NULL),
(303, 1, 293, 'Create Vendor', 'ভেন্ডর তৈরি করুন', '/admin/general_store/purchase_management/vendor/create', 'admin_general_store_purchase_management_vendor_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:41:20', '2024-06-24 16:41:20', NULL),
(304, 2, 293, 'Vendor List', 'ভেন্ডর লিস্ট', '/admin/general_store/purchase_management/vendor', 'admin_general_store_purchase_management_vendor', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:42:04', '2024-06-24 16:42:04', NULL),
(305, 9, 293, 'Direct Purchase', 'ডাইরেক্ট ক্রয়', '/admin/general_store/purchase_management/purchase/create', 'admin_general_store_purchase_management_purchase_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:42:50', '2024-06-24 16:42:50', NULL),
(306, 10, 293, 'Purchase list', 'ক্রয় লিস্ট', '/admin/general_store/purchase_management/purchase', 'admin_general_store_purchase_management_purchase', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:43:29', '2024-06-24 16:43:29', NULL),
(307, 11, 293, 'Purchase Approved', 'ক্রয় অনুমোদিত', '/admin/general_store/purchase_management/purchase_approved/create', 'admin_general_store_purchase_management_purchase_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:44:06', '2024-06-24 16:44:06', NULL),
(308, 12, 293, 'Approved List', '-', '/admin/general_store/purchase_management/purchase_approved', 'admin_general_store_purchase_management_purchase_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-06-24 16:44:40', '2024-06-24 16:44:40', NULL),
(309, 6, 81, 'Inc & Exp Reports', 'রিপোর্ট', '#', 'inc_exp_reports', 'CircleIcon', 'Sidebar', 'Active', 1, 111, '2024-07-02 10:37:28', '2025-05-20 22:02:32', NULL),
(310, 1, 309, 'Code Income Report', 'কোড ইনকাম রিপোর্ট', '/admin/account_management/report_management/code_income_report', 'admin_account_management_report_management_code_income_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-02 10:38:20', '2024-07-02 10:38:20', NULL),
(311, 2, 309, 'Code Expense Report', 'কোড এক্সপেন্স রিপোর্ট', '/admin/account_management/report_management/code_expense_report', 'admin_account_management_report_management_code_expense_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-02 10:38:59', '2024-07-02 10:38:59', NULL),
(312, 3, 309, 'Code Income and Expense Report', 'কোড ইনকাম & এক্সপেন্স রিপোর্ট', '/admin/account_management/report_management/code_income_expense_report', 'admin_account_management_report_management_code_income_expense_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-02 10:39:39', '2024-07-02 10:39:39', NULL),
(313, 2, 85, 'Academic Operation', 'একাডেমিক অপারেশন', '#', 'academic_operation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:35:01', '2024-07-14 13:35:01', NULL),
(314, 3, 85, 'Exam Setup', 'পরীক্ষা সেটআপ', '#', 'exam_setup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:35:32', '2024-07-14 13:35:32', NULL),
(315, 4, 85, 'Exam Operation', 'পরীক্ষা অপারেশন', '#', 'exam_operation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:36:12', '2024-07-14 13:36:12', NULL),
(316, 1, 86, 'Class', 'ক্লাস', '/admin/academic_management/academic_setup/academic_class', 'admin_academic_management_academic_setup_academic_class', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:36:52', '2024-07-14 13:36:52', NULL),
(317, 2, 86, 'Form', 'শাখা', '/admin/academic_management/academic_setup/academic_form', 'admin_academic_management_academic_setup_academic_form', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:37:38', '2024-07-14 13:37:38', NULL),
(318, 3, 86, 'Group', 'গ্রুপ', '/admin/academic_management/academic_setup/academic_group', 'admin_academic_management_academic_setup_academic_group', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:38:27', '2024-07-14 13:38:27', NULL),
(319, 4, 86, 'Subject Group', 'সাবজেক্ট গ্রুপ', '/admin/academic_management/academic_setup/academic_subject_group', 'admin_academic_management_academic_setup_academic_subject_group', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:39:11', '2024-07-14 13:39:11', NULL),
(320, 5, 86, 'Subject', 'সাবজেক্ট', '/admin/academic_management/academic_setup/academic_subject/create', 'admin_academic_management_academic_setup_academic_subject_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:39:50', '2024-07-14 13:39:50', NULL),
(321, 6, 86, 'Subject List', 'সাবজেক্ট লিস্ট', '/admin/academic_management/academic_setup/academic_subject', 'admin_academic_management_academic_setup_academic_subject', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:40:34', '2024-07-14 13:40:34', NULL),
(322, 1, 313, 'Assign Subject', 'এসাইন সাবজেক্ট', '/admin/academic_management/academic_operation/assign_subject/create', 'admin_academic_management_academic_operation_assign_subject_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:41:32', '2024-07-14 13:41:32', NULL),
(323, 20, 313, 'Assign Subject List', 'এসাইন সাবজেক্ট লিস্ট', '/admin/academic_management/academic_operation/assign_subject', 'admin_academic_management_academic_operation_assign_subject', 'CircleIcon', 'Sidebar', 'Inactive', 1, 106, '2024-07-14 13:42:09', '2024-09-28 13:22:17', NULL),
(324, 1, 314, 'Term', 'মেয়াদ', '/admin/academic_management/exam_setup/exam_term', 'admin_academic_management_exam_setup_exam_term', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:43:01', '2024-07-14 13:43:01', NULL),
(325, 2, 314, 'Exam Type', 'পরীক্ষার ধরন', '/admin/academic_management/exam_setup/exam_type', 'admin_academic_management_exam_setup_exam_type', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:43:44', '2024-07-14 13:43:44', NULL),
(326, 1, 315, 'Subject Mark Assign', 'সাবজেক্ট মার্ক এসাইন', '/admin/academic_management/exam_operation/subject_mark_assign/create', 'admin_academic_management_exam_operation_subject_mark_assign_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:44:45', '2024-07-14 13:44:45', NULL),
(327, 2, 315, 'Subject Mark Assign List', 'সাবজেক্ট মার্ক এসাইন লিস্ট', '/admin/academic_management/exam_operation/subject_mark_assign', 'admin_academic_management_exam_operation_subject_mark_assign', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-14 13:45:28', '2024-07-14 13:45:28', NULL),
(328, 6, 85, 'Exam Reports', 'পরীক্ষা রিপোর্টস', '#', 'exam_reports', 'CircleIcon', 'Sidebar', 'Active', 1, 460, '2024-07-28 13:04:26', '2025-01-02 21:46:53', NULL),
(329, 1, 328, 'Cadet Wise Report', 'ক্যাডেট Wise  রিপোর্ট', '/admin/academic_management/exam_reports/cadet_wise_report', 'admin_academic_management_exam_reports_cadet_wise_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-28 13:05:43', '2024-07-28 13:05:43', NULL),
(330, 2, 328, 'Subject Wise Report', 'সাবজেক্ট Wise  রিপোর্ট', '/admin/academic_management/exam_reports/subject_wise_report', 'admin_academic_management_exam_reports_subject_wise_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-28 13:06:27', '2024-07-28 13:06:27', NULL),
(331, 3, 315, 'Exam Create', 'এক্সাম', '/admin/academic_management/exam_operation/exam/create', 'admin_academic_management_exam_operation_exam_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-07-28 13:08:24', '2025-04-24 15:10:36', NULL),
(332, 4, 315, 'Exam List', 'এক্সাম লিস্ট', '/admin/academic_management/exam_operation/exam', 'admin_academic_management_exam_operation_exam', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-28 13:09:02', '2024-07-28 13:09:02', NULL),
(333, 5, 315, 'Exam Mark Entry', 'এক্সাম মার্ক এন্ট্রি', '/admin/academic_management/exam_operation/exam_mark_entry/create', 'admin_academic_management_exam_operation_exam_mark_entry_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-28 13:09:38', '2024-07-28 13:09:38', NULL),
(334, 3, 314, 'Grade Manage', 'গ্রেড ম্যানেজ', '/admin/academic_management/exam_setup/grade_manage', 'admin_academic_management_exam_setup_grade_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-28 13:11:00', '2024-07-28 13:11:00', NULL),
(335, 3, 313, 'Assign Form Master', 'এসাইন ফর্ম মাস্টার', '/admin/academic_management/academic_operation/assign_form_master/create', 'admin_academic_management_academic_operation_assign_form_master_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-07-30 12:41:32', '2024-08-11 14:50:13', NULL),
(336, 20, 313, 'Assign Form Master', 'এসাইন ফর্ম মাস্টার', '/admin/academic_management/academic_operation/assign_form_master/creat', 'admin_academic_management_academic_operation_assign_form_master_creat', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-07-30 12:45:12', '2024-08-11 14:51:35', NULL),
(337, 11, NULL, 'House Management', 'হাউস', '#', 'house_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-07-31 13:26:30', '2024-11-04 08:29:57', NULL),
(338, 1, 337, 'House Settings', 'হাউস সেটিংস', '#', 'house_settings', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-31 13:27:04', '2024-07-31 13:27:04', NULL),
(339, 1, 338, 'House List', 'বাড়ির তালিকা', '/admin/house-management/settings/house_manage', 'admin_house_management_settings_house_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-31 13:28:21', '2024-07-31 13:28:21', NULL),
(340, 2, 338, 'House Add', 'হাউস অ্যাড', '/admin/house-management/settings/house_manage/create', 'admin_house_management_settings_house_manage_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-07-31 13:28:53', '2024-07-31 13:28:53', NULL),
(341, 3, 338, 'Floor Manage', 'ফ্লোর ম্যানেজ', '/admin/house-management/settings/floor_manage', 'admin_house_management_settings_floor_manage', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-07-31 13:30:00', '2025-01-13 21:41:31', NULL),
(342, 4, 338, 'Room Manage', 'রুম ম্যানেজ', '/admin/house-management/settings/room_manage', 'admin_house_management_settings_room_manage', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-07-31 13:30:27', '2025-01-13 21:42:01', NULL),
(343, 5, 338, 'Bed Manage', 'বেড ম্যানেজ', '/admin/house-management/settings/bed_manage', 'admin_house_management_settings_bed_manage', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-07-31 13:30:53', '2025-01-13 21:42:28', NULL),
(344, 13, 293, 'Purchase Received', '--', '/admin/general_store/purchase_management/purchase_received/create', 'admin_general_store_purchase_management_purchase_received_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 11:35:30', '2024-08-01 11:35:30', NULL),
(345, 14, 293, 'Received List', '--', '/admin/general_store/purchase_management/purchase_received', 'admin_general_store_purchase_management_purchase_received', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 11:36:12', '2024-08-01 11:36:12', NULL),
(346, 10, NULL, 'Mess Management', '---', '#', 'mess_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-01 16:19:28', '2024-12-08 23:36:22', NULL),
(347, 1, 346, 'General Settings', '---', '#', 'general_settings', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:20:54', '2024-08-01 16:20:54', NULL),
(348, 2, 346, 'Purchase Management', '---', '#', 'purchase_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:22:17', '2024-08-01 16:22:17', NULL),
(349, 1, 347, 'Warehouse Manage', '---', '/admin/mess/general_settings/warehouse', 'admin_mess_general_settings_warehouse', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:23:02', '2024-08-01 16:23:02', NULL),
(350, 2, 347, 'Brand Manage', '---', '/admin/mess/general_settings/brand', 'admin_mess_general_settings_brand', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:23:39', '2024-08-01 16:23:39', NULL),
(351, 3, 347, 'Group Manage', '---', '/admin/mess/general_settings/group', 'admin_mess_general_settings_group', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:24:12', '2024-08-01 16:24:12', NULL),
(352, 4, 347, 'SubGroup Manage', '---', '/admin/mess/general_settings/subgroup', 'admin_mess_general_settings_subgroup', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:24:46', '2024-08-01 16:24:46', NULL),
(353, 5, 347, 'Item Manage', '---', '/admin/mess/general_settings/item/create', 'admin_mess_general_settings_item_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:25:58', '2024-08-01 16:25:58', NULL),
(354, 6, 347, 'Create Opening Stock', '---', '/admin/mess/general_settings/opening_stock/create', 'admin_mess_general_settings_opening_stock_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:26:47', '2024-08-01 16:26:47', NULL),
(355, 7, 347, 'Opening Stock List', '---', '/admin/mess/general_settings/opening_stock', 'admin_mess_general_settings_opening_stock', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:27:31', '2024-08-01 16:27:31', NULL),
(356, 1, 348, 'Create Vendor', '---', '/admin/mess/purchase_management/vendor/create', 'admin_mess_purchase_management_vendor_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:29:33', '2024-08-01 16:29:33', NULL),
(357, 2, 348, 'Vendor List', '---', '/admin/mess/purchase_management/vendor', 'admin_mess_purchase_management_vendor', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:30:06', '2024-08-01 16:30:06', NULL),
(358, 3, 348, 'Create Demand', '---', '/admin/mess/purchase_management/demand/create', 'admin_mess_purchase_management_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:30:55', '2024-08-01 16:30:55', NULL),
(359, 4, 348, 'Demand List', '---', '/admin/mess/purchase_management/demand', 'admin_mess_purchase_management_demand', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-08-01 16:31:40', '2025-01-23 15:53:36', NULL),
(360, 5, 348, 'Demand Approved', '---', '/admin/mess/purchase_management/demand_approved/create', 'admin_mess_purchase_management_demand_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:32:28', '2024-08-01 16:32:28', NULL),
(361, 6, 348, 'Demand Approved List', '---', '/admin/mess/purchase_management/demand_approved', 'admin_mess_purchase_management_demand_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:33:18', '2024-08-01 16:33:18', NULL),
(362, 7, 348, 'Direct Purchase', '---', '/admin/mess/purchase_management/purchase/create', 'admin_mess_purchase_management_purchase_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:34:03', '2024-08-01 16:34:03', NULL),
(363, 8, 348, 'Purchase list', '---', '/admin/mess/purchase_management/purchase', 'admin_mess_purchase_management_purchase', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:34:41', '2024-08-01 16:34:41', NULL),
(364, 9, 348, 'Purchase Approved', '---', '/admin/mess/purchase_management/purchase_approved/create', 'admin_mess_purchase_management_purchase_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:35:41', '2024-08-01 16:35:41', NULL),
(365, 10, 348, 'Purchase Approved List', '---', '/admin/mess/purchase_management/purchase_approved', 'admin_mess_purchase_management_purchase_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:36:19', '2024-08-01 16:36:19', NULL),
(366, 11, 348, 'Purchase Received', '---', '/admin/mess/purchase_management/purchase_received/create', 'admin_mess_purchase_management_purchase_received_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:37:06', '2024-08-01 16:37:06', NULL),
(367, 12, 348, 'Received List', '---', '/admin/mess/purchase_management/purchase_received', 'admin_mess_purchase_management_purchase_received', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-01 16:37:48', '2024-08-01 16:37:48', NULL),
(368, 3, 337, 'Event Management', 'Event Management', '#', 'event_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-07 13:41:08', '2024-08-18 16:01:09', NULL),
(369, 3, 337, 'Weightage Management', 'Weightage Management', '#', 'weightage_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-07 13:41:46', '2025-04-13 20:52:49', NULL),
(370, 4, 337, 'Event Competition Position', 'Event Competition Position', '#', 'event_competition_position', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:42:13', '2024-08-07 13:42:13', NULL),
(371, 1, 368, 'Event Category', 'Event Category', '/admin/house-management/event/subject', 'admin_house_management_event_subject', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:43:10', '2024-08-07 13:43:10', NULL),
(372, 2, 368, 'Event', 'Event create', '/admin/house-management/event', 'admin_house_management_event', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-07 13:43:42', '2024-08-07 13:44:40', NULL),
(373, 3, 368, 'Multi Event', 'Multi Event', '/admin/house-management/event/sub-events', 'admin_house_management_event_sub_events', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-07 13:45:24', '2024-08-12 10:38:02', NULL),
(374, 1, 369, 'Event Weightage', 'Event Weightage', '/admin/house_management/weight_age_management/event_weight_age/create', 'admin_house_management_weight_age_management_event_weight_age_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-07 13:47:01', '2025-04-13 20:53:51', NULL),
(375, 2, 369, 'Event Weightage List', 'Event Weightage List', '/admin/house_management/weight_age_management/event_weight_age', 'admin_house_management_weight_age_management_event_weight_age', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-08-07 13:47:35', '2025-05-15 18:22:20', NULL),
(376, 3, 369, 'Multi Event Weightage', 'Multi Event Weightage', '/admin/house_management/weight_age_management/sub_event_weight_age/create', 'admin_house_management_weight_age_management_sub_event_weight_age_create', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-08-07 13:48:12', '2025-05-15 18:22:36', NULL),
(377, 4, 369, 'Multi Event Weightage List', 'Multi Event Weightage List', '/admin/house_management/weight_age_management/sub_event_weight_age', 'admin_house_management_weight_age_management_sub_event_weight_age', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-07 13:48:50', '2025-04-13 20:54:58', NULL),
(378, 1, 370, 'Event Position', 'Event Position', '/admin/house_management/event_competition_position/event_position/create', 'admin_house_management_event_competition_position_event_position_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:49:57', '2024-08-07 13:49:57', NULL),
(379, 3, 293, 'Create Demand', '---', '/admin/general_store/purchase_management/demand/create', 'admin_general_store_purchase_management_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:53:40', '2024-08-07 13:53:40', NULL),
(380, 4, 293, 'Demand List', '---', '/admin/general_store/purchase_management/demand', 'admin_general_store_purchase_management_demand', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:54:14', '2024-08-07 13:54:14', NULL),
(381, 5, 293, 'Demand Approved', '---', '/admin/general_store/purchase_management/demand_approved/create', 'admin_general_store_purchase_management_demand_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:55:02', '2024-08-07 13:55:02', NULL),
(382, 6, 293, 'Demand Approved List', '---', '/admin/general_store/purchase_management/demand_approved', 'admin_general_store_purchase_management_demand_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-07 13:55:41', '2024-08-07 13:55:41', NULL),
(383, 6, 337, 'Event Report', 'Event Report', '#', 'event_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-11 14:47:00', '2024-08-11 14:47:00', NULL),
(384, 1, 383, 'Event Evaluation', 'Event Evaluation', '/admin/house_management/event_report/event_evaluation', 'admin_house_management_event_report_event_evaluation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-11 14:47:44', '2024-08-11 14:47:44', NULL),
(385, 4, 313, 'Assign Form Master List', 'এসাইন ফর্ম মাস্টার লিস্ট', '/admin/academic_management/academic_operation/assign_form_master', 'admin_academic_management_academic_operation_assign_form_master', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-11 14:52:40', '2024-08-11 14:52:40', NULL),
(386, 7, 348, 'Purchase From Demand', '---', '/admin/mess/purchase_management/purchase_from_demand/create', 'admin_mess_purchase_management_purchase_from_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-14 05:31:20', '2024-08-14 05:31:20', NULL),
(387, 7, 85, 'Cadet Information', 'Cadet Information', '#', 'cadet_information', 'CircleIcon', 'Sidebar', 'Active', 1, 460, '2024-08-18 10:26:19', '2025-01-02 21:46:41', NULL),
(388, 3, 387, 'Cadet Bulk Edit', 'Cadet Bulk Edit', '/admin/academic_management/cadet_information/cadet_bulk_correction', 'admin_academic_management_cadet_information_cadet_bulk_correction', 'CircleIcon', 'Sidebar', 'Inactive', 1, 99, '2024-08-18 10:29:02', '2024-09-29 11:46:50', NULL),
(389, 2, 337, 'House Management', 'House Management', '#', 'house_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-18 16:01:43', '2024-08-18 16:01:43', NULL),
(390, 1, 389, 'House Assign', 'House Assign', '/admin/house-management/house_assign/create', 'admin_house_management_house_assign_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-18 16:02:22', '2024-08-18 16:02:22', NULL),
(391, 2, 389, 'House Assign List', 'House Assign List', '/admin/house-management/house_assign', 'admin_house_management_house_assign', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-18 16:02:51', '2024-08-18 16:02:51', NULL),
(392, 5, 337, 'Event Participation', 'Event Participation', '#', 'event_participation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-18 16:13:16', '2024-08-18 16:13:16', NULL),
(393, 1, 392, 'Team/Participant Create/Declare', 'Team/Participant Create/Declare', '/admin/house_management/event_participation_management/team_participation/create', 'admin_house_management_event_participation_management_team_participation_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-18 16:14:01', '2024-08-19 08:32:17', NULL),
(394, 2, 392, 'Team/Participant List', 'Team/Participant List', '/admin/house_management/event_participation_management/team_participation', 'admin_house_management_event_participation_management_team_participation', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-18 16:14:30', '2024-08-19 08:32:32', NULL),
(395, 3, 392, 'Participant Cadet Assign', 'Participant Cadet Assign', '/admin/house_management/event_participation_management/participation_cadet_assign/create', 'admin_house_management_event_participation_management_participation_cadet_assign_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-18 16:15:05', '2024-08-19 10:09:43', NULL),
(396, 5, 392, 'Add Credentials', 'Add Credentials', '/admin/house_management/event_participation_management/add_credentials/create', 'admin_house_management_event_participation_management_add_credentials_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-18 16:15:35', '2024-08-18 16:15:35', NULL),
(397, 4, 392, 'Participant Cadet Assign List', 'Participant Cadet Assign List', '/admin/house_management/event_participation_management/participation_cadet_assign', 'admin_house_management_event_participation_management_participation_cadet_assign', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-19 13:32:10', '2024-08-19 13:32:10', NULL),
(398, 1, 387, 'New Cadet', 'New Cadet', '/admin/academic_management/cadet_information/cadet/create', 'admin_academic_management_cadet_information_cadet_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-22 18:12:00', '2024-08-22 18:12:00', NULL),
(399, 2, 387, 'Cadet List', 'Cadet List', '/admin/academic_management/cadet_information/cadet', 'admin_academic_management_cadet_information_cadet', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-22 18:12:32', '2024-08-22 18:12:32', NULL),
(400, 4, 368, 'Academic Event', 'Academic Event', '/admin/house-management/event/academic-events', 'admin_house_management_event_academic_events', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-08-29 10:06:17', '2024-08-29 10:06:17', NULL),
(401, 2, 124, 'Category Approval', 'ক্যাটাগরি অনুমোদন', '/admin/admission_management/operation/quota_approval', 'admin_admission_management_operation_quota_approval', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-08-29 14:44:11', '2024-11-03 08:11:07', NULL),
(402, 5, 203, 'Assign VM Candidate', 'Assign VM Candidate', '/admin/admission_management/vm_operation/assign_vm_candidate', 'admin_admission_management_vm_operation_assign_vm_candidate', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-09-01 10:01:00', '2024-09-01 10:03:14', NULL),
(403, 11, 203, 'Medical Refer List', 'Medical Refer List', '/admin/admission_management/vm_operation/medical_refer_list', 'admin_admission_management_vm_operation_medical_refer_list', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-04 14:39:00', '2024-09-04 14:39:00', NULL),
(404, 0, 28, 'Vacancy List', '---', '/admin/hr_management/hr_settings/vacancy', 'admin_hr_management_hr_settings_vacancy', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-09-16 13:45:12', '2024-09-16 14:06:49', NULL),
(405, 3, 346, 'Menu Management', 'Menu Management', '#', 'menu_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 10:51:35', '2024-09-19 10:51:35', NULL),
(406, 3, 346, 'Menu Item Manage', 'Menu Item Manage', '/admin/mess/menu-management/menu-item-manage', 'admin_mess_menu_management_menu_item_manage', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-09-19 10:57:19', '2024-09-19 10:59:58', NULL),
(407, 1, 405, 'Menu Category', 'Menu Category', '/admin/mess/menu-management/menu-category', 'admin_mess_menu_management_menu_category', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 11:00:59', '2024-09-19 11:00:59', NULL),
(408, 2, 405, 'Menu Name Manage', 'Menu Name Manage', '/admin/mess/menu-management/menu-name-manage', 'admin_mess_menu_management_menu_name_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 11:01:24', '2024-09-19 11:01:24', NULL),
(409, 3, 405, 'Menu Item Manage', 'Menu Item Manage', '/admin/mess/menu-management/menu-item-manage', 'admin_mess_menu_management_menu_item_manage', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 11:01:48', '2024-09-19 11:01:48', NULL),
(410, 6, 405, 'Food Menu Schedule', 'Food Menu Schedule', '/admin/mess/menu-management/food_menu_schedule', 'admin_mess_menu_management_food_menu_schedule', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-09-19 14:43:52', '2024-10-08 10:51:29', NULL),
(411, 3, 291, 'Stock Out Management', '---', '#', 'stock_out_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:18:05', '2024-09-19 15:18:05', NULL),
(412, 4, 291, 'Report Management', '---', '#', 'report_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:18:56', '2024-09-19 15:18:56', NULL),
(413, 1, 411, 'Dept. Demand Create', '---', '/admin/general_store/stock_out_management/demand/create', 'admin_general_store_stock_out_management_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-09-19 15:19:50', '2025-01-13 23:32:11', NULL),
(414, 2, 411, 'Dept. Demand List', '---', '/admin/general_store/stock_out_management/demand', 'admin_general_store_stock_out_management_demand', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:20:37', '2024-09-19 15:20:37', NULL),
(415, 3, 411, 'Demand Approved', '---', '/admin/general_store/stock_out_management/demand_approved/create', 'admin_general_store_stock_out_management_demand_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:21:23', '2024-09-19 15:21:23', NULL),
(416, 4, 411, 'Demand Approved List', '---', '/admin/general_store/stock_out_management/demand_approved', 'admin_general_store_stock_out_management_demand_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:22:15', '2024-09-19 15:22:15', NULL);
INSERT INTO `menus` (`id`, `order_no`, `parent_id`, `en`, `bn`, `path`, `slug`, `icon`, `location`, `menu_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(417, 5, 411, 'Create Stock Out', '---', '/admin/general_store/stock_out_management/stockout/create', 'admin_general_store_stock_out_management_stockout_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:23:09', '2024-09-19 15:23:09', NULL),
(418, 6, 411, 'Stock Out List', '---', '/admin/general_store/stock_out_management/stockout', 'admin_general_store_stock_out_management_stockout', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-19 15:23:56', '2024-09-19 15:23:56', NULL),
(419, 1, 412, 'Ledger Report', '---', '/admin/general_store/report_management/stock_details_report', 'admin_general_store_report_management_stock_details_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-09-19 15:25:23', '2025-01-13 19:02:27', NULL),
(420, 16, 122, 'Emergency Notice', '---', '/admin/admission_management/settings/emergency_notice', 'admin_admission_management_settings_emergency_notice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-28 03:36:07', '2024-09-28 03:36:07', NULL),
(421, 4, 313, 'Remarks', 'Remarks', '/admin/academic_management/academic_operation/academic_remarks', 'admin_academic_management_academic_operation_academic_remarks', 'CircleIcon', 'Sidebar', 'Inactive', 106, 495, '2024-09-28 13:22:41', '2024-10-06 15:00:11', NULL),
(422, 6, 315, 'GK Mark Entry', 'GK Mark Entry', '/admin/academic_management/exam_operation/gk_mark_entry/create', 'admin_academic_management_exam_operation_gk_mark_entry_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-09-29 09:03:20', '2024-09-29 09:03:20', NULL),
(423, 7, 315, 'GK Mark Entry List', 'GK Mark Entry List', '/admin/academic_management/exam_operation/gk_mark_entry', 'admin_academic_management_exam_operation_gk_mark_entry', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2024-09-29 09:03:49', '2024-09-29 09:52:45', NULL),
(424, 5, 85, 'Exam Remarks', 'পরীক্ষার  মন্তব্য', '#', 'exam_remarks', 'CircleIcon', 'Sidebar', 'Active', 1, 460, '2024-09-29 07:39:40', '2025-01-02 21:46:10', NULL),
(425, 1, 424, 'Create Remarks', '---', '/admin/academic_management/exam_remarks/remarks/create', 'admin_academic_management_exam_remarks_remarks_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-09-29 07:41:39', '2024-09-29 08:02:26', NULL),
(426, 2, 424, 'Remarks List', '---', '/admin/academic_management/exam_remarks/remarks', 'admin_academic_management_exam_remarks_remarks', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-09-29 07:42:15', '2024-09-30 07:26:38', NULL),
(427, 3, 328, 'Report Card', 'Report Card', '/admin/academic_management/exam_reports/cadet_details_report', 'admin_academic_management_exam_reports_cadet_details_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-01 16:00:28', '2024-10-01 16:00:28', NULL),
(428, 4, 405, 'Assign Food Menu', 'Assign Food Menu', '/admin/mess/menu-management/assign_food_menu/create', 'admin_mess_menu_management_assign_food_menu_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-10-06 13:34:59', '2024-10-20 15:10:42', NULL),
(429, 5, 405, 'Assign Food Menu List', 'Assign Food Menu List', '/admin/mess/menu-management/assign_food_menu', 'admin_mess_menu_management_assign_food_menu', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 10:52:06', '2024-10-08 10:52:06', NULL),
(430, 7, 405, 'Menu Item Schedule', 'Menu Item Schedule', '/admin/mess/menu-management/menu_item_schedule/create', 'admin_mess_menu_management_menu_item_schedule_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 10:52:41', '2024-10-08 10:52:41', NULL),
(431, 8, 405, 'Item Schedule List', 'Item Schedule List', '/admin/mess/menu-management/menu_item_schedule', 'admin_mess_menu_management_menu_item_schedule', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 10:53:17', '2024-10-08 10:53:17', NULL),
(432, 9, 405, 'Daily Menu Prepare', 'Daily Menu Prepare', '/admin/mess/menu-management/daily_menu_prepare/create', 'admin_mess_menu_management_daily_menu_prepare_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 10:53:52', '2024-10-08 10:53:52', NULL),
(433, 10, 405, 'Daily Menu Prepare List', 'Daily Menu Prepare List', '/admin/mess/menu-management/daily_menu_prepare', 'admin_mess_menu_management_daily_menu_prepare', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 10:54:20', '2024-10-08 10:54:20', NULL),
(434, 7, 411, 'Create Item Condemnation', '---', '/admin/general_store/stock_out_management/condemnation/create', 'admin_general_store_stock_out_management_condemnation_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 13:01:37', '2024-10-08 13:01:37', NULL),
(435, 8, 411, 'Item Condemnation List', '---', '/admin/general_store/stock_out_management/condemnation', 'admin_general_store_stock_out_management_condemnation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-08 13:02:21', '2024-10-08 13:02:21', NULL),
(436, 5, 347, 'Item List', 'Item List', '/admin/mess/general_settings/item', 'admin_mess_general_settings_item', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-14 13:12:49', '2024-10-14 13:12:49', NULL),
(437, 4, 346, 'Stock Out Management', 'Stock Out Management', '#', 'stock_out_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-14 13:13:41', '2024-10-14 13:13:41', NULL),
(438, 1, 437, 'Stock Out by Cadet', 'Stock Out by Cadet', '/admin/mess/stock_out_management/stock_out_by_student/create', 'admin_mess_stock_out_management_stock_out_by_student_create', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2024-10-14 13:14:19', '2025-05-14 15:34:20', NULL),
(439, 2, 437, 'Stock Out List', 'Stock Out List', '/admin/mess/stock_out_management/stock_out_by_student', 'admin_mess_stock_out_management_stock_out_by_student', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-14 13:14:50', '2024-10-14 13:14:50', NULL),
(440, 3, 437, 'Product Condemnation', 'Product Condemnation', '/admin/mess/stock_out_management/product_condemnation/create', 'admin_mess_stock_out_management_product_condemnation_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-16 09:26:27', '2024-10-16 09:26:27', NULL),
(441, 4, 437, 'Condemnation List', 'Condemnation List', '/admin/mess/stock_out_management/product_condemnation', 'admin_mess_stock_out_management_product_condemnation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-16 09:29:26', '2024-10-16 09:29:26', NULL),
(442, 5, 346, 'Report Management', 'Report Management', '#', 'report_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-10-20 11:13:06', '2024-10-20 11:13:06', NULL),
(443, 1, 442, 'Ledger Report', '----', '/admin/mess_management_system/report_management/stock_details_report', 'admin_mess_management_system_report_management_stock_details_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2024-10-20 11:13:43', '2025-01-13 19:24:58', NULL),
(444, 1, 121, 'Admission Dashboard', 'Admission Dashboard', '/admin/admission-dashboard', 'admin_admission_dashboard', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-11-01 11:44:28', '2024-11-01 11:44:28', NULL),
(445, 4, 124, 'Import Exam Mark', '----', '/admin/admission_management/operation/import_exam_mark/create', 'admin_admission_management_operation_import_exam_mark_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-11-17 23:54:05', '2024-11-17 23:54:05', NULL),
(446, 4, 124, 'Import Exam Mark List', '----', '/admin/admission_management/operation/import_exam_mark', 'admin_admission_management_operation_import_exam_mark', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-11-17 23:54:44', '2024-11-17 23:54:44', NULL),
(447, 4, 124, 'Import Selected Candidate', '----', '/admin/admission_management/operation/import_selected_candidate/create', 'admin_admission_management_operation_import_selected_candidate_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-11-17 23:55:30', '2024-11-17 23:55:30', NULL),
(448, 4, 124, 'Selected Candidate List', '----', '/admin/admission_management/operation/import_selected_candidate', 'admin_admission_management_operation_import_selected_candidate', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-11-17 23:56:27', '2024-11-17 23:56:27', NULL),
(449, 4, 328, 'Exam Combine Report', 'Exam Combine Report', '/admin/academic_management/exam_reports/exam_combine_report', 'admin_academic_management_exam_reports_exam_combine_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2024-12-05 16:59:49', '2024-12-05 16:59:49', NULL),
(450, 4, 309, 'Statement Report', 'Statement Report', '/admin/account_management/report_management/statement_report', 'admin_account_management_report_management_statement_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-01 16:59:17', '2025-01-01 16:59:17', NULL),
(451, 5, 369, 'Academic Weightage', 'Academic Weightage', '/admin/house_management/weight_age_management/academic_event_weight_age/create', 'admin_house_management_weight_age_management_academic_event_weight_age_create', 'CircleIcon', 'Sidebar', 'Active', 1, 624, '2025-01-05 19:00:34', '2025-05-15 18:22:56', NULL),
(452, 6, 338, 'Credentials Feature', 'Credentials Feature', '/admin/house-management/settings/credentials_feature', 'admin_house_management_settings_credentials_feature', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-06 22:08:29', '2025-01-06 22:08:29', NULL),
(453, 2, 293, 'Vendor Item', '----', '/admin/general_store/purchase_management/vendor_item/create', 'admin_general_store_purchase_management_vendor_item_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-08 22:05:57', '2025-01-08 22:05:57', NULL),
(454, 2, 293, 'Vendor Item List', '----', '/admin/general_store/purchase_management/vendor_item', 'admin_general_store_purchase_management_vendor_item', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-08 22:06:36', '2025-01-08 22:06:36', NULL),
(455, 2, 293, 'Vendor Item List', '----', '/admin/general_store/purchase_management/vendor_item', 'admin_general_store_purchase_management_vendor_item', 'CircleIcon', 'Sidebar', 'Inactive', 1, NULL, '2025-01-08 22:10:37', '2025-01-08 22:10:37', NULL),
(456, 7, 293, 'Purchase From Demand', '----', '/admin/general_store/purchase_management/purchase_from_demand/create', 'admin_general_store_purchase_management_purchase_from_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-08 22:12:17', '2025-01-08 22:12:17', NULL),
(457, 2, 348, 'Vendor Item', '----', '/admin/mess/purchase_management/vendor_item/create', 'admin_mess_purchase_management_vendor_item_create', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2025-01-09 17:10:07', '2025-05-27 16:36:59', NULL),
(458, 2, 348, 'Vendor Item List', '----', '/admin/mess/purchase_management/vendor_item', 'admin_mess_purchase_management_vendor_item', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2025-01-09 17:10:31', '2025-05-27 16:37:15', NULL),
(459, 5, 102, 'Vendor Payment', 'Vendor Payment', '/admin/account_management/income_expense/vendor_payment/create', 'admin_account_management_income_expense_vendor_payment_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-12 20:47:10', '2025-01-12 20:47:10', NULL),
(460, 6, 102, 'Vendor Payment List', 'Vendor Payment List', '/admin/account_management/income_expense/vendor_payment', 'admin_account_management_income_expense_vendor_payment', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-12 20:47:40', '2025-01-12 20:47:40', NULL),
(461, 2, 292, 'Unit Manage', '---', '/admin/general_store/general_settings/unit', 'admin_general_store_general_settings_unit', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 18:46:53', '2025-01-13 18:46:53', NULL),
(462, 2, 347, 'Unit Manage', '---', '/admin/mess/general_settings/unit', 'admin_mess_general_settings_unit', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 18:48:14', '2025-01-13 18:48:14', NULL),
(463, 2, 412, 'Stock In Report', '---', '/admin/general_store/report_management/stock_in_report', 'admin_general_store_report_management_stock_in_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 19:03:15', '2025-01-13 19:03:15', NULL),
(464, 3, 412, 'Stock Out Report', '---', '/admin/general_store/report_management/stock_out_report', 'admin_general_store_report_management_stock_out_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 19:04:03', '2025-01-13 19:04:03', NULL),
(465, 2, 442, 'Stock In Report', '---', '/admin/mess_management_system/report_management/stock_in_report', 'admin_mess_management_system_report_management_stock_in_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 19:06:31', '2025-01-13 19:06:31', NULL),
(466, 3, 442, 'Stock Out Report', '---', '/admin/mess_management_system/report_management/stock_out_report', 'admin_mess_management_system_report_management_stock_out_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 19:07:04', '2025-01-13 19:07:04', NULL),
(467, 5, 309, 'Vendor Expenses', 'Vendor Expenses', '/admin/account_management/report_management/vendor_expenses_report', 'admin_account_management_report_management_vendor_expenses_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-13 20:19:44', '2025-01-13 20:19:44', NULL),
(468, 2, 269, 'Stock In Report', '---', '/admin/canteen_management_system/canteen_report_management/canteen_stock_in_report', 'admin_canteen_management_system_canteen_report_management_canteen_stock_in_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-14 17:28:31', '2025-01-14 17:28:31', NULL),
(469, 3, 269, 'Stock Out Report', '---', '/admin/canteen_management_system/canteen_report_management/canteen_stock_out_report', 'admin_canteen_management_system_canteen_report_management_canteen_stock_out_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-14 17:29:07', '2025-01-14 17:29:07', NULL),
(470, 3, 389, 'Assign House Master', 'Assign House Master', '/admin/house-management/assign_house_master/create', 'admin_house_management_assign_house_master_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-20 17:03:33', '2025-01-20 17:03:33', NULL),
(471, 4, 389, 'House Master List', 'House Master List', '/admin/house-management/assign_house_master', 'admin_house_management_assign_house_master', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-20 17:03:58', '2025-01-20 17:03:58', NULL),
(472, 6, 392, 'Credential List', 'Credential List', '/admin/house_management/event_participation_management/add_credentials', 'admin_house_management_event_participation_management_add_credentials', 'CircleIcon', 'Sidebar', 'Active', 624, NULL, '2025-01-27 17:05:48', '2025-01-27 17:05:48', NULL),
(473, 4, 269, 'Cadet History Report', 'Cadet History Report', '/admin/canteen_management_system/canteen_report_management/canteen_cadet_history_report', 'admin_canteen_management_system_canteen_report_management_canteen_cadet_history_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-29 19:23:44', '2025-01-29 19:23:44', NULL),
(474, 5, 269, 'Profit Loss Report', 'Profit Loss Report', '/admin/canteen_management_system/canteen_report_management/profit_loss_report', 'admin_canteen_management_system_canteen_report_management_profit_loss_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-01-30 16:13:34', '2025-01-30 16:13:34', NULL),
(475, 6, 154, 'Add Drug', 'Add Drug', '/admin/healthcare-management/inventory/item/create', 'admin_healthcare_management_inventory_item_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2025-01-30 19:30:59', '2025-06-02 21:06:14', NULL),
(476, 11, 227, 'Purchase Approved', 'ক্রয় অনুমোদন', '/admin/healthcare_management/purchase_management/purchase_approved/create', 'admin_healthcare_management_purchase_management_purchase_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2025-01-30 23:20:03', '2025-02-26 21:30:52', NULL),
(477, 12, 227, 'Approved List', 'ক্রয় অনুমোদন  তালিকা', '/admin/healthcare_management/purchase_management/purchase_approved', 'admin_healthcare_management_purchase_management_purchase_approved', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2025-01-30 23:20:43', '2025-02-26 21:31:34', NULL),
(478, 3, 227, 'Vendor Demand', 'Vendor Demand', '/admin/healthcare-management/stock-purchase/vendor_demand/create', 'admin_healthcare_management_stock_purchase_vendor_demand_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-02-04 20:21:26', '2025-02-04 20:21:26', NULL),
(479, 4, 227, 'Vendor Demand List', 'Vendor Demand List', '/admin/healthcare-management/stock-purchase/vendor_demand', 'admin_healthcare_management_stock_purchase_vendor_demand', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-02-04 20:21:56', '2025-02-04 20:21:56', NULL),
(480, 7, 227, 'Demand Receive', 'Demand Receive', '/admin/healthcare-management/stock-purchase/demand_receive/create', 'admin_healthcare_management_stock_purchase_demand_receive_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-02-11 19:41:59', '2025-02-11 19:41:59', NULL),
(481, 8, 227, 'Demand Receive List', 'Demand Receive List', '/admin/healthcare-management/stock-purchase/demand_receive', 'admin_healthcare_management_stock_purchase_demand_receive', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-02-11 19:42:23', '2025-02-11 19:42:23', NULL),
(482, 3, 96, 'Class Wise Report', 'Class Wise Report', '/admin/account_management/report_management/class_wise_report', 'admin_account_management_report_management_class_wise_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-02-12 16:46:52', '2025-02-12 16:46:52', NULL),
(483, 4, 96, 'Head Wise Report', 'Head Wise Report', '/admin/account_management/report_management/head_wise_report', 'admin_account_management_report_management_head_wise_report', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2025-02-12 16:47:24', '2025-05-14 21:11:10', NULL),
(484, 8, 85, 'Class Promotion', 'Class Promotion', '#', 'class_promotion', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2025-02-13 20:33:14', '2025-05-17 21:47:31', NULL),
(485, 1, 484, 'Class Promotion', 'Class Promotion', '/admin/academic_management/promotion/class_promotion', 'admin_academic_management_promotion_class_promotion', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-02-13 20:33:50', '2025-02-13 20:33:50', NULL),
(486, 5, 227, 'Demand Approved', '---', '/admin/healthcare-management/stock-purchase/demand_approved/create', 'admin_healthcare_management_stock_purchase_demand_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-03-02 19:18:18', '2025-03-02 19:18:18', NULL),
(487, 6, 227, 'Approved List', '---', '/admin/healthcare-management/stock-purchase/demand_approved', 'admin_healthcare_management_stock_purchase_demand_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-03-02 19:19:28', '2025-03-02 19:19:28', NULL),
(488, 4, 387, 'Import Cadet', 'Import Cadet', '/admin/academic_management/cadet_information/import_cadet', 'admin_academic_management_cadet_information_import_cadet', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-03-11 19:52:10', '2025-03-11 19:52:10', NULL),
(489, 3, 27, 'Transfer Information', '----', '#', 'transfer_information', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 01:42:50', '2025-04-16 01:42:50', NULL),
(490, 1, 489, 'Create Transfer', '----', '/admin/hr_management/transfer_information/transfer/create', 'admin_hr_management_transfer_information_transfer_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 01:43:48', '2025-04-16 01:43:48', NULL),
(491, 2, 489, 'Transfer List', '----', '/admin/hr_management/transfer_information/transfer', 'admin_hr_management_transfer_information_transfer', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 01:44:14', '2025-04-16 01:44:14', NULL),
(492, 4, 27, 'Promotion Information', '----', '#', 'promotion_information', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 01:45:19', '2025-04-16 01:45:19', NULL),
(493, 1, 492, 'Create Promotion', '----', '/admin/hr_management/promotion_information/promotion/create', 'admin_hr_management_promotion_information_promotion_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 01:46:02', '2025-04-16 01:46:02', NULL),
(494, 2, 492, 'Promotion List', '----', '/admin/hr_management/promotion_information/promotion', 'admin_hr_management_promotion_information_promotion', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 01:46:31', '2025-04-16 01:46:31', NULL),
(495, 2, 236, 'Medical Report', 'Medical Report', '/admin/healthcare-management/reports/medical_report', 'admin_healthcare_management_reports_medical_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 22:22:44', '2025-04-16 22:22:44', NULL),
(496, 3, 236, 'Medicine Delivery Report', '----', '/admin/healthcare-management/reports/medicine_delivery_report', 'admin_healthcare_management_reports_medicine_delivery_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-16 23:42:41', '2025-04-16 23:42:41', NULL),
(497, 4, 236, 'Medical Leave Report', 'Medical Leave Report', '/admin/healthcare-management/reports/medical_leave_report', 'admin_healthcare_management_reports_medical_leave_report', 'CircleIcon', 'Sidebar', 'Active', 1, 107, '2025-04-17 21:21:37', '2025-05-06 20:41:08', NULL),
(498, 5, 236, 'Extra Diet Report', '----', '/admin/healthcare-management/reports/extra_diet_report', 'admin_healthcare_management_reports_extra_diet_report', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2025-04-17 21:22:06', '2025-04-17 21:22:28', NULL),
(499, 1, 236, 'Stock In Report', '----', '/admin/healthcare-management/reports/stock_in_report', 'admin_healthcare_management_reports_stock_in_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-20 19:34:17', '2025-04-20 19:34:17', NULL),
(500, 1, 236, 'Stock Out Report', '----', '/admin/healthcare-management/reports/stock_out_report', 'admin_healthcare_management_reports_stock_out_report', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-20 19:35:01', '2025-04-20 19:35:01', NULL),
(501, 5, 152, 'BMI Management', 'BMI Management', '#', 'bmi_management', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2025-04-20 19:55:12', '2025-06-02 14:42:14', NULL),
(502, 2, 501, 'Add BMI', 'Add BMI', '/admin/healthcare-management/bmi_management/bmi/create', 'admin_healthcare_management_bmi_management_bmi_create', 'CircleIcon', 'Sidebar', 'Active', 1, 1, '2025-04-20 19:55:39', '2025-05-20 15:41:40', NULL),
(503, 2, 501, 'BMI List', 'BMI List', '/admin/healthcare-management/bmi_management/bmi', 'admin_healthcare_management_bmi_management_bmi', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-20 19:56:02', '2025-04-20 19:56:02', NULL),
(504, 17, 227, 'Create Drug Condemnation', '----', '/admin/healthcare-management/stock-purchase/condemnation/create', 'admin_healthcare_management_stock_purchase_condemnation_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-20 21:52:46', '2025-04-20 21:52:46', NULL),
(505, 18, 227, 'Consolidation List', '----', '/admin/healthcare-management/stock-purchase/condemnation', 'admin_healthcare_management_stock_purchase_condemnation', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-20 21:53:20', '2025-04-20 21:53:20', NULL),
(506, 6, 273, 'Import Book', '----', '/admin/library-management/library-settings/book/import/create', 'admin_library_management_library_settings_book_import_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-04-27 16:05:59', '2025-04-27 16:05:59', NULL),
(507, 5, 252, 'Demand Approved List', '----', '/admin/canteen_management_system/purchase_manage/canteen_demand_manage/approved_list', 'admin_canteen_management_system_purchase_manage_canteen_demand_manage_approved_list', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-05-05 19:39:14', '2025-05-05 19:39:14', NULL),
(508, 11, 153, 'Generic Name', '----', '/admin/healthcare-management/healthcare-settings/generic_name', 'admin_healthcare_management_healthcare_settings_generic_name', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-05-07 00:19:29', '2025-05-07 00:19:29', NULL),
(509, 1, 501, 'Ideal Weight', 'Ideal Weight', '/admin/healthcare-management/bmi_management/ideal_weight', 'admin_healthcare_management_bmi_management_ideal_weight', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-05-20 15:42:09', '2025-05-20 15:42:09', NULL),
(510, 9, 252, 'Purchase Approved List', '----', '/admin/canteen_management_system/purchase_manage/canteen_purchase_approved_list', 'admin_canteen_management_system_purchase_manage_canteen_purchase_approved_list', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-05-21 00:04:20', '2025-05-21 00:04:20', NULL),
(511, 1, 152, 'Test and Lab Setting', 'Test and Lab Setting', '#', 'test_and_lab_setting', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-01 20:27:59', '2025-06-01 20:27:59', NULL),
(512, 1, 152, 'Test Unit Manage', 'Test Unit Manage', '/admin/healthcare-management/test-setting/unit', 'admin_healthcare_management_test_setting_unit', 'CircleIcon', 'Sidebar', 'Inactive', 1, 1, '2025-06-01 20:28:33', '2025-06-01 20:28:50', NULL),
(513, 1, 511, 'Test Unit Manage', 'Test Unit Manage', '/admin/healthcare-management/test-setting/unit', 'admin_healthcare_management_test_setting_unit', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-01 20:29:16', '2025-06-01 20:29:16', NULL),
(514, 2, 511, 'Test Group Manage', 'Test Group Manage', '/admin/healthcare-management/test-setting/group', 'admin_healthcare_management_test_setting_group', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-01 20:29:45', '2025-06-01 20:29:45', NULL),
(515, 3, 511, 'Test Sub-Group Manage', 'Test Sub-Group Manage', '/admin/healthcare-management/test-setting/sub-group', 'admin_healthcare_management_test_setting_sub_group', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-01 20:30:13', '2025-06-01 20:30:13', NULL),
(516, 4, 511, 'Test Manage', 'Test Manage', '/admin/healthcare-management/test-setting/test/create', 'admin_healthcare_management_test_setting_test_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-01 20:30:37', '2025-06-01 20:30:37', NULL),
(517, 5, 511, 'Test List', 'Test List', '/admin/healthcare-management/test-setting/test', 'admin_healthcare_management_test_setting_test', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-01 20:31:01', '2025-06-01 20:31:01', NULL),
(518, 6, 152, 'Lab Report Management', 'Lab Report Management', '#', 'lab_report_management', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-02 14:42:34', '2025-06-02 14:42:34', NULL),
(519, 1, 518, 'Report List', 'Report List', '/admin/healthcare-management/lab-report-management/report-list', 'admin_healthcare_management_lab_report_management_report_list', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-02 14:50:49', '2025-06-02 14:50:49', NULL),
(520, 2, 518, 'Complete Report', 'Complete Report', '/admin/healthcare-management/lab-report-management/report-complete', 'admin_healthcare_management_lab_report_management_report_complete', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-02 21:51:50', '2025-06-02 21:51:50', NULL),
(521, 5, 154, 'Import Drug', '----', '/admin/healthcare-management/inventory/import_drug', 'admin_healthcare_management_inventory_import_drug', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-19 20:10:11', '2025-06-19 20:10:11', NULL),
(522, 15, 48, 'Emergency Notice', '----', '#', 'emergency_notice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-22 16:33:34', '2025-06-22 16:33:34', NULL),
(523, 1, 522, 'Add New', '----', '/admin/website/emergency_notice_management/emergency_notice/create', 'admin_website_emergency_notice_management_emergency_notice_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-22 16:34:37', '2025-06-22 16:34:37', NULL),
(524, 2, 522, 'List', '----', '/admin/website/emergency_notice_management/emergency_notice', 'admin_website_emergency_notice_management_emergency_notice', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-22 16:35:06', '2025-06-22 16:35:06', NULL),
(525, 7, 81, 'Advance Loan', 'Advance Loan', '#', 'advance_loan', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-25 21:47:02', '2025-06-25 21:47:02', NULL),
(526, 1, 525, 'Create Loan', 'Create Loan', '/admin/account_management/advance_loan/loan/create', 'admin_account_management_advance_loan_loan_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-25 21:47:38', '2025-06-25 21:47:38', NULL),
(527, 2, 525, 'Loan List', 'Loan List', '/admin/account_management/advance_loan/loan', 'admin_account_management_advance_loan_loan', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-25 21:48:20', '2025-06-25 21:48:20', NULL),
(528, 3, 525, 'Loan Approved', 'Loan Approved', '/admin/account_management/advance_loan/loan_approved/create', 'admin_account_management_advance_loan_loan_approved_create', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-25 21:48:48', '2025-06-25 21:48:48', NULL),
(529, 4, 525, 'Loan Approved List', 'Loan Approved List', '/admin/account_management/advance_loan/loan_approved', 'admin_account_management_advance_loan_loan_approved', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-25 21:49:17', '2025-06-25 21:49:17', NULL),
(530, 5, 525, 'Return Loan', 'Return Loan', '/admin/account_management/advance_loan/return_loan', 'admin_account_management_advance_loan_return_loan', 'CircleIcon', 'Sidebar', 'Active', 1, NULL, '2025-06-25 21:49:52', '2025-06-25 21:49:52', NULL),
(531, 1, NULL, 'test', '----', '#', 'test', NULL, 'Sidebar', 'Active', 1, NULL, '2025-08-04 04:10:10', '2025-08-04 05:50:00', '2025-08-04 05:50:00'),
(532, 1, NULL, 'test', 'test', '#', 'test', NULL, 'Sidebar', 'Active', 1, NULL, '2025-08-04 04:19:56', '2025-08-04 05:49:00', '2025-08-04 05:49:00'),
(533, 1, NULL, 'test', 'test', 'test', 'test', NULL, 'Sidebar', 'Active', 1, NULL, '2025-08-04 04:35:19', '2025-08-04 05:49:25', '2025-08-04 05:49:25'),
(534, 1, NULL, 'test', '----', '#', 'test', NULL, 'Sidebar', 'Active', 1, NULL, '2025-08-04 05:52:37', '2025-08-04 05:52:54', '2025-08-04 05:52:54'),
(535, 1, NULL, 'test', '----', '#', 'test', NULL, 'Sidebar', 'Active', 1, NULL, '2025-08-04 05:54:05', '2025-08-04 05:54:13', '2025-08-04 05:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_071840_create_companies_table', 1),
(2, '2014_10_11_125754_create_currencies_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_05_13_060834_create_settings_table', 1),
(6, '2017_04_11_064308_create_units_table', 1),
(7, '2017_04_11_081227_create_items_table', 1),
(8, '2017_04_12_090759_create_invoices_table', 1),
(9, '2017_04_12_091015_create_invoice_items_table', 1),
(10, '2017_05_05_055609_create_estimates_table', 1),
(11, '2017_05_05_073927_create_notifications_table', 1),
(12, '2017_05_06_173745_create_countries_table', 1),
(13, '2017_10_02_123501_create_estimate_items_table', 1),
(14, '2018_11_02_133825_create_ expense_categories_table', 1),
(15, '2018_11_02_133956_create_expenses_table', 1),
(16, '2019_08_30_072639_create_addresses_table', 1),
(17, '2019_09_02_053155_create_payment_methods_table', 1),
(18, '2019_09_03_135234_create_payments_table', 1),
(19, '2019_09_14_120124_create_media_table', 1),
(20, '2019_09_21_052540_create_tax_types_table', 1),
(21, '2019_09_21_052548_create_taxes_table', 1),
(22, '2019_09_26_145012_create_company_settings_table', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(24, '2020_02_01_063235_create_custom_fields_table', 1),
(25, '2020_02_01_063509_create_custom_field_values_table', 1),
(26, '2020_05_12_154129_add_user_id_to_expenses_table', 1),
(27, '2020_09_07_103054_create_file_disks_table', 1),
(28, '2020_09_22_153617_add_columns_to_media_table', 1),
(29, '2020_09_26_100951_create_user_settings_table', 1),
(30, '2020_10_01_102913_add_company_to_addresses_table', 1),
(31, '2020_10_17_074745_create_notes_table', 1),
(32, '2020_10_24_091934_change_value_column_to_text_on_company_settings_table', 1),
(33, '2020_11_23_050206_add_creator_in_invoices_table', 1),
(34, '2020_11_23_050252_add_creator_in_estimates_table', 1),
(35, '2020_11_23_050316_add_creator_in_payments_table', 1),
(36, '2020_11_23_050333_add_creator_in_expenses_table', 1),
(37, '2020_11_23_050406_add_creator_in_items_table', 1),
(38, '2020_11_23_065815_add_creator_in_users_table', 1),
(39, '2020_11_23_074154_create_email_logs_table', 1),
(40, '2020_12_02_064933_update_crater_version_320', 1),
(41, '2020_12_02_090527_update_crater_version_400', 1),
(42, '2020_12_08_065715_change_description_and_notes_column_type', 1),
(43, '2020_12_08_133131_update_crater_version_401', 1),
(44, '2020_12_14_044717_add_template_name_to_invoices_table', 1),
(45, '2020_12_14_045310_add_template_name_to_estimates_table', 1),
(46, '2020_12_14_051450_remove_template_id_from_invoices_and_estimates_table', 1),
(47, '2020_12_23_061302_update_crater_version_402', 1),
(48, '2020_12_31_100816_update_crater_version_403', 1),
(49, '2021_01_22_085644_update_crater_version_404', 1),
(50, '2021_03_03_155223_add_unit_name_to_pdf', 1),
(51, '2021_03_23_145012_add_number_length_setting', 1),
(52, '2021_05_05_063533_update_crater_version_410', 1),
(53, '2021_06_19_121939_update_crater_version_420', 1),
(54, '2021_06_28_105334_create_bouncer_tables', 1),
(55, '2021_06_28_111647_create_customers_table', 1),
(56, '2021_06_28_120010_add_customer_id_to_estimates_table', 1),
(57, '2021_06_28_120133_add_customer_id_to_expenses_table', 1),
(58, '2021_06_28_120208_add_customer_id_to_invoices_table', 1),
(59, '2021_06_28_120231_add_customer_id_to_payments_table', 1),
(60, '2021_06_29_052745_add_customer_id_to_addresses_table', 1),
(61, '2021_06_30_062411_update_customer_id_in_all_tables', 1),
(62, '2021_07_01_060700_create_user_company_table', 1),
(63, '2021_07_05_100256_change_relationship_of_company', 1),
(64, '2021_07_06_070204_add_owner_id_to_companies_table', 1),
(65, '2021_07_08_110940_add_company_to_notes_table', 1),
(66, '2021_07_09_063502_create_recurring_invoices_table', 1),
(67, '2021_07_09_063712_add_recurring_invoice_id_to_invoices_table', 1),
(68, '2021_07_09_063755_add_recurring_invoice_id_to_invoice_items_table', 1),
(69, '2021_07_15_054753_make_due_date_optional_in_invoices_table', 1),
(70, '2021_07_15_054929_make_expiry_date_optional_estimates_table', 1),
(71, '2021_07_16_072458_add_base_columns_into_invoices_table', 1),
(72, '2021_07_16_072925_add_base_columns_into_invoice_items_table', 1),
(73, '2021_07_16_073040_add_base_columns_into_estimates_table', 1),
(74, '2021_07_16_073441_add_base_columns_into_estimate_items_table', 1),
(75, '2021_07_16_074810_add_base_column_into_payments_table', 1),
(76, '2021_07_16_075100_add_base_values_into_taxes_table', 1),
(77, '2021_07_16_080253_add_currency_id_into_invoices_table', 1),
(78, '2021_07_16_080508_add_currency_id_into_payments_table', 1),
(79, '2021_07_16_080611_add_currency_id_into_items_table', 1),
(80, '2021_07_16_080702_add_currency_id_into_taxes_table', 1),
(81, '2021_07_16_112429_add_currency_id_into_estimates_table', 1),
(82, '2021_08_05_103535_create_exchange_rate_logs_table', 1),
(83, '2021_08_16_091413_add_tax_per_item_into_items_table', 1),
(84, '2021_08_19_063244_add_base_columns_to_expense_table', 1),
(85, '2021_09_28_081543_create_exchange_rate_providers_table', 1),
(86, '2021_09_28_130822_add_sequence_column', 1),
(87, '2021_10_06_100539_add_recurring_invoice_id_to_taxes_table', 1),
(88, '2021_11_13_051127_add_payment_method_to_expense_table', 1),
(89, '2021_11_13_114808_calculate_base_values_for_existing_data', 1),
(90, '2021_11_23_092111_add_new_company_settings', 1),
(91, '2021_11_23_093811_update_crater_version_500', 1),
(92, '2021_12_01_120956_update_crater_version_501', 1),
(93, '2021_12_02_063005_calculate_base_due_amount', 1),
(94, '2021_12_02_074516_migrate_templates_from_version_4', 1),
(95, '2021_12_02_123007_update_crater_version_502', 1),
(96, '2021_12_03_154423_update_crater_version_503', 1),
(97, '2021_12_04_122255_create_transactions_table', 1),
(98, '2021_12_04_123315_add_transaction_id_to_payments_table', 1),
(99, '2021_12_04_123415_add_type_to_payment_methods_table', 1),
(100, '2021_12_06_131201_update_crater_version_504', 1),
(101, '2021_12_09_054033_calculate_base_values_for_expenses', 1),
(102, '2021_12_09_062434_update_crater_version_505', 1),
(103, '2021_12_09_065718_drop_unique_email_on_customers_table', 1),
(104, '2021_12_10_121739_update_creater_version_506', 1),
(105, '2021_12_13_055813_calculate_base_amount_of_payments_table', 1),
(106, '2021_12_13_093701_add_fields_to_email_logs_table', 1),
(107, '2021_12_15_053223_create_modules_table', 1),
(108, '2021_12_21_102521_change_enable_portal_field_of_customers_table', 1),
(109, '2021_12_31_042453_add_type_to_tax_types_table', 1),
(110, '2022_01_05_101841_add_sales_tax_fields_to_invoices_table', 1),
(111, '2022_01_05_102538_add_sales_tax_fields_to_estimates_table', 1),
(112, '2022_01_05_103607_add_sales_tax_fields_to_recurring_invoices_table', 1),
(113, '2022_01_05_115423_update_crater_version_600', 1),
(114, '2022_01_06_103536_add_slug_to_companies', 1),
(115, '2022_01_12_132859_update_crater_version_601', 1),
(116, '2022_01_13_123829_update_crater_version_602', 1),
(117, '2022_02_15_113648_update_crater_version_603', 1),
(118, '2022_02_17_081723_update_crater_version_604', 1),
(119, '2022_02_23_130108_update_value_column_to_nullable_on_settings_table', 1),
(120, '2022_03_02_120210_add_overdue_to_invoices_table', 1),
(121, '2022_03_03_060121_crater_version_605', 1),
(122, '2022_03_03_063237_change_over_due_status_to_sent', 1),
(123, '2022_03_04_051438_calculate_base_values_for_invoice_items', 1),
(124, '2022_03_06_070829_update_crater_version_606', 1),
(125, '2024_01_28_114715_add_generated_conversions_to_media_table', 1),
(126, '2024_02_04_005632_update_version_100', 1),
(127, '2024_02_08_181804_taxes_amount_as_signed', 1),
(128, '2024_02_11_075831_update_version_110', 1),
(129, '2024_02_17_211900_add_expires_at_to_personal_access_tokens', 1),
(130, '2024_04_12_162703_add_tax_ids_to_companies', 1),
(131, '2024_04_14_173940_replace_crater_type', 1),
(132, '2024_05_04_110000_update_version_121', 1),
(133, '2024_05_04_110000_update_version_122', 1),
(134, '2024_07_12_235756_update_version_130', 1),
(135, '2024_07_13_000000_rename_password_resets_table', 1),
(136, '2024_07_13_000001_update_stored_namespace', 1),
(137, '2024_07_17_113642_create_cache_table', 1),
(138, '2024_07_17_113702_create_jobs_table', 1),
(139, '2024_08_08_173226_update_invoice_date_to_datetime_on_invoices_table', 1),
(140, '2024_10_04_093723_add_tax_id_field_to_customers_table', 1),
(141, '2024_10_09_103306_modify_invoices_to_allow_negative_values', 1),
(142, '2024_12_11_102055_update_taxes_to_handle_fixed_amount', 1),
(143, '2025_01_05_211404_add_is_default_to_notes_table', 1),
(144, '2025_03_15_160016_allow_unsigned_item_price', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `customer_sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `payment_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `amount` bigint UNSIGNED NOT NULL,
  `unique_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `payment_method_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` enum('GENERAL','MODULE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'GENERAL',
  `settings` json DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `use_test_env` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `company_id`, `created_at`, `updated_at`, `driver`, `type`, `settings`, `active`, `use_test_env`) VALUES
(1, 'Cash', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02', NULL, 'GENERAL', NULL, 0, 0),
(2, 'Check', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02', NULL, 'GENERAL', NULL, 0, 0),
(3, 'Credit Card', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02', NULL, 'GENERAL', NULL, 0, 0),
(4, 'Bank Transfer', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02', NULL, 'GENERAL', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `ability_id` bigint UNSIGNED NOT NULL,
  `entity_id` bigint UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 1, 1, 'roles', 0, 1),
(2, 2, 1, 'roles', 0, 1),
(3, 3, 1, 'roles', 0, 1),
(4, 4, 1, 'roles', 0, 1),
(5, 5, 1, 'roles', 0, 1),
(6, 6, 1, 'roles', 0, 1),
(7, 7, 1, 'roles', 0, 1),
(8, 8, 1, 'roles', 0, 1),
(9, 9, 1, 'roles', 0, 1),
(10, 10, 1, 'roles', 0, 1),
(11, 11, 1, 'roles', 0, 1),
(12, 12, 1, 'roles', 0, 1),
(13, 13, 1, 'roles', 0, 1),
(14, 14, 1, 'roles', 0, 1),
(15, 15, 1, 'roles', 0, 1),
(16, 16, 1, 'roles', 0, 1),
(17, 17, 1, 'roles', 0, 1),
(18, 18, 1, 'roles', 0, 1),
(19, 19, 1, 'roles', 0, 1),
(20, 20, 1, 'roles', 0, 1),
(21, 21, 1, 'roles', 0, 1),
(22, 22, 1, 'roles', 0, 1),
(23, 23, 1, 'roles', 0, 1),
(24, 24, 1, 'roles', 0, 1),
(25, 25, 1, 'roles', 0, 1),
(26, 26, 1, 'roles', 0, 1),
(27, 27, 1, 'roles', 0, 1),
(28, 28, 1, 'roles', 0, 1),
(29, 29, 1, 'roles', 0, 1),
(30, 30, 1, 'roles', 0, 1),
(31, 31, 1, 'roles', 0, 1),
(32, 32, 1, 'roles', 0, 1),
(33, 33, 1, 'roles', 0, 1),
(34, 34, 1, 'roles', 0, 1),
(35, 35, 1, 'roles', 0, 1),
(36, 36, 1, 'roles', 0, 1),
(37, 37, 1, 'roles', 0, 1),
(38, 38, 1, 'roles', 0, 1),
(39, 39, 1, 'roles', 0, 1),
(40, 40, 1, 'roles', 0, 1),
(41, 41, 1, 'roles', 0, 1),
(42, 42, 1, 'roles', 0, 1),
(43, 43, 1, 'roles', 0, 1),
(44, 44, 1, 'roles', 0, 1),
(45, 45, 1, 'roles', 0, 1),
(46, 46, 1, 'roles', 0, 1),
(47, 47, 1, 'roles', 0, 1),
(48, 1, 2, 'roles', 0, 1),
(49, 2, 2, 'roles', 0, 1),
(50, 3, 2, 'roles', 0, 1),
(51, 4, 2, 'roles', 0, 1),
(52, 5, 2, 'roles', 0, 1),
(53, 6, 2, 'roles', 0, 1),
(54, 7, 2, 'roles', 0, 1),
(55, 8, 2, 'roles', 0, 1),
(56, 9, 2, 'roles', 0, 1),
(57, 10, 2, 'roles', 0, 1),
(58, 11, 2, 'roles', 0, 1),
(59, 12, 2, 'roles', 0, 1),
(60, 36, 2, 'roles', 0, 1),
(61, 48, 1, 'roles', 0, 1),
(62, 49, 1, 'roles', 0, 1),
(63, 50, 1, 'roles', 0, 1),
(64, 51, 1, 'roles', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '72eac8de43f49cafcb42d0dfdb21d7c2ffc01bc7c799e6191572c6aad9d247a1', '[\"*\"]', NULL, NULL, '2025-07-22 05:43:30', '2025-07-22 05:43:30'),
(2, 'App\\Models\\User', 1, 'auth_token', '89dc372719dccb1e1499e72990d8e35eee473f19c036440b2ffe0af2804a6093', '[\"*\"]', NULL, NULL, '2025-07-22 05:57:12', '2025-07-22 05:57:12'),
(3, 'App\\Models\\User', 1, 'auth_token', 'baea0cdecadd2e2298044f5f53c211eb0c0012c2041f10a643b79eaa5acce67a', '[\"*\"]', NULL, NULL, '2025-07-22 05:59:58', '2025-07-22 05:59:58'),
(4, 'App\\Models\\User', 1, 'auth_token', '3e146dc5555a72ca52e259e6bb79b20377ba9593d5fbf3e31deb04f265c895aa', '[\"*\"]', NULL, NULL, '2025-07-22 06:01:50', '2025-07-22 06:01:50'),
(5, 'App\\Models\\User', 1, 'auth_token', '03d42841ae57b791cc6f773b205d9dbc0bc2d153204b1417a49d97b879a35eb8', '[\"*\"]', NULL, NULL, '2025-07-22 06:09:38', '2025-07-22 06:09:38'),
(6, 'App\\Models\\User', 1, 'auth_token', '66ada8df0dae2ea63149cf75422b331637c26ac071b51090c1179e3caa49a7ce', '[\"*\"]', NULL, NULL, '2025-07-22 06:10:42', '2025-07-22 06:10:42'),
(7, 'App\\Models\\User', 1, 'auth_token', '31ddc9b10c47d59e723ba5c09d8b5765e3f71aa259c92d2d4c707a8a7244210a', '[\"*\"]', NULL, NULL, '2025-07-22 06:16:52', '2025-07-22 06:16:52'),
(8, 'App\\Models\\User', 1, 'auth-token', '69bb344c2feaa514e1f0a8575b0a496d72197060953f32b955790006af50bae2', '[\"*\"]', NULL, NULL, '2025-07-28 00:39:20', '2025-07-28 00:39:20'),
(9, 'App\\Models\\User', 1, 'auth-token', 'ae16e58341c7ec2a47acac64b4430f18d0afc50ec666d5e55597f380a98f9818', '[\"*\"]', '2025-08-03 04:23:52', NULL, '2025-07-28 00:40:18', '2025-08-03 04:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoices`
--

CREATE TABLE `recurring_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `starts_at` datetime NOT NULL,
  `send_automatically` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `status` enum('COMPLETED','ON_HOLD','ACTIVE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `next_invoice_at` datetime DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `limit_by` enum('NONE','COUNT','DATE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NONE',
  `limit_count` int DEFAULT NULL,
  `limit_date` date DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `tax_per_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `sub_total` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `template_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `due_amount` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_tax_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sales_tax_address_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` int UNSIGNED DEFAULT NULL,
  `scope` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'Super Admin', NULL, 1, '2025-07-14 22:35:01', '2025-07-14 22:35:01'),
(2, 'User', 'User', NULL, 1, '2025-07-28 04:42:42', '2025-07-28 04:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `option` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1, 'version', '2.1.1', '2025-07-27 03:11:16', '2025-07-27 03:11:16'),
(3, 'profile_complete', 'COMPLETED', '2025-07-27 06:01:07', '2025-07-28 00:40:19'),
(4, 'profile_language', 'en', '2025-07-27 06:01:08', '2025-07-27 06:01:08'),
(8, 'updater_channel', 'stable', '2025-07-28 00:31:08', '2025-07-28 00:31:08'),
(10, 'copyright_text', 'Copyright @ smartgen limited', NULL, NULL),
(11, 'login_page_heading', 'Simple Invoicing for Individuals Small Businesses', NULL, NULL),
(12, 'login_page_description', 'Invoice app helps you track expenses, record payments & generate beautiful invoices & estimates.', NULL, NULL),
(14, 'login_page_logo', 'uploads/logo/smart-gen-logo-white.png', NULL, NULL),
(15, 'admin_portal_logo', 'uploads/logo/smart-gen-logo-white.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int UNSIGNED NOT NULL,
  `tax_type_id` int UNSIGNED NOT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `estimate_id` int UNSIGNED DEFAULT NULL,
  `invoice_item_id` int UNSIGNED DEFAULT NULL,
  `estimate_item_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `calculation_type` enum('percentage','fixed') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'percentage',
  `amount` bigint NOT NULL,
  `percent` decimal(5,2) DEFAULT NULL,
  `fixed_amount` int DEFAULT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `recurring_invoice_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `calculation_type` enum('percentage','fixed') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'percentage',
  `percent` decimal(5,2) DEFAULT NULL,
  `fixed_amount` int DEFAULT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `collective_tax` tinyint NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('GENERAL','MODULE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'GENERAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unique_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `transaction_date` datetime NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `invoice_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'box', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(2, 'cm', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(3, 'dz', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(4, 'ft', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(5, 'g', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(6, 'in', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(7, 'kg', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(8, 'km', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(9, 'lb', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(10, 'mg', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02'),
(11, 'pc', 1, '2025-07-14 22:35:02', '2025-07-14 22:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enable_portal` tinyint(1) DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `remember_token`, `facebook_id`, `google_id`, `github_id`, `contact_name`, `company_name`, `website`, `enable_portal`, `currency_id`, `created_at`, `updated_at`, `creator_id`) VALUES
(1, 'Saad', 'admin@admin.com', NULL, '$2y$12$/P/oUKaRHFgtbUlywqmNRuCpiZxI0k7cx9j7gHtyAzCFh8lEiWPna', 'super admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-14 22:35:01', '2025-07-28 04:09:55', NULL),
(3, 'Mabrur Rahman', 'mr@gmail.com', '01855996632', '$2y$12$0W8.adjN6D8TQpO77Yk5feC0g8VCbKQdw8s1Lm/ydeSADC057ADoa', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-27 06:13:32', '2025-07-28 04:43:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_company`
--

CREATE TABLE `user_company` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_company`
--

INSERT INTO `user_company` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'language', 'en', 1, '2025-07-27 06:05:22', '2025-07-27 06:05:22'),
(2, 'language', 'en', 3, '2025-07-27 06:13:32', '2025-07-27 06:13:32'),
(3, 'default_invoice_template', 'invoice2', 1, '2025-07-27 06:17:10', '2025-07-27 06:17:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_company_id_foreign` (`company_id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_settings_company_id_foreign` (`company_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_currency_id_foreign` (`currency_id`),
  ADD KEY `customers_company_id_foreign` (`company_id`),
  ADD KEY `customers_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_company_id_foreign` (`company_id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`),
  ADD KEY `custom_field_values_company_id_foreign` (`company_id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_logs_token_unique` (`token`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_company_id_foreign` (`company_id`),
  ADD KEY `estimates_creator_id_foreign` (`creator_id`),
  ADD KEY `estimates_customer_id_foreign` (`customer_id`),
  ADD KEY `estimates_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimate_items_item_id_foreign` (`item_id`),
  ADD KEY `estimate_items_estimate_id_foreign` (`estimate_id`),
  ADD KEY `estimate_items_company_id_foreign` (`company_id`);

--
-- Indexes for table `exchange_rate_logs`
--
ALTER TABLE `exchange_rate_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exchange_rate_logs_company_id_foreign` (`company_id`),
  ADD KEY `exchange_rate_logs_base_currency_id_foreign` (`base_currency_id`),
  ADD KEY `exchange_rate_logs_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `exchange_rate_providers`
--
ALTER TABLE `exchange_rate_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exchange_rate_providers_company_id_foreign` (`company_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_company_id_foreign` (`company_id`),
  ADD KEY `expenses_creator_id_foreign` (`creator_id`),
  ADD KEY `expenses_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `file_disks`
--
ALTER TABLE `file_disks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_company_id_foreign` (`company_id`),
  ADD KEY `invoices_creator_id_foreign` (`creator_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`),
  ADD KEY `invoices_recurring_invoice_id_foreign` (`recurring_invoice_id`),
  ADD KEY `invoices_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_item_id_foreign` (`item_id`),
  ADD KEY `invoice_items_company_id_foreign` (`company_id`),
  ADD KEY `invoice_items_recurring_invoice_id_foreign` (`recurring_invoice_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_company_id_foreign` (`company_id`),
  ADD KEY `items_unit_id_foreign` (`unit_id`),
  ADD KEY `items_creator_id_foreign` (`creator_id`),
  ADD KEY `items_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_company_id_foreign` (`company_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_invoice_id_foreign` (`invoice_id`),
  ADD KEY `payments_company_id_foreign` (`company_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_creator_id_foreign` (`creator_id`),
  ADD KEY `payments_customer_id_foreign` (`customer_id`),
  ADD KEY `payments_currency_id_foreign` (`currency_id`),
  ADD KEY `payments_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_company_id_foreign` (`company_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_invoices_customer_id_foreign` (`customer_id`),
  ADD KEY `recurring_invoices_company_id_foreign` (`company_id`),
  ADD KEY `recurring_invoices_creator_id_foreign` (`creator_id`),
  ADD KEY `recurring_invoices_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_tax_type_id_foreign` (`tax_type_id`),
  ADD KEY `taxes_invoice_id_foreign` (`invoice_id`),
  ADD KEY `taxes_estimate_id_foreign` (`estimate_id`),
  ADD KEY `taxes_invoice_item_id_foreign` (`invoice_item_id`),
  ADD KEY `taxes_estimate_item_id_foreign` (`estimate_item_id`),
  ADD KEY `taxes_item_id_foreign` (`item_id`),
  ADD KEY `taxes_company_id_foreign` (`company_id`),
  ADD KEY `taxes_currency_id_foreign` (`currency_id`),
  ADD KEY `taxes_recurring_invoice_id_foreign` (`recurring_invoice_id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_company_id_foreign` (`company_id`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_currency_id_foreign` (`currency_id`),
  ADD KEY `users_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `user_company`
--
ALTER TABLE `user_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_company_user_id_foreign` (`user_id`),
  ADD KEY `user_company_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_settings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_rate_logs`
--
ALTER TABLE `exchange_rate_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_rate_providers`
--
ALTER TABLE `exchange_rate_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_disks`
--
ALTER TABLE `file_disks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_company`
--
ALTER TABLE `user_company`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD CONSTRAINT `company_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `customers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`);

--
-- Constraints for table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `estimates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `estimates_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD CONSTRAINT `estimate_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_items_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exchange_rate_logs`
--
ALTER TABLE `exchange_rate_logs`
  ADD CONSTRAINT `exchange_rate_logs_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `exchange_rate_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `exchange_rate_logs_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `exchange_rate_providers`
--
ALTER TABLE `exchange_rate_providers`
  ADD CONSTRAINT `exchange_rate_providers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `invoices_recurring_invoice_id_foreign` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`);

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_recurring_invoice_id_foreign` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  ADD CONSTRAINT `recurring_invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `recurring_invoices_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `recurring_invoices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `recurring_invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `taxes_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `taxes_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_estimate_item_id_foreign` FOREIGN KEY (`estimate_item_id`) REFERENCES `estimate_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_invoice_item_id_foreign` FOREIGN KEY (`invoice_item_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_recurring_invoice_id_foreign` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`),
  ADD CONSTRAINT `taxes_tax_type_id_foreign` FOREIGN KEY (`tax_type_id`) REFERENCES `tax_types` (`id`);

--
-- Constraints for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD CONSTRAINT `tax_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_company`
--
ALTER TABLE `user_company`
  ADD CONSTRAINT `user_company_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_company_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
