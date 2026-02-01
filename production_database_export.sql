-- JobBox Production Database Export
-- Generated: 2026-02-01 01:26:45

-- Data for table: migrations
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('1', '0001_01_01_000001_create_cache_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('2', '2013_04_09_032329_create_base_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('3', '2013_04_09_062329_create_revisions_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('4', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('5', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('6', '2015_06_18_033822_create_blog_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('7', '2015_06_29_025744_create_audit_history', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('8', '2016_06_10_230148_create_acl_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('9', '2016_06_14_230857_create_menus_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('10', '2016_06_17_091537_create_contacts_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('11', '2016_06_28_221418_create_pages_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('12', '2016_10_03_032336_create_languages_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('13', '2016_10_05_074239_create_setting_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('14', '2016_10_07_193005_create_translations_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('15', '2016_10_13_150201_create_galleries_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('16', '2016_11_28_032840_create_dashboard_widget_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('17', '2016_12_16_084601_create_widgets_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('18', '2017_05_09_070343_create_media_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('19', '2017_05_18_080441_create_payment_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('20', '2017_10_24_154832_create_newsletter_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('21', '2017_11_03_070450_create_slug_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('22', '2018_07_09_214610_create_testimonial_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('23', '2018_07_09_221238_create_faq_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('24', '2019_01_05_053554_create_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('25', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('26', '2019_11_18_061011_create_country_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('27', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('28', '2020_11_18_150916_ads_create_ads_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('29', '2021_02_16_092633_remove_default_value_for_author_type', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('30', '2021_03_27_144913_add_customer_type_into_table_payments', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('31', '2021_05_24_034720_make_column_currency_nullable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('32', '2021_08_09_161302_add_metadata_column_to_payments_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('33', '2021_10_19_020859_update_metadata_field', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('34', '2021_10_25_021023_fix-priority-load-for-language-advanced', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('35', '2021_12_02_035301_add_ads_translations_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('36', '2021_12_03_030600_create_blog_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('37', '2021_12_03_075608_create_page_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('38', '2021_12_03_082134_create_faq_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('39', '2021_12_03_082953_create_gallery_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('40', '2021_12_03_083642_create_testimonials_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('41', '2021_12_03_084118_create_location_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('42', '2021_12_03_094518_migrate_old_location_data', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('43', '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('44', '2022_01_16_085908_improve_plugin_location', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('45', '2022_04_19_113923_add_index_to_table_posts', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('46', '2022_04_20_100851_add_index_to_media_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('47', '2022_04_20_101046_add_index_to_menu_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('48', '2022_04_30_034048_create_gallery_meta_translations_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('49', '2022_06_20_093259_create_job_board_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('50', '2022_06_28_151901_activate_paypal_stripe_plugin', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('51', '2022_07_07_153354_update_charge_id_in_table_payments', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('52', '2022_07_10_034813_move_lang_folder_to_root', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('53', '2022_08_04_051940_add_missing_column_expires_at', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('54', '2022_08_04_052122_delete_location_backup_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('55', '2022_09_01_000001_create_admin_notifications_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('56', '2022_09_12_061845_update_table_activity_logs', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('57', '2022_09_13_042407_create_table_jb_jobs_types', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('58', '2022_09_15_030017_update_jb_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('59', '2022_09_15_094840_add_job_employer_colleagues', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('60', '2022_09_27_000001_create_jb_invoices_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('61', '2022_09_30_144924_update_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('62', '2022_10_04_085631_add_company_logo_to_jb_invoices', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('63', '2022_10_10_030606_create_reviews_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('64', '2022_10_14_024629_drop_column_is_featured', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('65', '2022_11_02_092723_team_create_team_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('66', '2022_11_09_065056_add_missing_jobs_page', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('67', '2022_11_10_065056_add_columns_to_accounts', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('68', '2022_11_16_034756_add_column_cover_letter_to_accounts', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('69', '2022_11_18_063357_add_missing_timestamp_in_table_settings', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('70', '2022_11_29_304756_create_jb_account_favorite_skills_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('71', '2022_11_29_304757_create_jb_account_favorite_tags', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('72', '2022_12_02_093615_update_slug_index_columns', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('73', '2022_12_26_304758_create_table_jb_experiences', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('74', '2022_12_26_304759_create_table_jb_education', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('75', '2023_01_30_024431_add_alt_to_media_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('76', '2023_01_31_023233_create_jb_custom_fields_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('77', '2023_02_06_024257_add_package_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('78', '2023_02_08_062457_add_custom_fields_translation_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('79', '2023_02_16_042611_drop_table_password_resets', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('80', '2023_04_03_126927_add_parent_id_to_jb_categories_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('81', '2023_04_10_103353_fix_social_links', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('82', '2023_04_17_062645_add_open_in_new_tab', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('83', '2023_04_23_005903_add_column_permissions_to_admin_notifications', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('84', '2023_04_23_061847_increase_state_translations_abbreviation_column', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('85', '2023_05_04_000001_add_hide_cv_to_jb_accounts_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('86', '2023_05_09_062031_unique_reviews_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('87', '2023_05_10_075124_drop_column_id_in_role_users_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('88', '2023_05_13_180010_make_jb_reviews_table_morphable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('89', '2023_05_16_113126_fix_account_confirmed_at', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('90', '2023_07_03_135746_add_zip_code_to_jb_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('91', '2023_07_06_011444_create_slug_translations_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('92', '2023_07_06_022808_create_jb_coupons_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('93', '2023_07_14_045213_add_coupon_code_column_to_jb_invoices_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('94', '2023_07_19_152743_migrate_old_city_state_image', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('95', '2023_07_26_041451_add_more_columns_to_location_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('96', '2023_07_27_041451_add_more_columns_to_location_translation_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('97', '2023_08_11_094574_update_team_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('98', '2023_08_15_073307_drop_unique_in_states_cities_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('99', '2023_08_21_090810_make_page_content_nullable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('100', '2023_08_29_074620_make_column_author_id_nullable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('101', '2023_08_29_075308_make_column_user_id_nullable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('102', '2023_09_14_021936_update_index_for_slugs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('103', '2023_09_14_022423_add_index_for_language_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('104', '2023_10_21_065016_make_state_id_in_table_cities_nullable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('105', '2023_11_07_023805_add_tablet_mobile_image', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('106', '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('107', '2023_11_14_033417_change_request_column_in_table_audit_histories', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('108', '2023_11_17_063408_add_description_column_to_faq_categories_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('109', '2023_11_30_085354_add_missing_description_to_team', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('110', '2023_12_07_095130_add_color_column_to_media_folders_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('111', '2023_12_12_105220_drop_translations_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('112', '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('113', '2023_12_20_034718_update_invoice_amount', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('114', '2024_01_31_022842_add_description_to_jb_packages_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('115', '2024_02_01_080657_add_tax_id_column_to_jb_companies_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('116', '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('117', '2024_03_25_000001_update_captcha_settings_for_contact', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('118', '2024_03_25_000001_update_captcha_settings_for_newsletter', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('119', '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('120', '2024_04_04_110758_update_value_column_in_user_meta_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('121', '2024_04_19_063914_create_custom_fields_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('122', '2024_04_27_100730_improve_analytics_setting', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('123', '2024_05_02_030658_add_field_unique_id_to_jb_accounts_and_jb_companies_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('124', '2024_05_12_091229_add_column_visibility_to_table_media_files', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('125', '2024_07_04_083133_create_payment_logs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('126', '2024_07_07_091316_fix_column_url_in_menu_nodes_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('127', '2024_07_12_100000_change_random_hash_for_media', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('128', '2024_07_22_122219_create_jb_account_languages_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('129', '2024_07_30_091615_fix_order_column_in_categories_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('130', '2024_08_17_094600_add_image_into_countries', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('131', '2024_09_06_070120_update_jb_packages_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('132', '2024_09_23_075542_add_accounts_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('133', '2024_09_30_024515_create_sessions_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('134', '2024_10_28_062842_add_unique_field_to_jb_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('135', '2025_01_06_033807_add_default_value_for_categories_author_type', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('136', '2025_01_07_020057_create_jb_companies_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('137', '2025_01_08_093652_add_zip_code_to_cities', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('138', '2025_01_14_035040_add_features_to_packages_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('139', '2025_01_25_081129_add_address_to_jobs_translations', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('140', '2025_02_03_035948_update_field_apply_url_of_jb_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('141', '2025_04_03_000001_add_user_type_to_audit_histories_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('142', '2025_04_08_040931_create_social_logins_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('143', '2025_04_12_000003_add_payment_fee_to_payments_table', '1');

-- Data for table: meta_boxes
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('1', 'background_breadcrumb', '[\"pages\\/background-breadcrumb.png\"]', '10', 'Botble\\Page\\Models\\Page', '2026-01-31 08:45:18', '2026-01-31 08:45:18');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('2', 'background_breadcrumb', '[\"pages\\/background-breadcrumb.png\"]', '12', 'Botble\\Page\\Models\\Page', '2026-01-31 08:45:19', '2026-01-31 08:45:19');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('3', 'icon_image', '[\"general\\/content.png\"]', '1', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:33', '2026-01-31 08:45:33');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('4', 'job_category_image', '[\"job-categories\\/img-cover-2.png\"]', '1', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:33', '2026-01-31 08:51:00');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('5', 'icon_image', '[\"general\\/research.png\"]', '2', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:34', '2026-01-31 08:45:34');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('6', 'job_category_image', '[\"job-categories\\/img-cover-2.png\"]', '2', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:34', '2026-01-31 08:51:01');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('7', 'icon_image', '[\"general\\/marketing.png\"]', '3', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:35', '2026-01-31 08:45:35');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('8', 'job_category_image', '[\"job-categories\\/img-cover-3.png\"]', '3', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:35', '2026-01-31 08:51:01');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('9', 'icon_image', '[\"general\\/customer.png\"]', '4', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:35', '2026-01-31 08:45:35');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('10', 'job_category_image', '[\"job-categories\\/img-cover-3.png\"]', '4', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:35', '2026-01-31 08:51:01');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('11', 'icon_image', '[\"general\\/finance.png\"]', '5', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:36', '2026-01-31 08:45:36');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('12', 'job_category_image', '[\"job-categories\\/img-cover-2.png\"]', '5', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:36', '2026-01-31 08:45:36');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('13', 'icon_image', '[\"general\\/lightning.png\"]', '6', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:36', '2026-01-31 08:45:36');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('14', 'job_category_image', '[\"job-categories\\/img-cover-1.png\"]', '6', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:37', '2026-01-31 08:51:01');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('15', 'icon_image', '[\"general\\/human.png\"]', '7', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:37', '2026-01-31 08:45:37');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('16', 'job_category_image', '[\"job-categories\\/img-cover-1.png\"]', '7', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:37', '2026-01-31 08:45:37');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('17', 'icon_image', '[\"general\\/management.png\"]', '8', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:38', '2026-01-31 08:45:38');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('18', 'job_category_image', '[\"job-categories\\/img-cover-3.png\"]', '8', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:38', '2026-01-31 08:51:02');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('19', 'icon_image', '[\"general\\/retail.png\"]', '9', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:38', '2026-01-31 08:45:38');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('20', 'job_category_image', '[\"job-categories\\/img-cover-2.png\"]', '9', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:38', '2026-01-31 08:51:02');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('21', 'icon_image', '[\"general\\/security.png\"]', '10', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:39', '2026-01-31 08:45:39');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('22', 'job_category_image', '[\"job-categories\\/img-cover-3.png\"]', '10', 'Botble\\JobBoard\\Models\\Category', '2026-01-31 08:45:39', '2026-01-31 08:45:39');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('23', 'cover_image', '[\"covers\\/1.png\"]', '1', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:23', '2026-01-31 08:46:23');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('24', 'cover_image', '[\"covers\\/2.png\"]', '2', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:24', '2026-01-31 08:46:24');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('25', 'cover_image', '[\"covers\\/3.png\"]', '3', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:25', '2026-01-31 08:46:25');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('26', 'cover_image', '[\"covers\\/1.png\"]', '4', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:26', '2026-01-31 08:46:26');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('27', 'cover_image', '[\"covers\\/1.png\"]', '5', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:27', '2026-01-31 08:46:27');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('28', 'cover_image', '[\"covers\\/1.png\"]', '6', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:29', '2026-01-31 08:46:29');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('29', 'cover_image', '[\"covers\\/2.png\"]', '7', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:31', '2026-01-31 08:46:31');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('30', 'cover_image', '[\"covers\\/2.png\"]', '8', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:32', '2026-01-31 08:46:32');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('31', 'cover_image', '[\"covers\\/3.png\"]', '9', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:34', '2026-01-31 08:46:34');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('32', 'cover_image', '[\"covers\\/2.png\"]', '10', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:35', '2026-01-31 08:46:35');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('33', 'cover_image', '[\"covers\\/3.png\"]', '11', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:36', '2026-01-31 08:46:36');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('34', 'cover_image', '[\"covers\\/1.png\"]', '12', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:37', '2026-01-31 08:46:37');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('35', 'cover_image', '[\"covers\\/3.png\"]', '13', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:38', '2026-01-31 08:46:38');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('36', 'cover_image', '[\"covers\\/3.png\"]', '14', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:39', '2026-01-31 08:46:39');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('37', 'cover_image', '[\"covers\\/3.png\"]', '15', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:41', '2026-01-31 08:46:41');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('38', 'cover_image', '[\"covers\\/3.png\"]', '16', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:42', '2026-01-31 08:46:42');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('39', 'cover_image', '[\"covers\\/2.png\"]', '17', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:44', '2026-01-31 08:46:44');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('40', 'cover_image', '[\"covers\\/2.png\"]', '18', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:45', '2026-01-31 08:46:45');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('41', 'cover_image', '[\"covers\\/2.png\"]', '19', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:47', '2026-01-31 08:46:47');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('42', 'cover_image', '[\"covers\\/1.png\"]', '20', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:48', '2026-01-31 08:46:48');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('43', 'cover_image', '[\"covers\\/2.png\"]', '21', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:50', '2026-01-31 08:46:50');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('44', 'cover_image', '[\"covers\\/1.png\"]', '22', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:51', '2026-01-31 08:46:51');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('45', 'cover_image', '[\"covers\\/1.png\"]', '23', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:52', '2026-01-31 08:46:52');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('46', 'cover_image', '[\"covers\\/2.png\"]', '24', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:53', '2026-01-31 08:46:53');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('47', 'cover_image', '[\"covers\\/1.png\"]', '25', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:55', '2026-01-31 08:46:55');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('48', 'cover_image', '[\"covers\\/3.png\"]', '26', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:56', '2026-01-31 08:46:56');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('49', 'cover_image', '[\"covers\\/2.png\"]', '27', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:58', '2026-01-31 08:46:58');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('50', 'cover_image', '[\"covers\\/1.png\"]', '28', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:46:59', '2026-01-31 08:46:59');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('51', 'cover_image', '[\"covers\\/2.png\"]', '29', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:00', '2026-01-31 08:47:00');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('52', 'cover_image', '[\"covers\\/3.png\"]', '30', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:02', '2026-01-31 08:47:02');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('53', 'cover_image', '[\"covers\\/1.png\"]', '31', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:04', '2026-01-31 08:47:04');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('54', 'cover_image', '[\"covers\\/2.png\"]', '32', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:05', '2026-01-31 08:47:05');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('55', 'cover_image', '[\"covers\\/3.png\"]', '33', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:07', '2026-01-31 08:47:07');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('56', 'cover_image', '[\"covers\\/2.png\"]', '34', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:09', '2026-01-31 08:47:09');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('57', 'cover_image', '[\"covers\\/3.png\"]', '35', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:10', '2026-01-31 08:47:10');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('58', 'cover_image', '[\"covers\\/3.png\"]', '36', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:12', '2026-01-31 08:47:12');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('59', 'cover_image', '[\"covers\\/2.png\"]', '37', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:14', '2026-01-31 08:47:14');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('60', 'cover_image', '[\"covers\\/3.png\"]', '38', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:16', '2026-01-31 08:47:16');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('61', 'cover_image', '[\"covers\\/1.png\"]', '39', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:17', '2026-01-31 08:47:17');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('62', 'cover_image', '[\"covers\\/1.png\"]', '40', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:19', '2026-01-31 08:47:19');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('63', 'cover_image', '[\"covers\\/2.png\"]', '41', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:20', '2026-01-31 08:47:20');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('64', 'cover_image', '[\"covers\\/2.png\"]', '42', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:21', '2026-01-31 08:47:21');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('65', 'cover_image', '[\"covers\\/3.png\"]', '43', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:23', '2026-01-31 08:47:23');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('66', 'cover_image', '[\"covers\\/3.png\"]', '44', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:24', '2026-01-31 08:47:24');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('67', 'cover_image', '[\"covers\\/1.png\"]', '45', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:25', '2026-01-31 08:47:25');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('68', 'cover_image', '[\"covers\\/1.png\"]', '46', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:27', '2026-01-31 08:47:27');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('69', 'cover_image', '[\"covers\\/1.png\"]', '47', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:28', '2026-01-31 08:47:28');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('70', 'cover_image', '[\"covers\\/2.png\"]', '48', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:30', '2026-01-31 08:47:30');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('71', 'cover_image', '[\"covers\\/2.png\"]', '49', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:31', '2026-01-31 08:47:31');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('72', 'cover_image', '[\"covers\\/3.png\"]', '50', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:34', '2026-01-31 08:47:34');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('73', 'cover_image', '[\"covers\\/1.png\"]', '51', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:36', '2026-01-31 08:47:36');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('74', 'cover_image', '[\"covers\\/3.png\"]', '52', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:37', '2026-01-31 08:47:37');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('75', 'cover_image', '[\"covers\\/3.png\"]', '53', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:39', '2026-01-31 08:47:39');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('76', 'cover_image', '[\"covers\\/1.png\"]', '54', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:40', '2026-01-31 08:47:40');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('77', 'cover_image', '[\"covers\\/2.png\"]', '55', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:41', '2026-01-31 08:47:41');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('78', 'cover_image', '[\"covers\\/2.png\"]', '56', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:42', '2026-01-31 08:47:42');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('79', 'cover_image', '[\"covers\\/3.png\"]', '57', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:44', '2026-01-31 08:47:44');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('80', 'cover_image', '[\"covers\\/3.png\"]', '58', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:45', '2026-01-31 08:47:45');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('81', 'cover_image', '[\"covers\\/1.png\"]', '59', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:46', '2026-01-31 08:47:46');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('82', 'cover_image', '[\"covers\\/1.png\"]', '60', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:48', '2026-01-31 08:47:48');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('83', 'cover_image', '[\"covers\\/3.png\"]', '61', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:49', '2026-01-31 08:47:49');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('84', 'cover_image', '[\"covers\\/2.png\"]', '62', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:51', '2026-01-31 08:47:51');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('85', 'cover_image', '[\"covers\\/1.png\"]', '63', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:52', '2026-01-31 08:47:52');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('86', 'cover_image', '[\"covers\\/3.png\"]', '64', 'Botble\\JobBoard\\Models\\Account', '2026-01-31 08:47:53', '2026-01-31 08:47:53');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('87', 'featured_image', '[\"jobs\\/img1.png\"]', '1', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:51:58', '2026-01-31 08:51:58');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('88', 'featured_image', '[\"jobs\\/img2.png\"]', '2', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:51:59', '2026-01-31 08:51:59');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('89', 'featured_image', '[\"jobs\\/img3.png\"]', '3', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:00', '2026-01-31 08:52:00');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('90', 'featured_image', '[\"jobs\\/img4.png\"]', '4', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:00', '2026-01-31 08:52:00');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('91', 'featured_image', '[\"jobs\\/img5.png\"]', '5', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:01', '2026-01-31 08:52:01');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('92', 'featured_image', '[\"jobs\\/img6.png\"]', '6', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:02', '2026-01-31 08:52:02');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('93', 'featured_image', '[\"jobs\\/img7.png\"]', '7', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:03', '2026-01-31 08:52:03');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('94', 'featured_image', '[\"jobs\\/img8.png\"]', '8', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:04', '2026-01-31 08:52:04');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('95', 'featured_image', '[\"jobs\\/img9.png\"]', '9', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:05', '2026-01-31 08:52:05');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('96', 'featured_image', '[\"jobs\\/img8.png\"]', '10', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:06', '2026-01-31 08:52:06');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('97', 'featured_image', '[\"jobs\\/img9.png\"]', '11', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:07', '2026-01-31 08:52:07');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('98', 'featured_image', '[\"jobs\\/img8.png\"]', '12', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:08', '2026-01-31 08:52:08');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('99', 'featured_image', '[\"jobs\\/img5.png\"]', '13', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:09', '2026-01-31 08:52:09');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('100', 'featured_image', '[\"jobs\\/img1.png\"]', '14', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:09', '2026-01-31 08:52:09');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('101', 'featured_image', '[\"jobs\\/img9.png\"]', '15', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:10', '2026-01-31 08:52:10');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('102', 'featured_image', '[\"jobs\\/img8.png\"]', '16', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:11', '2026-01-31 08:52:11');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('103', 'featured_image', '[\"jobs\\/img5.png\"]', '17', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:12', '2026-01-31 08:52:12');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('104', 'featured_image', '[\"jobs\\/img6.png\"]', '18', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:13', '2026-01-31 08:52:13');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('105', 'featured_image', '[\"jobs\\/img2.png\"]', '19', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:14', '2026-01-31 08:52:14');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('106', 'featured_image', '[\"jobs\\/img7.png\"]', '20', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:15', '2026-01-31 08:52:15');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('107', 'featured_image', '[\"jobs\\/img6.png\"]', '21', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:16', '2026-01-31 08:52:16');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('108', 'featured_image', '[\"jobs\\/img1.png\"]', '22', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:16', '2026-01-31 08:52:16');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('109', 'featured_image', '[\"jobs\\/img2.png\"]', '23', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:17', '2026-01-31 08:52:17');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('110', 'featured_image', '[\"jobs\\/img2.png\"]', '24', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:18', '2026-01-31 08:52:18');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('111', 'featured_image', '[\"jobs\\/img3.png\"]', '25', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:19', '2026-01-31 08:52:19');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('112', 'featured_image', '[\"jobs\\/img1.png\"]', '26', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:20', '2026-01-31 08:52:20');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('113', 'featured_image', '[\"jobs\\/img1.png\"]', '27', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:21', '2026-01-31 08:52:21');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('114', 'featured_image', '[\"jobs\\/img4.png\"]', '28', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:22', '2026-01-31 08:52:22');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('115', 'featured_image', '[\"jobs\\/img4.png\"]', '29', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:23', '2026-01-31 08:52:23');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('116', 'featured_image', '[\"jobs\\/img7.png\"]', '30', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:24', '2026-01-31 08:52:24');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('117', 'featured_image', '[\"jobs\\/img4.png\"]', '31', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:25', '2026-01-31 08:52:25');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('118', 'featured_image', '[\"jobs\\/img2.png\"]', '32', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:26', '2026-01-31 08:52:26');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('119', 'featured_image', '[\"jobs\\/img2.png\"]', '33', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:27', '2026-01-31 08:52:27');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('120', 'featured_image', '[\"jobs\\/img6.png\"]', '34', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:27', '2026-01-31 08:52:27');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('121', 'featured_image', '[\"jobs\\/img5.png\"]', '35', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:28', '2026-01-31 08:52:28');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('122', 'featured_image', '[\"jobs\\/img9.png\"]', '36', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:29', '2026-01-31 08:52:29');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('123', 'featured_image', '[\"jobs\\/img4.png\"]', '37', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:30', '2026-01-31 08:52:30');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('124', 'featured_image', '[\"jobs\\/img8.png\"]', '38', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:31', '2026-01-31 08:52:31');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('125', 'featured_image', '[\"jobs\\/img3.png\"]', '39', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:32', '2026-01-31 08:52:32');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('126', 'featured_image', '[\"jobs\\/img3.png\"]', '40', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:33', '2026-01-31 08:52:33');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('127', 'featured_image', '[\"jobs\\/img3.png\"]', '41', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:34', '2026-01-31 08:52:34');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('128', 'featured_image', '[\"jobs\\/img1.png\"]', '42', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:34', '2026-01-31 08:52:34');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('129', 'featured_image', '[\"jobs\\/img2.png\"]', '43', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:35', '2026-01-31 08:52:35');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('130', 'featured_image', '[\"jobs\\/img3.png\"]', '44', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:36', '2026-01-31 08:52:36');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('131', 'featured_image', '[\"jobs\\/img1.png\"]', '45', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:37', '2026-01-31 08:52:37');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('132', 'featured_image', '[\"jobs\\/img6.png\"]', '46', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:38', '2026-01-31 08:52:38');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('133', 'featured_image', '[\"jobs\\/img6.png\"]', '47', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:39', '2026-01-31 08:52:39');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('134', 'featured_image', '[\"jobs\\/img4.png\"]', '48', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:40', '2026-01-31 08:52:40');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('135', 'featured_image', '[\"jobs\\/img6.png\"]', '49', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:41', '2026-01-31 08:52:41');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('136', 'featured_image', '[\"jobs\\/img2.png\"]', '50', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:42', '2026-01-31 08:52:42');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('137', 'featured_image', '[\"jobs\\/img9.png\"]', '51', 'Botble\\JobBoard\\Models\\Job', '2026-01-31 08:52:43', '2026-01-31 08:52:43');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('138', 'cover_image', '[\"news\\/cover-image1.png\"]', '1', 'Botble\\Blog\\Models\\Post', '2026-01-31 08:53:42', '2026-01-31 08:53:42');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('139', 'cover_image', '[\"news\\/cover-image2.png\"]', '2', 'Botble\\Blog\\Models\\Post', '2026-01-31 08:53:43', '2026-01-31 08:53:43');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES ('140', 'cover_image', '[\"news\\/cover-image3.png\"]', '3', 'Botble\\Blog\\Models\\Post', '2026-01-31 08:53:45', '2026-01-31 08:53:45');

-- Data for table: post_tags
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('1', '1');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('2', '1');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('3', '1');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('4', '1');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('5', '1');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('1', '2');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('2', '2');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('3', '2');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('4', '2');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('5', '2');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('1', '3');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('2', '3');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('3', '3');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('4', '3');
INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES ('5', '3');

-- Data for table: post_categories
INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES ('1', '1');
INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES ('5', '1');
INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES ('3', '2');
INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES ('7', '2');
INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES ('4', '3');
INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES ('6', '3');

-- Data for table: users
INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES ('1', 'admin@admin.com', '2026-01-31 08:59:03', '$2y$12$E4Vnfz5q.ntZhlkfydUrn.9uIQdMn3ghQwD449Ic4xsv.NNh5tE3u', 'vDh9sRFSvwK1NLQwXv8je5BtCZYrHGAd01abGuGakuro7n6otPr5MpZnCZfu', '2026-01-31 08:59:03', '2026-02-01 00:35:03', 'Admin', 'User', 'admin', NULL, '1', '1', NULL, '2026-02-01 00:35:03');

-- Data for table: activations
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES ('1', '1', '88ecc04e32612f161c7f80aa5622ef55', '1', '2026-01-31 08:59:04', '2026-01-31 08:59:04', '2026-01-31 08:59:04');

-- Data for table: menus
INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Main menu', 'main-menu', 'published', '2026-01-31 08:55:14', '2026-01-31 08:55:14');
INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Resources', 'resources', 'published', '2026-01-31 08:55:18', '2026-01-31 08:55:18');
INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Community', 'community', 'published', '2026-01-31 08:55:19', '2026-01-31 08:55:19');
INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Quick links', 'quick-links', 'published', '2026-01-31 08:55:20', '2026-01-31 08:55:20');
INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES ('5', 'More', 'more', 'published', '2026-01-31 08:55:20', '2026-01-31 08:55:20');

-- Data for table: settings
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('1', 'api_enabled', '0', NULL, '2026-02-01 01:18:53');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('2', 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"faq\",\"gallery\",\"job-board\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]', NULL, '2026-02-01 01:18:53');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('3', 'language_hide_default', '1', NULL, '2026-02-01 01:18:53');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('4', 'language_switcher_display', 'dropdown', NULL, '2026-02-01 01:18:53');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('5', 'language_display', 'all', NULL, '2026-02-01 01:18:53');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('6', 'language_hide_languages', '[]', NULL, '2026-02-01 01:18:53');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('7', 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('8', 'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form', '1', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('9', 'analytics_dashboard_widgets', '0', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('91', 'media_random_hash', '414833257611201e8a010530ba16551a', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('92', 'permalink-botble-blog-models-post', 'blog', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('93', 'permalink-botble-blog-models-category', 'blog', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('94', 'payment_cod_status', '1', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('95', 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('96', 'payment_bank_transfer_status', '1', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('97', 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 69270 213 19.', NULL, '2026-02-01 01:18:54');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('98', 'payment_stripe_payment_type', 'stripe_checkout', NULL, '2026-02-01 01:18:55');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('99', 'show_admin_bar', '1', NULL, '2026-02-01 01:18:55');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('100', 'theme', 'jobbox', NULL, '2026-02-01 01:18:55');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('101', 'admin_logo', 'general/logo-light.png', '2026-02-01 01:26:35', '2026-02-01 01:26:35');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('102', 'admin_favicon', 'general/favicon.png', '2026-02-01 01:26:35', '2026-02-01 01:26:35');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('103', 'theme-jobbox-site_title', 'JobBox - Find Your Dream Job', '2026-02-01 01:26:36', '2026-02-01 01:26:36');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('104', 'theme-jobbox-seo_description', 'Find your dream job or hire the perfect candidate. JobBox is a professional job board platform connecting employers and job seekers.', '2026-02-01 01:26:36', '2026-02-01 01:26:36');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('105', 'theme-jobbox-copyright', '©2026TGNE Solutions. All right reserved.', NULL, '2026-02-01 01:18:56');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('106', 'theme-jobbox-favicon', 'general/favicon.png', '2026-02-01 01:26:37', '2026-02-01 01:26:37');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('107', 'theme-jobbox-logo', 'general/logo.png', '2026-02-01 01:26:36', '2026-02-01 01:26:36');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('108', 'theme-jobbox-hotline', '+(123) 345-6789', NULL, '2026-02-01 01:18:56');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('109', 'theme-jobbox-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', '2026-02-01 01:26:38', '2026-02-01 01:26:38');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('110', 'theme-jobbox-cookie_consent_learn_more_url', '/cookie-policy', '2026-02-01 01:26:38', '2026-02-01 01:26:38');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('111', 'theme-jobbox-cookie_consent_learn_more_text', 'Cookie Policy', '2026-02-01 01:26:39', '2026-02-01 01:26:39');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('112', 'theme-jobbox-homepage_id', '1', '2026-02-01 01:26:38', '2026-02-01 01:26:38');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('113', 'theme-jobbox-blog_page_id', '2', '2026-02-01 01:26:38', '2026-02-01 01:26:38');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('114', 'theme-jobbox-preloader_enabled', '0', '2026-02-01 01:26:37', '2026-02-01 01:26:37');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('115', 'theme-jobbox-job_categories_page_id', '18', NULL, '2026-02-01 01:18:58');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('116', 'theme-jobbox-job_candidates_page_id', '9', NULL, '2026-02-01 01:18:58');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('117', 'theme-jobbox-default_company_cover_image', 'gha.jpg', NULL, '2026-02-01 01:18:59');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('118', 'theme-jobbox-job_companies_page_id', '8', NULL, '2026-02-01 01:18:59');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('119', 'theme-jobbox-job_list_page_id', '7', NULL, '2026-02-01 01:19:00');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('120', 'theme-jobbox-email', 'contact@jobbox.com', NULL, '2026-02-01 01:19:00');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('121', 'theme-jobbox-404_page_image', 'chatgpt-image-jan-30-2026-07-51-06-pm.png', NULL, '2026-02-01 01:19:00');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('122', 'theme-jobbox-background_breadcrumb', 'pages/bg-breadcrumb.png', NULL, '2026-02-01 01:19:00');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('123', 'theme-jobbox-blog_page_template_blog', 'blog_gird_1', NULL, '2026-02-01 01:19:00');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('124', 'theme-jobbox-background_blog_single', 'chatgpt-image-jan-30-2026-07-51-06-pm.png', NULL, '2026-02-01 01:19:00');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('125', 'theme-jobbox-auth_background_image_1', 'pages/img-1.png', NULL, '2026-02-01 01:19:01');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('126', 'theme-jobbox-auth_background_image_2', 'pages/img-2-150x150.png', NULL, '2026-02-01 01:19:01');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('127', 'theme-jobbox-background_cover_candidate_default', 'pages/background-cover-candidate.png', NULL, '2026-02-01 01:19:01');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('128', 'theme-jobbox-job_board_max_salary_filter', '10000', NULL, '2026-02-01 01:19:01');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('129', 'theme-jobbox-social_links', '[{\"name\":\"Facebook\",\"icon\":\"fab fa-facebook-f\",\"url\":\"#\"},{\"name\":\"Twitter\",\"icon\":\"fab fa-twitter\",\"url\":\"#\"},{\"name\":\"LinkedIn\",\"icon\":\"fab fa-linkedin-in\",\"url\":\"#\"},{\"name\":\"Instagram\",\"icon\":\"fab fa-instagram\",\"url\":\"#\"}]', '2026-02-01 01:26:39', '2026-02-01 01:26:39');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('130', 'theme-jobbox-scroll_to_top', 'yes', NULL, '2026-02-01 01:19:01');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('131', 'theme-jobbox-introduction', 'Job is the heart of the design community and the best resource to discover and connect with designers and jobs worldwide.', NULL, '2026-02-01 01:19:02');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('132', 'theme-jobbox-app_advertisement', 'Download our Apps and get extra 15% Discount on your first Order&amp;mldr;!', NULL, '2026-02-01 01:19:02');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('133', 'theme-jobbox-show_site_name', '0', NULL, '2026-02-01 01:19:02');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('134', 'theme-jobbox-site_title_separator', '-', NULL, '2026-02-01 01:19:02');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('135', 'theme-jobbox-seo_title', 'JobBox - Professional Job Board Platform', '2026-02-01 01:26:36', '2026-02-01 01:26:36');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('136', 'theme-jobbox-seo_index', '1', NULL, '2026-02-01 01:19:02');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('137', 'theme-jobbox-seo_og_image', '', NULL, '2026-02-01 01:19:02');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('138', 'theme-jobbox-term_and_privacy_policy_url', '', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('139', 'theme-jobbox-blog_page_template', 'blog_gird_2', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('140', 'theme-jobbox-hide_blog_post_author', '0', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('141', 'theme-jobbox-number_of_posts_in_a_category', '12', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('142', 'theme-jobbox-number_of_posts_in_a_tag', '12', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('143', 'theme-jobbox-hide_job_location_filter', '0', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('144', 'theme-jobbox-job_location_filter_by', 'state', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('145', 'theme-jobbox-limit_results_on_job_location_filter', '10', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('146', 'theme-jobbox-logo_employer_dashboard', 'admin.png', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('147', 'theme-jobbox-default_company_logo', 'admin.png', NULL, '2026-02-01 01:19:03');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('148', 'theme-jobbox-show_map_on_jobs_page', 'yes', NULL, '2026-02-01 01:19:04');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('149', 'theme-jobbox-latitude_longitude_center_on_jobs_page', '43.615134, -76.393186', NULL, '2026-02-01 01:19:04');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('150', 'theme-jobbox-galleries_page_id', NULL, NULL, NULL);
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('151', 'admin_title', 'JobBox Admin', '2026-02-01 01:26:35', '2026-02-01 01:26:35');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('152', 'admin_email', 'admin@jobbox.com', '2026-02-01 01:26:35', '2026-02-01 01:26:35');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('153', 'site_title', 'JobBox - Job Board Platform', '2026-02-01 01:26:35', '2026-02-01 01:26:35');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('154', 'theme-jobbox-preloader_version', 'v2', '2026-02-01 01:26:37', '2026-02-01 01:26:37');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('155', 'theme-jobbox-primary_font', 'Plus Jakarta Sans', '2026-02-01 01:26:37', '2026-02-01 01:26:37');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('156', 'theme-jobbox-primary_color', '#3C65F5', '2026-02-01 01:26:37', '2026-02-01 01:26:37');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('157', 'theme-jobbox-secondary_color', '#05264E', '2026-02-01 01:26:38', '2026-02-01 01:26:38');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('158', 'theme-jobbox-text_color', '#4F5E64', '2026-02-01 01:26:38', '2026-02-01 01:26:38');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('159', 'job_board_enabled_register_as_employer', '1', '2026-02-01 01:26:39', '2026-02-01 01:26:39');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('160', 'job_board_is_enabled_review_feature', '1', '2026-02-01 01:26:39', '2026-02-01 01:26:39');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('161', 'job_board_allow_employer_create_multiple_companies', '1', '2026-02-01 01:26:39', '2026-02-01 01:26:39');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('162', 'job_board_allow_employer_manage_company_info', '1', '2026-02-01 01:26:39', '2026-02-01 01:26:39');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('163', 'job_board_enabled_custom_fields_feature', '1', '2026-02-01 01:26:40', '2026-02-01 01:26:40');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('164', 'job_board_hide_company_email_enabled', '0', '2026-02-01 01:26:40', '2026-02-01 01:26:40');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('165', 'job_board_zip_code_enabled', '0', '2026-02-01 01:26:40', '2026-02-01 01:26:40');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('166', 'job_board_disabled_public_profile', '0', '2026-02-01 01:26:40', '2026-02-01 01:26:40');
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES ('167', 'job_board_enable_credits_system', '0', '2026-02-01 01:26:40', '2026-02-01 01:26:40');

-- Data for table: dashboard_widgets
INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'widget_total_themes', '2026-01-31 09:00:32', '2026-01-31 09:00:32');
INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'widget_total_users', '2026-01-31 09:00:34', '2026-01-31 09:00:34');
INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'widget_total_plugins', '2026-01-31 09:00:34', '2026-01-31 09:00:34');
INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'widget_total_pages', '2026-01-31 09:00:35', '2026-01-31 09:00:35');
INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'widget_posts_recent', '2026-01-31 09:00:35', '2026-01-31 09:00:35');
INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'widget_audit_logs', '2026-01-31 09:00:39', '2026-01-31 09:00:39');

-- Data for table: widgets
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('1', 'NewsletterWidget', 'pre_footer_sidebar', 'jobbox', '0', '{\"id\":\"NewsletterWidget\",\"title\":\"New Things Will Always <br> Update Regularly\",\"background_image\":\"general\\/newsletter-background-image.png\",\"image_left\":\"general\\/newsletter-image-left.png\",\"image_right\":\"general\\/newsletter-image-right.png\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('2', 'SiteInformationWidget', 'footer_sidebar', 'jobbox', '1', '{\"introduction\":\"JobBox is the heart of the design community and the best resource to discover and connect with designers and jobs worldwide.\",\"facebook_url\":\"#\",\"twitter_url\":\"#\",\"linkedin_url\":\"#\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('3', 'CustomMenuWidget', 'footer_sidebar', 'jobbox', '2', '{\"id\":\"CustomMenuWidget\",\"name\":\"Resources\",\"menu_id\":\"resources\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('4', 'CustomMenuWidget', 'footer_sidebar', 'jobbox', '3', '{\"id\":\"CustomMenuWidget\",\"name\":\"Community\",\"menu_id\":\"community\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('5', 'CustomMenuWidget', 'footer_sidebar', 'jobbox', '4', '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('6', 'CustomMenuWidget', 'footer_sidebar', 'jobbox', '5', '{\"id\":\"CustomMenuWidget\",\"name\":\"More\",\"menu_id\":\"more\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('7', 'DownloadWidget', 'footer_sidebar', 'jobbox', '6', '{\"app_store_url\":\"#\",\"app_store_image\":\"general\\/app-store.png\",\"android_app_url\":\"#\",\"google_play_image\":\"general\\/android.png\"}', '2026-01-31 08:45:22', '2026-01-31 08:45:22');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('8', 'BlogSearchWidget', 'primary_sidebar', 'jobbox', '1', '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('9', 'BlogCategoriesWidget', 'primary_sidebar', 'jobbox', '2', '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('10', 'BlogPostsWidget', 'primary_sidebar', 'jobbox', '3', '{\"id\":\"BlogPostsWidget\",\"type\":\"popular\",\"name\":\"Popular Posts\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('11', 'BlogTagsWidget', 'primary_sidebar', 'jobbox', '4', '{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('12', 'BlogSearchWidget', 'blog_sidebar', 'jobbox', '0', '{\"id\":\"BlogSearchWidget\",\"name\":\"Blog Search\",\"description\":\"Search blog posts\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('13', 'BlogPostsWidget', 'blog_sidebar', 'jobbox', '1', '{\"id\":\"BlogPostsWidget\",\"name\":\"Blog posts\",\"description\":\"Blog posts widget.\",\"type\":\"popular\",\"number_display\":5}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('14', 'AdsBannerWidget', 'blog_sidebar', 'jobbox', '2', '{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('15', 'GalleryWidget', 'blog_sidebar', 'jobbox', '3', '{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"title_gallery\":\"Gallery\",\"number_image\":8}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('16', 'AdsBannerWidget', 'candidate_sidebar', 'jobbox', '0', '{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');
INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES ('17', 'AdsBannerWidget', 'company_sidebar', 'jobbox', '0', '{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}', '2026-01-31 08:45:23', '2026-01-31 08:45:23');

-- Data for table: media_files
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('103', '0', 'widget-banner', '8', 'image/png', '11079', 'widgets/widget-banner.png', '[]', '2026-01-31 08:45:21', '2026-01-31 08:45:21', NULL, 'widget-banner', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('126', '0', '01', '10', 'application/pdf', '43496', 'resume/01.pdf', '[]', '2026-01-31 08:46:17', '2026-01-31 08:46:17', NULL, '01', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('127', '0', '1', '11', 'image/png', '3030', 'avatars/1.png', '[]', '2026-01-31 08:46:18', '2026-01-31 08:46:18', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('128', '0', '2', '11', 'image/png', '2754', 'avatars/2.png', '[]', '2026-01-31 08:46:18', '2026-01-31 08:46:18', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('129', '0', '3', '11', 'image/png', '2703', 'avatars/3.png', '[]', '2026-01-31 08:46:18', '2026-01-31 08:46:18', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('130', '0', '1', '12', 'image/png', '395380', 'covers/1.png', '[]', '2026-01-31 08:46:19', '2026-01-31 08:46:19', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('131', '0', '2', '12', 'image/png', '1308067', 'covers/2.png', '[]', '2026-01-31 08:46:20', '2026-01-31 08:46:20', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('132', '0', '3', '12', 'image/png', '301502', 'covers/3.png', '[]', '2026-01-31 08:46:21', '2026-01-31 08:46:21', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('133', '0', '404', '13', 'image/png', '10947', 'general/404.png', '[]', '2026-01-31 08:48:43', '2026-01-31 08:48:43', NULL, '404', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('134', '0', 'android', '13', 'image/png', '477', 'general/android.png', '[]', '2026-01-31 08:48:43', '2026-01-31 08:48:43', NULL, 'android', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('135', '0', 'app-store', '13', 'image/png', '477', 'general/app-store.png', '[]', '2026-01-31 08:48:43', '2026-01-31 08:48:43', NULL, 'app-store', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('136', '0', 'content', '13', 'image/png', '1705', 'general/content.png', '[]', '2026-01-31 08:48:44', '2026-01-31 08:48:44', NULL, 'content', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('137', '0', 'cover-image', '13', 'image/png', '8992', 'general/cover-image.png', '[]', '2026-01-31 08:48:44', '2026-01-31 08:48:44', NULL, 'cover-image', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('138', '0', 'customer', '13', 'image/png', '2794', 'general/customer.png', '[]', '2026-01-31 08:48:44', '2026-01-31 08:48:44', NULL, 'customer', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('139', '0', 'favicon', '13', 'image/png', '709', 'general/favicon.png', '[]', '2026-01-31 08:48:44', '2026-01-31 08:48:44', NULL, 'favicon', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('140', '0', 'finance', '13', 'image/png', '2483', 'general/finance.png', '[]', '2026-01-31 08:48:44', '2026-01-31 08:48:44', NULL, 'finance', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('141', '0', 'human', '13', 'image/png', '2401', 'general/human.png', '[]', '2026-01-31 08:48:45', '2026-01-31 08:48:45', NULL, 'human', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('142', '0', 'img-about2', '13', 'image/png', '36911', 'general/img-about2.png', '[]', '2026-01-31 08:48:45', '2026-01-31 08:48:45', NULL, 'img-about2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('143', '0', 'lightning', '13', 'image/png', '2768', 'general/lightning.png', '[]', '2026-01-31 08:48:46', '2026-01-31 08:48:46', NULL, 'lightning', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('144', '0', 'logo-company', '13', 'image/png', '3164', 'general/logo-company.png', '[]', '2026-01-31 08:48:46', '2026-01-31 08:48:46', NULL, 'logo-company', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('145', '0', 'logo-light', '13', 'image/png', '2290', 'general/logo-light.png', '[]', '2026-01-31 08:48:46', '2026-01-31 08:48:46', NULL, 'logo-light', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('146', '0', 'logo', '13', 'image/png', '2516', 'general/logo.png', '[]', '2026-01-31 08:48:47', '2026-01-31 08:48:47', NULL, 'logo', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('147', '0', 'management', '13', 'image/png', '1967', 'general/management.png', '[]', '2026-01-31 08:48:47', '2026-01-31 08:48:47', NULL, 'management', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('148', '0', 'marketing', '13', 'image/png', '2202', 'general/marketing.png', '[]', '2026-01-31 08:48:47', '2026-01-31 08:48:47', NULL, 'marketing', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('149', '0', 'newsletter-background-image', '13', 'image/png', '9830', 'general/newsletter-background-image.png', '[]', '2026-01-31 08:48:47', '2026-01-31 08:48:47', NULL, 'newsletter-background-image', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('150', '0', 'newsletter-image-left', '13', 'image/png', '4177', 'general/newsletter-image-left.png', '[]', '2026-01-31 08:48:47', '2026-01-31 08:48:47', NULL, 'newsletter-image-left', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('151', '0', 'newsletter-image-right', '13', 'image/png', '2886', 'general/newsletter-image-right.png', '[]', '2026-01-31 08:48:48', '2026-01-31 08:48:48', NULL, 'newsletter-image-right', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('152', '0', 'research', '13', 'image/png', '3200', 'general/research.png', '[]', '2026-01-31 08:48:48', '2026-01-31 08:48:48', NULL, 'research', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('153', '0', 'retail', '13', 'image/png', '2827', 'general/retail.png', '[]', '2026-01-31 08:48:48', '2026-01-31 08:48:48', NULL, 'retail', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('154', '0', 'security', '13', 'image/png', '2952', 'general/security.png', '[]', '2026-01-31 08:48:48', '2026-01-31 08:48:48', NULL, 'security', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('155', '0', 'img-1', '14', 'image/png', '2377', 'authentication/img-1.png', '[]', '2026-01-31 08:48:49', '2026-01-31 08:48:49', NULL, 'img-1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('156', '0', 'img-2', '14', 'image/png', '5009', 'authentication/img-2.png', '[]', '2026-01-31 08:48:49', '2026-01-31 08:48:49', NULL, 'img-2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('187', '0', 'facebook', '16', 'image/png', '796', 'socials/facebook.png', '[]', '2026-01-31 08:49:04', '2026-01-31 08:49:04', NULL, 'facebook', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('188', '0', 'linkedin', '16', 'image/png', '802', 'socials/linkedin.png', '[]', '2026-01-31 08:49:04', '2026-01-31 08:49:04', NULL, 'linkedin', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('189', '0', 'twitter', '16', 'image/png', '1025', 'socials/twitter.png', '[]', '2026-01-31 08:49:04', '2026-01-31 08:49:04', NULL, 'twitter', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('190', '0', 'background-cover-candidate', '17', 'image/png', '436821', 'pages/background-cover-candidate.png', '[]', '2026-01-31 08:49:32', '2026-01-31 08:49:32', NULL, 'background-cover-candidate', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('191', '0', 'background_breadcrumb', '17', 'image/png', '6111', 'pages/background-breadcrumb.png', '[]', '2026-01-31 08:49:33', '2026-01-31 08:49:33', NULL, 'background_breadcrumb', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('192', '0', 'banner-section-search-box', '17', 'image/png', '20501', 'pages/banner-section-search-box.png', '[]', '2026-01-31 08:49:33', '2026-01-31 08:49:33', NULL, 'banner-section-search-box', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('193', '0', 'banner1', '17', 'image/png', '7381', 'pages/banner1.png', '[]', '2026-01-31 08:49:33', '2026-01-31 08:49:33', NULL, 'banner1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('194', '0', 'banner2', '17', 'image/png', '4920', 'pages/banner2.png', '[]', '2026-01-31 08:49:34', '2026-01-31 08:49:34', NULL, 'banner2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('195', '0', 'banner3', '17', 'image/png', '2472', 'pages/banner3.png', '[]', '2026-01-31 08:49:34', '2026-01-31 08:49:34', NULL, 'banner3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('196', '0', 'banner4', '17', 'image/png', '1952', 'pages/banner4.png', '[]', '2026-01-31 08:49:34', '2026-01-31 08:49:34', NULL, 'banner4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('197', '0', 'banner5', '17', 'image/png', '1545', 'pages/banner5.png', '[]', '2026-01-31 08:49:34', '2026-01-31 08:49:34', NULL, 'banner5', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('198', '0', 'banner6', '17', 'image/png', '1609', 'pages/banner6.png', '[]', '2026-01-31 08:49:35', '2026-01-31 08:49:35', NULL, 'banner6', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('199', '0', 'bg-breadcrumb', '17', 'image/png', '14250', 'pages/bg-breadcrumb.png', '[]', '2026-01-31 08:49:35', '2026-01-31 08:49:35', NULL, 'bg-breadcrumb', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('200', '0', 'bg-cat', '17', 'image/png', '60674', 'pages/bg-cat.png', '[]', '2026-01-31 08:49:37', '2026-01-31 08:49:37', NULL, 'bg-cat', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('201', '0', 'bg-left-hiring', '17', 'image/png', '1631', 'pages/bg-left-hiring.png', '[]', '2026-01-31 08:49:38', '2026-01-31 08:49:38', NULL, 'bg-left-hiring', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('202', '0', 'bg-newsletter', '17', 'image/png', '4587', 'pages/bg-newsletter.png', '[]', '2026-01-31 08:49:38', '2026-01-31 08:49:38', NULL, 'bg-newsletter', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('203', '0', 'bg-right-hiring', '17', 'image/png', '3074', 'pages/bg-right-hiring.png', '[]', '2026-01-31 08:49:39', '2026-01-31 08:49:39', NULL, 'bg-right-hiring', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('204', '0', 'controlcard', '17', 'image/png', '7404', 'pages/controlcard.png', '[]', '2026-01-31 08:49:39', '2026-01-31 08:49:39', NULL, 'controlcard', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('205', '0', 'home-page-4-banner', '17', 'image/png', '7596', 'pages/home-page-4-banner.png', '[]', '2026-01-31 08:49:39', '2026-01-31 08:49:39', NULL, 'home-page-4-banner', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('206', '0', 'icon-bottom-banner', '17', 'image/png', '304', 'pages/icon-bottom-banner.png', '[]', '2026-01-31 08:49:39', '2026-01-31 08:49:39', NULL, 'icon-bottom-banner', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('207', '0', 'icon-top-banner', '17', 'image/png', '414', 'pages/icon-top-banner.png', '[]', '2026-01-31 08:49:40', '2026-01-31 08:49:40', NULL, 'icon-top-banner', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('208', '0', 'img-banner', '17', 'image/png', '10542', 'pages/img-banner.png', '[]', '2026-01-31 08:49:40', '2026-01-31 08:49:40', NULL, 'img-banner', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('209', '0', 'img-chart', '17', 'image/png', '7549', 'pages/img-chart.png', '[]', '2026-01-31 08:49:40', '2026-01-31 08:49:40', NULL, 'img-chart', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('210', '0', 'img-job-search', '17', 'image/png', '35569', 'pages/img-job-search.png', '[]', '2026-01-31 08:49:41', '2026-01-31 08:49:41', NULL, 'img-job-search', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('211', '0', 'img-profile', '17', 'image/png', '9177', 'pages/img-profile.png', '[]', '2026-01-31 08:49:41', '2026-01-31 08:49:41', NULL, 'img-profile', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('212', '0', 'img-single', '17', 'image/png', '13060', 'pages/img-single.png', '[]', '2026-01-31 08:49:42', '2026-01-31 08:49:42', NULL, 'img-single', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('213', '0', 'img1', '17', 'image/png', '10246', 'pages/img1.png', '[]', '2026-01-31 08:49:42', '2026-01-31 08:49:42', NULL, 'img1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('214', '0', 'job-tools', '17', 'image/png', '2216', 'pages/job-tools.png', '[]', '2026-01-31 08:49:42', '2026-01-31 08:49:42', NULL, 'job-tools', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('215', '0', 'left-job-head', '17', 'image/png', '14956', 'pages/left-job-head.png', '[]', '2026-01-31 08:49:42', '2026-01-31 08:49:42', NULL, 'left-job-head', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('216', '0', 'newsletter-left', '17', 'image/png', '4177', 'pages/newsletter-left.png', '[]', '2026-01-31 08:49:43', '2026-01-31 08:49:43', NULL, 'newsletter-left', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('217', '0', 'newsletter-right', '17', 'image/png', '2886', 'pages/newsletter-right.png', '[]', '2026-01-31 08:49:43', '2026-01-31 08:49:43', NULL, 'newsletter-right', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('218', '0', 'planning-job', '17', 'image/png', '1623', 'pages/planning-job.png', '[]', '2026-01-31 08:49:43', '2026-01-31 08:49:43', NULL, 'planning-job', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('219', '0', 'right-job-head', '17', 'image/png', '10955', 'pages/right-job-head.png', '[]', '2026-01-31 08:49:43', '2026-01-31 08:49:43', NULL, 'right-job-head', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('220', '0', '1', '18', 'image/jpeg', '6977', 'galleries/1.jpg', '[]', '2026-01-31 08:49:44', '2026-01-31 08:49:44', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('221', '0', '10', '18', 'image/jpeg', '9803', 'galleries/10.jpg', '[]', '2026-01-31 08:49:44', '2026-01-31 08:49:44', NULL, '10', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('222', '0', '2', '18', 'image/jpeg', '6977', 'galleries/2.jpg', '[]', '2026-01-31 08:49:44', '2026-01-31 08:49:44', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('223', '0', '3', '18', 'image/jpeg', '6977', 'galleries/3.jpg', '[]', '2026-01-31 08:49:45', '2026-01-31 08:49:45', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('224', '0', '4', '18', 'image/jpeg', '6977', 'galleries/4.jpg', '[]', '2026-01-31 08:49:45', '2026-01-31 08:49:45', NULL, '4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('225', '0', '5', '18', 'image/jpeg', '6977', 'galleries/5.jpg', '[]', '2026-01-31 08:49:45', '2026-01-31 08:49:45', NULL, '5', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('226', '0', '6', '18', 'image/jpeg', '6977', 'galleries/6.jpg', '[]', '2026-01-31 08:49:46', '2026-01-31 08:49:46', NULL, '6', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('227', '0', '7', '18', 'image/jpeg', '6977', 'galleries/7.jpg', '[]', '2026-01-31 08:49:46', '2026-01-31 08:49:46', NULL, '7', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('228', '0', '8', '18', 'image/jpeg', '9803', 'galleries/8.jpg', '[]', '2026-01-31 08:49:46', '2026-01-31 08:49:46', NULL, '8', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('229', '0', '9', '18', 'image/jpeg', '9803', 'galleries/9.jpg', '[]', '2026-01-31 08:49:46', '2026-01-31 08:49:46', NULL, '9', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('230', '0', 'acer', '19', 'image/png', '285', 'our-partners/acer.png', '[]', '2026-01-31 08:49:47', '2026-01-31 08:49:47', NULL, 'acer', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('231', '0', 'asus', '19', 'image/png', '314', 'our-partners/asus.png', '[]', '2026-01-31 08:49:47', '2026-01-31 08:49:47', NULL, 'asus', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('232', '0', 'dell', '19', 'image/png', '296', 'our-partners/dell.png', '[]', '2026-01-31 08:49:47', '2026-01-31 08:49:47', NULL, 'dell', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('233', '0', 'microsoft', '19', 'image/png', '287', 'our-partners/microsoft.png', '[]', '2026-01-31 08:49:48', '2026-01-31 08:49:48', NULL, 'microsoft', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('234', '0', 'nokia', '19', 'image/png', '308', 'our-partners/nokia.png', '[]', '2026-01-31 08:49:48', '2026-01-31 08:49:48', NULL, 'nokia', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('235', '0', '1', '20', 'image/png', '407', 'job-categories/1.png', '[]', '2026-01-31 08:50:54', '2026-01-31 08:50:54', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('236', '0', '10', '20', 'image/png', '407', 'job-categories/10.png', '[]', '2026-01-31 08:50:54', '2026-01-31 08:50:54', NULL, '10', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('237', '0', '11', '20', 'image/png', '407', 'job-categories/11.png', '[]', '2026-01-31 08:50:54', '2026-01-31 08:50:54', NULL, '11', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('238', '0', '12', '20', 'image/png', '407', 'job-categories/12.png', '[]', '2026-01-31 08:50:54', '2026-01-31 08:50:54', NULL, '12', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('239', '0', '13', '20', 'image/png', '407', 'job-categories/13.png', '[]', '2026-01-31 08:50:55', '2026-01-31 08:50:55', NULL, '13', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('240', '0', '14', '20', 'image/png', '407', 'job-categories/14.png', '[]', '2026-01-31 08:50:55', '2026-01-31 08:50:55', NULL, '14', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('241', '0', '15', '20', 'image/png', '407', 'job-categories/15.png', '[]', '2026-01-31 08:50:55', '2026-01-31 08:50:55', NULL, '15', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('242', '0', '16', '20', 'image/png', '407', 'job-categories/16.png', '[]', '2026-01-31 08:50:55', '2026-01-31 08:50:55', NULL, '16', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('243', '0', '17', '20', 'image/png', '407', 'job-categories/17.png', '[]', '2026-01-31 08:50:55', '2026-01-31 08:50:55', NULL, '17', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('244', '0', '18', '20', 'image/png', '407', 'job-categories/18.png', '[]', '2026-01-31 08:50:56', '2026-01-31 08:50:56', NULL, '18', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('245', '0', '19', '20', 'image/png', '407', 'job-categories/19.png', '[]', '2026-01-31 08:50:56', '2026-01-31 08:50:56', NULL, '19', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('246', '0', '2', '20', 'image/png', '407', 'job-categories/2.png', '[]', '2026-01-31 08:50:56', '2026-01-31 08:50:56', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('247', '0', '3', '20', 'image/png', '407', 'job-categories/3.png', '[]', '2026-01-31 08:50:56', '2026-01-31 08:50:56', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('248', '0', '4', '20', 'image/png', '407', 'job-categories/4.png', '[]', '2026-01-31 08:50:56', '2026-01-31 08:50:56', NULL, '4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('249', '0', '5', '20', 'image/png', '407', 'job-categories/5.png', '[]', '2026-01-31 08:50:57', '2026-01-31 08:50:57', NULL, '5', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('250', '0', '6', '20', 'image/png', '407', 'job-categories/6.png', '[]', '2026-01-31 08:50:57', '2026-01-31 08:50:57', NULL, '6', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('251', '0', '7', '20', 'image/png', '407', 'job-categories/7.png', '[]', '2026-01-31 08:50:57', '2026-01-31 08:50:57', NULL, '7', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('252', '0', '8', '20', 'image/png', '407', 'job-categories/8.png', '[]', '2026-01-31 08:50:57', '2026-01-31 08:50:57', NULL, '8', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('253', '0', '9', '20', 'image/png', '407', 'job-categories/9.png', '[]', '2026-01-31 08:50:57', '2026-01-31 08:50:57', NULL, '9', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('254', '0', 'img-cover-1', '20', 'image/png', '33918', 'job-categories/img-cover-1.png', '[]', '2026-01-31 08:50:58', '2026-01-31 08:50:58', NULL, 'img-cover-1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('255', '0', 'img-cover-2', '20', 'image/png', '33918', 'job-categories/img-cover-2.png', '[]', '2026-01-31 08:50:59', '2026-01-31 08:50:59', NULL, 'img-cover-2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('256', '0', 'img-cover-3', '20', 'image/png', '33918', 'job-categories/img-cover-3.png', '[]', '2026-01-31 08:51:00', '2026-01-31 08:51:00', NULL, 'img-cover-3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('257', '0', 'img1', '21', 'image/png', '5706', 'jobs/img1.png', '[]', '2026-01-31 08:51:52', '2026-01-31 08:51:52', NULL, 'img1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('258', '0', 'img2', '21', 'image/png', '5706', 'jobs/img2.png', '[]', '2026-01-31 08:51:52', '2026-01-31 08:51:52', NULL, 'img2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('259', '0', 'img3', '21', 'image/png', '5706', 'jobs/img3.png', '[]', '2026-01-31 08:51:53', '2026-01-31 08:51:53', NULL, 'img3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('260', '0', 'img4', '21', 'image/png', '5706', 'jobs/img4.png', '[]', '2026-01-31 08:51:53', '2026-01-31 08:51:53', NULL, 'img4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('261', '0', 'img5', '21', 'image/png', '5706', 'jobs/img5.png', '[]', '2026-01-31 08:51:53', '2026-01-31 08:51:53', NULL, 'img5', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('262', '0', 'img6', '21', 'image/png', '5706', 'jobs/img6.png', '[]', '2026-01-31 08:51:53', '2026-01-31 08:51:53', NULL, 'img6', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('263', '0', 'img7', '21', 'image/png', '5706', 'jobs/img7.png', '[]', '2026-01-31 08:51:54', '2026-01-31 08:51:54', NULL, 'img7', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('264', '0', 'img8', '21', 'image/png', '5706', 'jobs/img8.png', '[]', '2026-01-31 08:51:54', '2026-01-31 08:51:54', NULL, 'img8', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('265', '0', 'img9', '21', 'image/png', '5706', 'jobs/img9.png', '[]', '2026-01-31 08:51:54', '2026-01-31 08:51:54', NULL, 'img9', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('266', '0', '1', '22', 'image/jpeg', '9803', 'news/1.jpg', '[]', '2026-01-31 08:53:32', '2026-01-31 08:53:32', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('267', '0', '10', '22', 'image/jpeg', '9803', 'news/10.jpg', '[]', '2026-01-31 08:53:32', '2026-01-31 08:53:32', NULL, '10', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('268', '0', '11', '22', 'image/jpeg', '9803', 'news/11.jpg', '[]', '2026-01-31 08:53:32', '2026-01-31 08:53:32', NULL, '11', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('269', '0', '12', '22', 'image/jpeg', '9803', 'news/12.jpg', '[]', '2026-01-31 08:53:33', '2026-01-31 08:53:33', NULL, '12', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('270', '0', '13', '22', 'image/jpeg', '9803', 'news/13.jpg', '[]', '2026-01-31 08:53:33', '2026-01-31 08:53:33', NULL, '13', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('271', '0', '14', '22', 'image/jpeg', '9803', 'news/14.jpg', '[]', '2026-01-31 08:53:33', '2026-01-31 08:53:33', NULL, '14', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('272', '0', '15', '22', 'image/jpeg', '9803', 'news/15.jpg', '[]', '2026-01-31 08:53:34', '2026-01-31 08:53:34', NULL, '15', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('273', '0', '16', '22', 'image/jpeg', '9803', 'news/16.jpg', '[]', '2026-01-31 08:53:34', '2026-01-31 08:53:34', NULL, '16', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('274', '0', '2', '22', 'image/jpeg', '9803', 'news/2.jpg', '[]', '2026-01-31 08:53:34', '2026-01-31 08:53:34', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('275', '0', '3', '22', 'image/jpeg', '9803', 'news/3.jpg', '[]', '2026-01-31 08:53:35', '2026-01-31 08:53:35', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('276', '0', '4', '22', 'image/jpeg', '9803', 'news/4.jpg', '[]', '2026-01-31 08:53:35', '2026-01-31 08:53:35', NULL, '4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('277', '0', '5', '22', 'image/jpeg', '9803', 'news/5.jpg', '[]', '2026-01-31 08:53:35', '2026-01-31 08:53:35', NULL, '5', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('278', '0', '6', '22', 'image/jpeg', '9803', 'news/6.jpg', '[]', '2026-01-31 08:53:35', '2026-01-31 08:53:35', NULL, '6', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('279', '0', '7', '22', 'image/jpeg', '9803', 'news/7.jpg', '[]', '2026-01-31 08:53:36', '2026-01-31 08:53:36', NULL, '7', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('280', '0', '8', '22', 'image/jpeg', '9803', 'news/8.jpg', '[]', '2026-01-31 08:53:36', '2026-01-31 08:53:36', NULL, '8', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('281', '0', '9', '22', 'image/jpeg', '9803', 'news/9.jpg', '[]', '2026-01-31 08:53:36', '2026-01-31 08:53:36', NULL, '9', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('282', '0', 'cover-image1', '22', 'image/png', '9803', 'news/cover-image1.png', '[]', '2026-01-31 08:53:37', '2026-01-31 08:53:37', NULL, 'cover-image1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('283', '0', 'cover-image2', '22', 'image/png', '9803', 'news/cover-image2.png', '[]', '2026-01-31 08:53:37', '2026-01-31 08:53:37', NULL, 'cover-image2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('284', '0', 'cover-image3', '22', 'image/png', '9803', 'news/cover-image3.png', '[]', '2026-01-31 08:53:37', '2026-01-31 08:53:37', NULL, 'cover-image3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('285', '0', 'img-news1', '22', 'image/png', '9803', 'news/img-news1.png', '[]', '2026-01-31 08:53:38', '2026-01-31 08:53:38', NULL, 'img-news1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('286', '0', 'img-news2', '22', 'image/png', '9803', 'news/img-news2.png', '[]', '2026-01-31 08:53:38', '2026-01-31 08:53:38', NULL, 'img-news2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('287', '0', 'img-news3', '22', 'image/png', '9803', 'news/img-news3.png', '[]', '2026-01-31 08:53:38', '2026-01-31 08:53:38', NULL, 'img-news3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('288', '0', '1', '23', 'image/png', '3943', 'testimonials/1.png', '[]', '2026-01-31 08:55:36', '2026-01-31 08:55:36', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('289', '0', '2', '23', 'image/png', '3943', 'testimonials/2.png', '[]', '2026-01-31 08:55:37', '2026-01-31 08:55:37', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('290', '0', '3', '23', 'image/png', '3943', 'testimonials/3.png', '[]', '2026-01-31 08:55:37', '2026-01-31 08:55:37', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('291', '0', '4', '23', 'image/png', '3943', 'testimonials/4.png', '[]', '2026-01-31 08:55:37', '2026-01-31 08:55:37', NULL, '4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('292', '0', '1', '24', 'image/png', '4294', 'teams/1.png', '[]', '2026-01-31 08:55:52', '2026-01-31 08:55:52', NULL, '1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('293', '0', '2', '24', 'image/png', '4294', 'teams/2.png', '[]', '2026-01-31 08:55:52', '2026-01-31 08:55:52', NULL, '2', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('294', '0', '3', '24', 'image/png', '4294', 'teams/3.png', '[]', '2026-01-31 08:55:52', '2026-01-31 08:55:52', NULL, '3', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('295', '0', '4', '24', 'image/png', '4294', 'teams/4.png', '[]', '2026-01-31 08:55:52', '2026-01-31 08:55:52', NULL, '4', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('296', '0', '5', '24', 'image/png', '4294', 'teams/5.png', '[]', '2026-01-31 08:55:53', '2026-01-31 08:55:53', NULL, '5', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('297', '0', '6', '24', 'image/png', '4294', 'teams/6.png', '[]', '2026-01-31 08:55:53', '2026-01-31 08:55:53', NULL, '6', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('298', '0', '7', '24', 'image/png', '4294', 'teams/7.png', '[]', '2026-01-31 08:55:53', '2026-01-31 08:55:53', NULL, '7', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('299', '0', '8', '24', 'image/png', '4294', 'teams/8.png', '[]', '2026-01-31 08:55:53', '2026-01-31 08:55:53', NULL, '8', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('300', '1', 'admin', '0', 'image/png', '12675', 'admin.png', '[]', '2026-01-31 09:04:55', '2026-01-31 09:04:55', NULL, 'admin', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('301', '1', 'right-job-head-150x150', '0', 'image/png', '11461', 'right-job-head-150x150.png', '[]', '2026-01-31 09:05:17', '2026-01-31 09:05:17', NULL, 'right-job-head-150x150', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('302', '1', 'ChatGPT Image Jan 30, 2026, 07_51_06 PM', '0', 'image/png', '55339', 'chatgpt-image-jan-30-2026-07-51-06-pm.png', '[]', '2026-02-01 01:14:30', '2026-02-01 01:14:30', NULL, 'ChatGPT Image Jan 30, 2026, 07_51_06 PM', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('303', '1', 'img-1', '17', 'image/png', '6241', 'pages/img-1.png', '[]', '2026-02-01 01:16:41', '2026-02-01 01:16:41', NULL, 'img-1', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('304', '1', 'img-2-150x150', '17', 'image/png', '6259', 'pages/img-2-150x150.png', '[]', '2026-02-01 01:16:42', '2026-02-01 01:16:42', NULL, 'img-2-150x150', 'public');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `alt`, `visibility`) VALUES ('305', '1', 'gha', '0', 'image/jpeg', '197094', 'gha.jpg', '[]', '2026-02-01 01:17:37', '2026-02-01 01:17:37', NULL, 'gha', 'public');

-- Data for table: slugs
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('1', 'homepage-1', '1', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:14', '2026-01-31 08:45:14');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('2', 'homepage-2', '2', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:14', '2026-01-31 08:45:14');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('3', 'homepage-3', '3', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:15', '2026-01-31 08:45:15');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('4', 'homepage-4', '4', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:15', '2026-01-31 08:45:15');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('5', 'homepage-5', '5', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:16', '2026-01-31 08:45:16');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('6', 'homepage-6', '6', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:16', '2026-01-31 08:45:16');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('7', 'jobs', '7', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:16', '2026-01-31 08:45:16');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('8', 'companies', '8', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:17', '2026-01-31 08:45:17');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('9', 'candidates', '9', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:17', '2026-01-31 08:45:17');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('10', 'about-us', '10', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:18', '2026-01-31 08:45:18');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('11', 'pricing-plan', '11', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:19', '2026-01-31 08:45:19');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('12', 'contact', '12', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:19', '2026-01-31 08:45:19');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('13', 'blog', '13', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:19', '2026-01-31 08:45:19');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('14', 'cookie-policy', '14', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:19', '2026-01-31 08:45:19');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('15', 'faqs', '15', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:20', '2026-01-31 08:45:20');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('16', 'services', '16', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:20', '2026-01-31 08:45:20');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('17', 'terms', '17', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:20', '2026-01-31 08:45:20');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('18', 'job-categories', '18', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:21', '2026-01-31 08:45:21');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('19', '/', '19', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:45:21', '2026-01-31 08:45:21');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('20', 'content-writer', '1', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:34', '2026-01-31 08:45:34');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('21', 'market-research', '2', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:34', '2026-01-31 08:45:34');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('22', 'marketing-sale', '3', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:35', '2026-01-31 08:45:35');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('23', 'customer-help', '4', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:36', '2026-01-31 08:45:36');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('24', 'finance', '5', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:36', '2026-01-31 08:45:36');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('25', 'software', '6', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:37', '2026-01-31 08:45:37');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('26', 'human-resource', '7', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:37', '2026-01-31 08:45:37');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('27', 'management', '8', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:38', '2026-01-31 08:45:38');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('28', 'retail-products', '9', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:39', '2026-01-31 08:45:39');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('29', 'security-analyst', '10', 'Botble\\JobBoard\\Models\\Category', 'job-categories', '2026-01-31 08:45:39', '2026-01-31 08:45:39');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('30', 'orlando', '1', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:23', '2026-01-31 08:46:23');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('31', 'emmanuelle', '2', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:24', '2026-01-31 08:46:24');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('32', 'sarah', '3', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:25', '2026-01-31 08:46:25');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('33', 'steven', '4', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:27', '2026-01-31 08:46:27');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('34', 'william', '5', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:28', '2026-01-31 08:46:28');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('35', 'deondre', '6', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:29', '2026-01-31 08:46:29');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('36', 'shaun', '7', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:31', '2026-01-31 08:46:31');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('37', 'lawrence', '8', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:32', '2026-01-31 08:46:32');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('38', 'hershel', '9', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:34', '2026-01-31 08:46:34');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('39', 'eriberto', '10', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:35', '2026-01-31 08:46:35');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('40', 'schuyler', '11', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:36', '2026-01-31 08:46:36');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('41', 'korbin', '12', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:37', '2026-01-31 08:46:37');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('42', 'crystel', '13', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:38', '2026-01-31 08:46:38');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('43', 'percival', '14', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:40', '2026-01-31 08:46:40');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('44', 'fatima', '15', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:41', '2026-01-31 08:46:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('45', 'kevin', '16', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:42', '2026-01-31 08:46:42');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('46', 'keshawn', '17', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:44', '2026-01-31 08:46:44');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('47', 'rollin', '18', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:45', '2026-01-31 08:46:45');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('48', 'hailie', '19', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:47', '2026-01-31 08:46:47');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('49', 'eleonore', '20', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:48', '2026-01-31 08:46:48');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('50', 'lily', '21', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:50', '2026-01-31 08:46:50');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('51', 'alvah', '22', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:51', '2026-01-31 08:46:51');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('52', 'danielle', '23', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:52', '2026-01-31 08:46:52');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('53', 'arvid', '24', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:53', '2026-01-31 08:46:53');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('54', 'eve', '25', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:55', '2026-01-31 08:46:55');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('55', 'eugenia', '26', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:56', '2026-01-31 08:46:56');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('56', 'destiny', '27', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:58', '2026-01-31 08:46:58');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('57', 'edyth', '28', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:46:59', '2026-01-31 08:46:59');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('58', 'robbie', '29', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:00', '2026-01-31 08:47:00');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('59', 'abelardo', '30', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:02', '2026-01-31 08:47:02');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('60', 'margarette', '31', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:04', '2026-01-31 08:47:04');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('61', 'kaleigh', '32', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:06', '2026-01-31 08:47:06');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('62', 'lina', '33', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:07', '2026-01-31 08:47:07');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('63', 'abigail', '34', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:09', '2026-01-31 08:47:09');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('64', 'omari', '35', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:10', '2026-01-31 08:47:10');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('65', 'emanuel', '36', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:12', '2026-01-31 08:47:12');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('66', 'grayce', '37', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:14', '2026-01-31 08:47:14');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('67', 'trey', '38', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:16', '2026-01-31 08:47:16');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('68', 'vince', '39', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:17', '2026-01-31 08:47:17');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('69', 'tomasa', '40', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:19', '2026-01-31 08:47:19');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('70', 'aiyana', '41', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:20', '2026-01-31 08:47:20');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('71', 'maxie', '42', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:21', '2026-01-31 08:47:21');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('72', 'ted', '43', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:23', '2026-01-31 08:47:23');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('73', 'dejah', '44', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:24', '2026-01-31 08:47:24');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('74', 'fredy', '45', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:26', '2026-01-31 08:47:26');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('75', 'howard', '46', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:27', '2026-01-31 08:47:27');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('76', 'virgie', '47', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:29', '2026-01-31 08:47:29');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('77', 'kirsten', '48', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:30', '2026-01-31 08:47:30');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('78', 'naomie', '49', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:31', '2026-01-31 08:47:31');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('79', 'rod', '50', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:34', '2026-01-31 08:47:34');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('80', 'breana', '51', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:36', '2026-01-31 08:47:36');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('81', 'jude', '52', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:38', '2026-01-31 08:47:38');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('82', 'jonatan', '53', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:39', '2026-01-31 08:47:39');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('83', 'abbie', '54', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:40', '2026-01-31 08:47:40');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('84', 'maegan', '55', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:41', '2026-01-31 08:47:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('85', 'vern', '56', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:43', '2026-01-31 08:47:43');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('86', 'providenci', '57', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:44', '2026-01-31 08:47:44');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('87', 'aidan', '58', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:45', '2026-01-31 08:47:45');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('88', 'cynthia', '59', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:46', '2026-01-31 08:47:46');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('89', 'kieran', '60', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:48', '2026-01-31 08:47:48');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('90', 'abner', '61', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:50', '2026-01-31 08:47:50');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('91', 'ricardo', '62', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:51', '2026-01-31 08:47:51');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('92', 'jalen', '63', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:53', '2026-01-31 08:47:53');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('93', 'marc', '64', 'Botble\\JobBoard\\Models\\Account', 'candidates', '2026-01-31 08:47:54', '2026-01-31 08:47:54');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('94', '/', '19', 'Botble\\Page\\Models\\Page', '', '2026-01-31 08:50:14', '2026-01-31 08:50:14');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('95', 'illustrator', '1', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:55', '2026-01-31 08:51:55');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('96', 'adobe-xd', '2', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:55', '2026-01-31 08:51:55');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('97', 'figma', '3', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('98', 'sketch', '4', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('99', 'lunacy', '5', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('100', 'php', '6', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('101', 'python', '7', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:57', '2026-01-31 08:51:57');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('102', 'javascript', '8', 'Botble\\JobBoard\\Models\\Tag', 'job-tags', '2026-01-31 08:51:57', '2026-01-31 08:51:57');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('103', 'ui-ux-designer-full-time', '1', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:51:58', '2026-01-31 08:51:58');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('104', 'full-stack-engineer', '2', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:51:59', '2026-01-31 08:51:59');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('105', 'java-software-engineer', '3', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:51:59', '2026-01-31 08:51:59');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('106', 'digital-marketing-manager', '4', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:00', '2026-01-31 08:52:00');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('107', 'frontend-developer', '5', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:01', '2026-01-31 08:52:01');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('108', 'react-native-web-developer', '6', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:02', '2026-01-31 08:52:02');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('109', 'senior-system-engineer', '7', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:03', '2026-01-31 08:52:03');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('110', 'products-manager', '8', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:04', '2026-01-31 08:52:04');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('111', 'lead-quality-control-qa', '9', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:05', '2026-01-31 08:52:05');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('112', 'principal-designer-design-systems', '10', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:06', '2026-01-31 08:52:06');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('113', 'devops-architect', '11', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:07', '2026-01-31 08:52:07');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('114', 'senior-software-engineer-npm-cli', '12', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:08', '2026-01-31 08:52:08');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('115', 'senior-systems-engineer', '13', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:08', '2026-01-31 08:52:08');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('116', 'software-engineer-actions-platform', '14', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:09', '2026-01-31 08:52:09');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('117', 'staff-engineering-manager-actions', '15', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:10', '2026-01-31 08:52:10');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('118', 'staff-engineering-manager-actions-runtime', '16', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:11', '2026-01-31 08:52:11');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('119', 'staff-engineering-manager-packages', '17', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:12', '2026-01-31 08:52:12');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('120', 'staff-software-engineer', '18', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:13', '2026-01-31 08:52:13');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('121', 'systems-software-engineer', '19', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:14', '2026-01-31 08:52:14');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('122', 'senior-compensation-analyst', '20', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:15', '2026-01-31 08:52:15');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('123', 'senior-accessibility-program-manager', '21', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:15', '2026-01-31 08:52:15');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('124', 'analyst-relations-manager-application-security', '22', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:16', '2026-01-31 08:52:16');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('125', 'senior-enterprise-advocate-emea', '23', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:17', '2026-01-31 08:52:17');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('126', 'deal-desk-manager', '24', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:18', '2026-01-31 08:52:18');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('127', 'director-revenue-compensation', '25', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:19', '2026-01-31 08:52:19');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('128', 'program-manager', '26', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:20', '2026-01-31 08:52:20');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('129', 'sr-manager-deal-desk-intl', '27', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:21', '2026-01-31 08:52:21');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('130', 'senior-director-product-management-actions-runners-and-compute-services', '28', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:22', '2026-01-31 08:52:22');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('131', 'alliances-director', '29', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:23', '2026-01-31 08:52:23');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('132', 'corporate-sales-representative', '30', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:24', '2026-01-31 08:52:24');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('133', 'country-leader', '31', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:25', '2026-01-31 08:52:25');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('134', 'customer-success-architect', '32', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:26', '2026-01-31 08:52:26');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('135', 'devops-account-executive-us-public-sector', '33', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:26', '2026-01-31 08:52:26');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('136', 'enterprise-account-executive', '34', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:27', '2026-01-31 08:52:27');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('137', 'senior-engineering-manager-product-security-engineering-paved-paths', '35', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:28', '2026-01-31 08:52:28');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('138', 'customer-reliability-engineer-iii', '36', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:29', '2026-01-31 08:52:29');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('139', 'support-engineer-enterprise-support-japanese', '37', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:30', '2026-01-31 08:52:30');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('140', 'technical-partner-manager', '38', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:31', '2026-01-31 08:52:31');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('141', 'sr-manager-inside-account-management', '39', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:32', '2026-01-31 08:52:32');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('142', 'services-sales-representative', '40', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:32', '2026-01-31 08:52:32');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('143', 'services-delivery-manager', '41', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:33', '2026-01-31 08:52:33');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('144', 'senior-solutions-engineer', '42', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:34', '2026-01-31 08:52:34');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('145', 'senior-service-delivery-engineer', '43', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:35', '2026-01-31 08:52:35');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('146', 'senior-director-global-sales-development', '44', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:36', '2026-01-31 08:52:36');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('147', 'partner-program-manager', '45', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:37', '2026-01-31 08:52:37');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('148', 'principal-cloud-solutions-engineer', '46', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:38', '2026-01-31 08:52:38');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('149', 'senior-cloud-solutions-engineer', '47', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:39', '2026-01-31 08:52:39');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('150', 'senior-customer-success-manager', '48', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:40', '2026-01-31 08:52:40');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('151', 'inside-account-manager', '49', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:41', '2026-01-31 08:52:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('152', 'ux-jobs-board', '50', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:42', '2026-01-31 08:52:42');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('153', 'senior-laravel-developer-tall-stack', '51', 'Botble\\JobBoard\\Models\\Job', 'jobs', '2026-01-31 08:52:43', '2026-01-31 08:52:43');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('154', 'design', '1', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:39', '2026-01-31 08:53:39');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('155', 'lifestyle', '2', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:39', '2026-01-31 08:53:39');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('156', 'travel-tips', '3', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('157', 'healthy', '4', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('158', 'travel-tips', '5', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('159', 'hotel', '6', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:41', '2026-01-31 08:53:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('160', 'nature', '7', 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-31 08:53:41', '2026-01-31 08:53:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('161', 'new', '1', 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-31 08:53:41', '2026-01-31 08:53:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('162', 'event', '2', 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-31 08:53:41', '2026-01-31 08:53:41');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('163', 'interview-question-why-dont-you-have-a-degree', '1', 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-31 08:53:43', '2026-01-31 08:53:43');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('164', '21-job-interview-tips-how-to-make-a-great-impression', '2', 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-31 08:53:44', '2026-01-31 08:53:44');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES ('165', '39-strengths-and-weaknesses-to-discuss-in-a-job-interview', '3', 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-31 08:53:45', '2026-01-31 08:53:45');

-- Data for table: testimonials
INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Ellis Kim', 'Gryphon as if he had to pinch it to the end: then stop.\' These were the two creatures, who had been would have done that?\' she thought. \'I must be a letter, after all: it\'s a French mouse, come over.', 'testimonials/1.png', 'Digital Artist', 'published', '2026-01-31 08:55:38', '2026-01-31 08:55:38');
INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES ('2', 'John Smith', 'Alice had no idea what you\'re at!\" You know the song, perhaps?\' \'I\'ve heard something splashing about in all their simple joys, remembering her own children. \'How should I know?\' said Alice, who was.', 'testimonials/2.png', 'Product designer', 'published', '2026-01-31 08:55:38', '2026-01-31 08:55:38');
INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Sayen Ahmod', 'Mock Turtle went on. Her listeners were perfectly quiet till she had to pinch it to the jury, in a trembling voice:-- \'I passed by his garden, and I never heard it say to itself \'The Duchess! The.', 'testimonials/3.png', 'Developer', 'published', '2026-01-31 08:55:38', '2026-01-31 08:55:38');
INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Tayla Swef', 'Elsie, Lacie, and Tillie; and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t be civil.', 'testimonials/4.png', 'Graphic designer', 'published', '2026-01-31 08:55:38', '2026-01-31 08:55:38');

-- Data for table: faq_categories
INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES ('1', 'General', '0', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06', NULL);
INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES ('2', 'Buying', '1', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06', NULL);
INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES ('3', 'Payment', '2', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06', NULL);
INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES ('4', 'Support', '3', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06', NULL);

-- Data for table: faqs
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Where does it come from?', 'If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.', '1', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('2', 'How JobBox Work?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '1', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('3', 'What is your shipping policy?', 'Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.', '1', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Where To Place A FAQ Page', 'Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.', '1', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Why do we use it?', 'It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.', '1', 'published', '2026-01-31 08:56:06', '2026-01-31 08:56:06');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('6', 'Where can I get some?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '1', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('7', 'Where does it come from?', 'If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.', '2', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('8', 'How JobBox Work?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '2', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('9', 'What is your shipping policy?', 'Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.', '2', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('10', 'Where To Place A FAQ Page', 'Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.', '2', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('11', 'Why do we use it?', 'It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.', '2', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('12', 'Where can I get some?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '2', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('13', 'Where does it come from?', 'If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.', '3', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('14', 'How JobBox Work?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '3', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('15', 'What is your shipping policy?', 'Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.', '3', 'published', '2026-01-31 08:56:07', '2026-01-31 08:56:07');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('16', 'Where To Place A FAQ Page', 'Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.', '3', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('17', 'Why do we use it?', 'It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.', '3', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('18', 'Where can I get some?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '3', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('19', 'Where does it come from?', 'If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.', '4', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('20', 'How JobBox Work?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '4', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('21', 'What is your shipping policy?', 'Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.', '4', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('22', 'Where To Place A FAQ Page', 'Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.', '4', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('23', 'Why do we use it?', 'It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.', '4', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');
INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES ('24', 'Where can I get some?', 'To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.', '4', 'published', '2026-01-31 08:56:08', '2026-01-31 08:56:08');

-- Data for table: countries
INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`, `image`) VALUES ('1', 'France', 'French', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`, `image`) VALUES ('2', 'England', 'English', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`, `image`) VALUES ('3', 'USA', 'American', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`, `image`) VALUES ('4', 'Holland', 'Dutch', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`, `image`) VALUES ('5', 'Denmark', 'Danish', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `code`, `image`) VALUES ('6', 'Germany', 'German', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);

-- Data for table: jb_job_types
INSERT INTO `jb_job_types` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Contract', '0', '0', 'published', '2026-01-31 08:45:40', '2026-01-31 08:45:40');
INSERT INTO `jb_job_types` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Freelance', '0', '0', 'published', '2026-01-31 08:45:40', '2026-01-31 08:45:40');
INSERT INTO `jb_job_types` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Full Time', '0', '1', 'published', '2026-01-31 08:45:40', '2026-01-31 08:45:40');
INSERT INTO `jb_job_types` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Internship', '0', '0', 'published', '2026-01-31 08:45:40', '2026-01-31 08:45:40');
INSERT INTO `jb_job_types` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Part Time', '0', '0', 'published', '2026-01-31 08:45:40', '2026-01-31 08:45:40');

-- Data for table: jb_job_skills
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'JavaScript', '0', '0', 'published', '2026-01-31 08:45:43', '2026-01-31 08:45:43');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'PHP', '0', '0', 'published', '2026-01-31 08:45:43', '2026-01-31 08:45:43');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Python', '0', '0', 'published', '2026-01-31 08:45:43', '2026-01-31 08:45:43');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Laravel', '0', '0', 'published', '2026-01-31 08:45:44', '2026-01-31 08:45:44');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', 'CakePHP', '0', '0', 'published', '2026-01-31 08:45:44', '2026-01-31 08:45:44');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('6', 'WordPress', '0', '0', 'published', '2026-01-31 08:45:44', '2026-01-31 08:45:44');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('7', 'Flutter', '0', '0', 'published', '2026-01-31 08:45:44', '2026-01-31 08:45:44');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('8', 'FilamentPHP', '0', '0', 'published', '2026-01-31 08:45:44', '2026-01-31 08:45:44');
INSERT INTO `jb_job_skills` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('9', 'React.js', '0', '0', 'published', '2026-01-31 08:45:44', '2026-01-31 08:45:44');

-- Data for table: jb_job_shifts
INSERT INTO `jb_job_shifts` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'First Shift (Day)', '0', '0', 'published', '2026-01-31 08:45:40', '2026-01-31 08:45:40');
INSERT INTO `jb_job_shifts` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Second Shift (Afternoon)', '0', '0', 'published', '2026-01-31 08:45:41', '2026-01-31 08:45:41');
INSERT INTO `jb_job_shifts` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Third Shift (Night)', '0', '0', 'published', '2026-01-31 08:45:41', '2026-01-31 08:45:41');
INSERT INTO `jb_job_shifts` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Rotating', '0', '0', 'published', '2026-01-31 08:45:41', '2026-01-31 08:45:41');

-- Data for table: jb_job_experiences
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Fresh', '0', '0', 'published', '2026-01-31 08:45:41', '2026-01-31 08:45:41');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Less Than 1 Year', '1', '0', 'published', '2026-01-31 08:45:41', '2026-01-31 08:45:41');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', '1 Year', '2', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', '2 Year', '3', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', '3 Year', '4', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('6', '4 Year', '5', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('7', '5 Year', '6', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('8', '6 Year', '7', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('9', '7 Year', '8', '0', 'published', '2026-01-31 08:45:42', '2026-01-31 08:45:42');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('10', '8 Year', '9', '0', 'published', '2026-01-31 08:45:43', '2026-01-31 08:45:43');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('11', '9 Year', '10', '0', 'published', '2026-01-31 08:45:43', '2026-01-31 08:45:43');
INSERT INTO `jb_job_experiences` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('12', '10 Year', '11', '0', 'published', '2026-01-31 08:45:43', '2026-01-31 08:45:43');

-- Data for table: jb_language_levels
INSERT INTO `jb_language_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Expert', '0', '0', 'published', '2026-01-31 08:46:16', '2026-01-31 08:46:16');
INSERT INTO `jb_language_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Intermediate', '0', '0', 'published', '2026-01-31 08:46:16', '2026-01-31 08:46:16');
INSERT INTO `jb_language_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Beginner', '0', '0', 'published', '2026-01-31 08:46:16', '2026-01-31 08:46:16');

-- Data for table: jb_career_levels
INSERT INTO `jb_career_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Department Head', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_career_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Entry Level', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_career_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Experienced Professional', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_career_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'GM / CEO / Country Head / President', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_career_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Intern/Student', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');

-- Data for table: jb_functional_areas
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Accountant', '0', '0', 'published', '2026-01-31 08:45:52', '2026-01-31 08:45:52');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Accounts, Finance &amp; Financial Services', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Admin', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Admin Operation', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Administration', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('6', 'Administration Clerical', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('7', 'Advertising', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('8', 'Advertising', '0', '0', 'published', '2026-01-31 08:45:53', '2026-01-31 08:45:53');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('9', 'Advertisement', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('10', 'Architects &amp; Construction', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('11', 'Architecture', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('12', 'Bank Operation', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('13', 'Business Development', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('14', 'Business Management', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('15', 'Business Systems Analyst', '0', '0', 'published', '2026-01-31 08:45:54', '2026-01-31 08:45:54');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('16', 'Clerical', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('17', 'Client Services &amp; Customer Support', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('18', 'Computer Hardware', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('19', 'Computer Networking', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('20', 'Consultant', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('21', 'Content Writer', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('22', 'Corporate Affairs', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('23', 'Creative Design', '0', '0', 'published', '2026-01-31 08:45:55', '2026-01-31 08:45:55');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('24', 'Creative Writer', '0', '0', 'published', '2026-01-31 08:45:56', '2026-01-31 08:45:56');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('25', 'Customer Support', '0', '0', 'published', '2026-01-31 08:45:56', '2026-01-31 08:45:56');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('26', 'Data Entry', '0', '0', 'published', '2026-01-31 08:45:56', '2026-01-31 08:45:56');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('27', 'Data Entry Operator', '0', '0', 'published', '2026-01-31 08:45:56', '2026-01-31 08:45:56');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('28', 'Database Administration (DBA)', '0', '0', 'published', '2026-01-31 08:45:57', '2026-01-31 08:45:57');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('29', 'Development', '0', '0', 'published', '2026-01-31 08:45:57', '2026-01-31 08:45:57');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('30', 'Distribution &amp; Logistics', '0', '0', 'published', '2026-01-31 08:45:57', '2026-01-31 08:45:57');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('31', 'Education &amp; Training', '0', '0', 'published', '2026-01-31 08:45:57', '2026-01-31 08:45:57');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('32', 'Electronics Technician', '0', '0', 'published', '2026-01-31 08:45:58', '2026-01-31 08:45:58');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('33', 'Engineering', '0', '0', 'published', '2026-01-31 08:45:58', '2026-01-31 08:45:58');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('34', 'Engineering Construction', '0', '0', 'published', '2026-01-31 08:45:59', '2026-01-31 08:45:59');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('35', 'Executive Management', '0', '0', 'published', '2026-01-31 08:45:59', '2026-01-31 08:45:59');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('36', 'Executive Secretary', '0', '0', 'published', '2026-01-31 08:45:59', '2026-01-31 08:45:59');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('37', 'Field Operations', '0', '0', 'published', '2026-01-31 08:45:59', '2026-01-31 08:45:59');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('38', 'Front Desk Clerk', '0', '0', 'published', '2026-01-31 08:45:59', '2026-01-31 08:45:59');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('39', 'Front Desk Officer', '0', '0', 'published', '2026-01-31 08:45:59', '2026-01-31 08:45:59');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('40', 'Graphic Design', '0', '0', 'published', '2026-01-31 08:46:00', '2026-01-31 08:46:00');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('41', 'Hardware', '0', '0', 'published', '2026-01-31 08:46:00', '2026-01-31 08:46:00');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('42', 'Health &amp; Medicine', '0', '0', 'published', '2026-01-31 08:46:00', '2026-01-31 08:46:00');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('43', 'Health &amp; Safety', '0', '0', 'published', '2026-01-31 08:46:00', '2026-01-31 08:46:00');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('44', 'Health Care', '0', '0', 'published', '2026-01-31 08:46:00', '2026-01-31 08:46:00');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('45', 'Health Related', '0', '0', 'published', '2026-01-31 08:46:00', '2026-01-31 08:46:00');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('46', 'Hotel Management', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('47', 'Hotel/Restaurant Management', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('48', 'HR', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('49', 'Human Resources', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('50', 'Import &amp; Export', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('51', 'Industrial Production', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('52', 'Installation &amp; Repair', '0', '0', 'published', '2026-01-31 08:46:01', '2026-01-31 08:46:01');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('53', 'Interior Designers &amp; Architects', '0', '0', 'published', '2026-01-31 08:46:02', '2026-01-31 08:46:02');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('54', 'Intern', '0', '0', 'published', '2026-01-31 08:46:02', '2026-01-31 08:46:02');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('55', 'Internship', '0', '0', 'published', '2026-01-31 08:46:02', '2026-01-31 08:46:02');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('56', 'Investment Operations', '0', '0', 'published', '2026-01-31 08:46:02', '2026-01-31 08:46:02');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('57', 'IT Security', '0', '0', 'published', '2026-01-31 08:46:02', '2026-01-31 08:46:02');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('58', 'IT Systems Analyst', '0', '0', 'published', '2026-01-31 08:46:02', '2026-01-31 08:46:02');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('59', 'Legal &amp; Corporate Affairs', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('60', 'Legal Affairs', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('61', 'Legal Research', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('62', 'Logistics &amp; Warehousing', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('63', 'Maintenance/Repair', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('64', 'Management Consulting', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('65', 'Management Information System (MIS)', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('66', 'Managerial', '0', '0', 'published', '2026-01-31 08:46:03', '2026-01-31 08:46:03');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('67', 'Manufacturing', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('68', 'Manufacturing &amp; Operations', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('69', 'Marketing', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('70', 'Marketing', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('71', 'Media - Print &amp; Electronic', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('72', 'Media &amp; Advertising', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('73', 'Medical', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('74', 'Medicine', '0', '0', 'published', '2026-01-31 08:46:04', '2026-01-31 08:46:04');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('75', 'Merchandising', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('76', 'Merchandising &amp; Product Management', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('77', 'Monitoring &amp; Evaluation (M&amp;E)', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('78', 'Network Administration', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('79', 'Network Operation', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('80', 'Online Advertising', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('81', 'Online Marketing', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('82', 'Operations', '0', '0', 'published', '2026-01-31 08:46:05', '2026-01-31 08:46:05');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('83', 'Planning', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('84', 'Planning &amp; Development', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('85', 'PR', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('86', 'Print Media', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('87', 'Printing', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('88', 'Procurement', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('89', 'Product Developer', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('90', 'Product Development', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('91', 'Product Development', '0', '0', 'published', '2026-01-31 08:46:06', '2026-01-31 08:46:06');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('92', 'Product Management', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('93', 'Production', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('94', 'Production &amp; Quality Control', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('95', 'Project Management', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('96', 'Project Management Consultant', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('97', 'Public Relations', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('98', 'QA', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('99', 'QC', '0', '0', 'published', '2026-01-31 08:46:07', '2026-01-31 08:46:07');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('100', 'Qualitative Research', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('101', 'Quality Assurance (QA)', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('102', 'Quality Control', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('103', 'Quality Inspection', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('104', 'Recruiting', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('105', 'Recruitment', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('106', 'Repair &amp; Overhaul', '0', '0', 'published', '2026-01-31 08:46:08', '2026-01-31 08:46:08');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('107', 'Research &amp; Development (R&amp;D)', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('108', 'Research &amp; Evaluation', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('109', 'Research &amp; Fellowships', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('110', 'Researcher', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('111', 'Restaurant Management', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('112', 'Retail', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('113', 'Retail &amp; Wholesale', '0', '0', 'published', '2026-01-31 08:46:09', '2026-01-31 08:46:09');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('114', 'Retail Buyer', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('115', 'Retail Buying', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('116', 'Retail Merchandising', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('117', 'Safety &amp; Environment', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('118', 'Sales', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('119', 'Sales &amp; Business Development', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('120', 'Sales Support', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('121', 'Search Engine Optimization (SEO)', '0', '0', 'published', '2026-01-31 08:46:10', '2026-01-31 08:46:10');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('122', 'Secretarial, Clerical &amp; Front Office', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('123', 'Security', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('124', 'Security &amp; Environment', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('125', 'Security Guard', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('126', 'SEM', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('127', 'SMO', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('128', 'Software &amp; Web Development', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('129', 'Software Engineer', '0', '0', 'published', '2026-01-31 08:46:11', '2026-01-31 08:46:11');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('130', 'Software Testing', '0', '0', 'published', '2026-01-31 08:46:12', '2026-01-31 08:46:12');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('131', 'Stores &amp; Warehousing', '0', '0', 'published', '2026-01-31 08:46:12', '2026-01-31 08:46:12');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('132', 'Supply Chain', '0', '0', 'published', '2026-01-31 08:46:12', '2026-01-31 08:46:12');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('133', 'Supply Chain Management', '0', '0', 'published', '2026-01-31 08:46:12', '2026-01-31 08:46:12');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('134', 'Systems Analyst', '0', '0', 'published', '2026-01-31 08:46:12', '2026-01-31 08:46:12');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('135', 'Teachers/Education, Training &amp; Development', '0', '0', 'published', '2026-01-31 08:46:12', '2026-01-31 08:46:12');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('136', 'Technical Writer', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('137', 'Tele Sale Representative', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('138', 'Telemarketing', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('139', 'Training &amp; Development', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('140', 'Transportation &amp; Warehousing', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('141', 'TSR', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('142', 'Typing', '0', '0', 'published', '2026-01-31 08:46:13', '2026-01-31 08:46:13');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('143', 'Warehousing', '0', '0', 'published', '2026-01-31 08:46:14', '2026-01-31 08:46:14');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('144', 'Web Developer', '0', '0', 'published', '2026-01-31 08:46:14', '2026-01-31 08:46:14');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('145', 'Web Marketing', '0', '0', 'published', '2026-01-31 08:46:14', '2026-01-31 08:46:14');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('146', 'Writer', '0', '0', 'published', '2026-01-31 08:46:14', '2026-01-31 08:46:14');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('147', 'PR', '0', '0', 'published', '2026-01-31 08:46:14', '2026-01-31 08:46:14');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('148', 'QA', '0', '0', 'published', '2026-01-31 08:46:14', '2026-01-31 08:46:14');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('149', 'QC', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('150', 'SEM', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('151', 'SMO', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('152', 'TSR', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('153', 'HR', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('154', 'QA', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('155', 'QC', '0', '0', 'published', '2026-01-31 08:46:15', '2026-01-31 08:46:15');
INSERT INTO `jb_functional_areas` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('156', 'SEM', '0', '0', 'published', '2026-01-31 08:46:16', '2026-01-31 08:46:16');

-- Data for table: jb_categories
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('1', 'Content Writer', NULL, '0', '0', '1', 'published', '2026-01-31 08:51:00', '2026-01-31 08:51:00', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('2', 'Market Research', NULL, '1', '0', '1', 'published', '2026-01-31 08:51:00', '2026-01-31 08:51:00', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('3', 'Marketing &amp; Sale', NULL, '2', '0', '1', 'published', '2026-01-31 08:51:01', '2026-01-31 08:51:01', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('4', 'Customer Help', NULL, '3', '0', '1', 'published', '2026-01-31 08:51:01', '2026-01-31 08:51:01', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('5', 'Finance', NULL, '4', '0', '1', 'published', '2026-01-31 08:51:01', '2026-01-31 08:51:01', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('6', 'Software', NULL, '5', '0', '1', 'published', '2026-01-31 08:51:01', '2026-01-31 08:51:01', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('7', 'Human Resource', NULL, '6', '0', '1', 'published', '2026-01-31 08:51:01', '2026-01-31 08:51:01', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('8', 'Management', NULL, '7', '0', '1', 'published', '2026-01-31 08:51:02', '2026-01-31 08:51:02', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('9', 'Retail &amp; Products', NULL, '8', '0', '0', 'published', '2026-01-31 08:51:02', '2026-01-31 08:51:02', '0');
INSERT INTO `jb_categories` (`id`, `name`, `description`, `order`, `is_default`, `is_featured`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES ('10', 'Security Analyst', NULL, '9', '0', '0', 'published', '2026-01-31 08:51:02', '2026-01-31 08:51:02', '0');

-- Data for table: jb_jobs_categories
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('1', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('1', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('1', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('2', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('2', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('2', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('3', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('3', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('3', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('4', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('4', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('4', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('5', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('5', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('5', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('6', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('6', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('6', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('7', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('7', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('7', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('8', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('8', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('8', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('9', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('9', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('9', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('10', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('10', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('10', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('11', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('11', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('11', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('12', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('12', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('12', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('13', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('13', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('13', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('14', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('14', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('14', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('15', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('15', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('15', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('16', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('16', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('16', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('17', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('17', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('17', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('18', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('18', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('18', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('19', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('19', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('19', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('20', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('20', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('20', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('21', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('21', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('21', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('22', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('22', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('22', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('23', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('23', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('23', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('24', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('24', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('24', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('25', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('25', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('25', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('26', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('26', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('26', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('27', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('27', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('27', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('28', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('28', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('28', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('29', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('29', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('29', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('30', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('30', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('30', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('31', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('31', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('31', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('32', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('32', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('32', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('33', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('33', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('33', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('34', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('34', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('34', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('35', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('35', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('35', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('36', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('36', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('36', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('37', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('37', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('37', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('38', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('38', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('38', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('39', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('39', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('39', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('40', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('40', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('40', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('41', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('41', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('41', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('42', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('42', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('42', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('43', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('43', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('43', '8');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('44', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('44', '3');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('44', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('45', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('45', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('45', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('46', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('46', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('46', '9');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('47', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('47', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('47', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('48', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('48', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('48', '10');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('49', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('49', '2');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('49', '7');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('50', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('50', '4');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('50', '6');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('51', '1');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('51', '5');
INSERT INTO `jb_jobs_categories` (`job_id`, `category_id`) VALUES ('51', '8');

-- Data for table: jb_degree_levels
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Non-Matriculation', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Matriculation/O-Level', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Intermediate/A-Level', '0', '0', 'published', '2026-01-31 08:45:45', '2026-01-31 08:45:45');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Bachelors', '0', '0', 'published', '2026-01-31 08:45:46', '2026-01-31 08:45:46');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Masters', '0', '0', 'published', '2026-01-31 08:45:46', '2026-01-31 08:45:46');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('6', 'MPhil/MS', '0', '0', 'published', '2026-01-31 08:45:46', '2026-01-31 08:45:46');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('7', 'PHD/Doctorate', '0', '0', 'published', '2026-01-31 08:45:46', '2026-01-31 08:45:46');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('8', 'Certification', '0', '0', 'published', '2026-01-31 08:45:46', '2026-01-31 08:45:46');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('9', 'Diploma', '0', '0', 'published', '2026-01-31 08:45:46', '2026-01-31 08:45:46');
INSERT INTO `jb_degree_levels` (`id`, `name`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('10', 'Short Course', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');

-- Data for table: jb_degree_types
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Matric in Arts', '2', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Matric in Science', '2', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('3', 'O-Levels', '2', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('4', 'A-Levels', '3', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Faculty of Arts', '3', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('6', 'Faculty of Science (Pre-medical)', '3', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('7', 'Faculty of Science (Pre-Engineering)', '3', '0', '0', 'published', '2026-01-31 08:45:47', '2026-01-31 08:45:47');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('8', 'Intermediate in Computer Science', '3', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('9', 'Intermediate in Commerce', '3', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('10', 'Intermediate in General Science', '3', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('11', 'Bachelors in Arts', '4', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('12', 'Bachelors in Architecture', '4', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('13', 'Bachelors in Business Administration', '4', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('14', 'Bachelors in Commerce', '4', '0', '0', 'published', '2026-01-31 08:45:48', '2026-01-31 08:45:48');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('15', 'Bachelors of Dental Surgery', '4', '0', '0', 'published', '2026-01-31 08:45:49', '2026-01-31 08:45:49');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('16', 'Bachelors of Education', '4', '0', '0', 'published', '2026-01-31 08:45:49', '2026-01-31 08:45:49');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('17', 'Bachelors in Engineering', '4', '0', '0', 'published', '2026-01-31 08:45:49', '2026-01-31 08:45:49');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('18', 'Bachelors in Pharmacy', '4', '0', '0', 'published', '2026-01-31 08:45:49', '2026-01-31 08:45:49');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('19', 'Bachelors in Science', '4', '0', '0', 'published', '2026-01-31 08:45:49', '2026-01-31 08:45:49');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('20', 'Bachelors of Science in Nursing (Registered Nursing)', '4', '0', '0', 'published', '2026-01-31 08:45:49', '2026-01-31 08:45:49');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('21', 'Bachelors in Law', '4', '0', '0', 'published', '2026-01-31 08:45:50', '2026-01-31 08:45:50');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('22', 'Bachelors in Technology', '4', '0', '0', 'published', '2026-01-31 08:45:50', '2026-01-31 08:45:50');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('23', 'BCS/BS', '4', '0', '0', 'published', '2026-01-31 08:45:50', '2026-01-31 08:45:50');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('24', 'Doctor of Veterinary Medicine', '4', '0', '0', 'published', '2026-01-31 08:45:50', '2026-01-31 08:45:50');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('25', 'MBBS', '4', '0', '0', 'published', '2026-01-31 08:45:50', '2026-01-31 08:45:50');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('26', 'Post Registered Nursing B.S.', '4', '0', '0', 'published', '2026-01-31 08:45:50', '2026-01-31 08:45:50');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('27', 'Masters in Arts', '5', '0', '0', 'published', '2026-01-31 08:45:51', '2026-01-31 08:45:51');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('28', 'Masters in Business Administration', '5', '0', '0', 'published', '2026-01-31 08:45:51', '2026-01-31 08:45:51');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('29', 'Masters in Commerce', '5', '0', '0', 'published', '2026-01-31 08:45:51', '2026-01-31 08:45:51');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('30', 'Masters of Education', '5', '0', '0', 'published', '2026-01-31 08:45:51', '2026-01-31 08:45:51');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('31', 'Masters in Law', '5', '0', '0', 'published', '2026-01-31 08:45:51', '2026-01-31 08:45:51');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('32', 'Masters in Science', '5', '0', '0', 'published', '2026-01-31 08:45:52', '2026-01-31 08:45:52');
INSERT INTO `jb_degree_types` (`id`, `name`, `degree_level_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES ('33', 'Executive Masters in Business Administration', '5', '0', '0', 'published', '2026-01-31 08:45:52', '2026-01-31 08:45:52');

-- Data for table: jb_jobs_skills
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('1', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('2', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('3', '9');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('4', '2');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('5', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('6', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('7', '7');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('8', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('9', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('10', '5');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('11', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('12', '5');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('13', '6');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('14', '3');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('15', '9');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('16', '6');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('17', '8');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('18', '7');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('19', '3');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('20', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('21', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('22', '3');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('23', '5');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('24', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('25', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('26', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('27', '8');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('28', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('29', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('30', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('31', '5');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('32', '6');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('33', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('34', '6');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('35', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('36', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('37', '9');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('38', '3');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('39', '2');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('40', '7');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('41', '2');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('42', '3');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('43', '9');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('44', '6');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('45', '1');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('46', '8');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('47', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('48', '8');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('49', '6');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('50', '4');
INSERT INTO `jb_jobs_skills` (`job_id`, `job_skill_id`) VALUES ('51', '9');

-- Data for table: jb_accounts
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('1', 'Orlando', 'Bins', 'Software Developer', NULL, 'employer@archielite.com', '$2y$12$MyZVFcY/EVyLCuUJFKoB/OeKuKUuplEEqna4eDLL/wSkwNKb9COVW', '127', '2007-03-28 10:37:30', '+13476751040', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '447 Ledner Shoals Apt. 194
Port Genevieve, NV 04652-9829', 'For anything tougher than suet; Yet you turned a back-somersault in at once.\' And in she went. Once more she found to be seen--everything seemed to have the experiment tried. \'Very true,\' said the.', '1', '847', '1', NULL, '2026-01-31 08:46:22', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('2', 'Emmanuelle', 'Collins', 'Creative Designer', NULL, 'job_seeker@archielite.com', '$2y$12$F3w1r6DRsA7i4LFT74CzD.okueNuoEjcaIox5AI2z9gE3C.zhO6xq', '129', '1992-02-29 01:26:50', '+18569435815', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '54551 Jessyca Union Suite 902
Blickfurt, NM 57236-2370', 'There was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, \'and those twelve creatures,\' (she was rather doubtful whether she could have been changed several times since then.\'.', '1', '3389', '1', NULL, '2026-01-31 08:46:23', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('3', 'Sarah', 'Harding', 'Creative Designer', NULL, 'sarah_harding@archielite.com', '$2y$12$J3n6qDrledswZZzK.SO9z.afK/hjF9jayjsgwP/VieBSBgDBlhVQ.', '127', '1995-12-10 03:48:20', '+19292490201', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '356 Shanna Squares
Parisianbury, RI 40876-5219', 'I think.\' And she kept fanning herself all the rats and--oh dear!\' cried Alice in a natural way. \'I thought it would all come wrong, and she crossed her hands up to them to sell,\' the Hatter went on.', '1', '4854', '0', NULL, '2026-01-31 08:46:25', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('4', 'Steven', 'Jobs', 'Creative Designer', NULL, 'steven_jobs@archielite.com', '$2y$12$z4kpyvTck9rthBawJ.KfTOo8Q7I6yt4tQvNe1Nk6LkbQjbt7RJDyC', '128', '2002-01-03 21:25:19', '+12398158334', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '448 Hudson Port
South Sedrick, NJ 68139-1713', 'Alice did not come the same age as herself, to see that she did not sneeze, were the cook, to see the Mock Turtle a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen.', '1', '4815', '1', NULL, '2026-01-31 08:46:26', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('5', 'William', 'Kent', 'Creative Designer', NULL, 'william_kent@archielite.com', '$2y$12$9ZePsbqGmdiB2gAZQWBVJugK87eiVJyK7wKGROptl69gNAHTbDNOO', '129', '1987-10-10 14:15:02', '+14785205367', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '305 Clemmie Flats Apt. 688
New Verda, RI 89844-0590', 'March Hare. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Queen put on your shoes and.', '1', '4918', '1', NULL, '2026-01-31 08:46:27', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('6', 'Deondre', 'Swift', 'Queen was in the.', NULL, 'ngerhold@emmerich.net', '$2y$12$Ok0mOJ0iPJW7rz8KWxs46.vdL6AxqZjUjVv5NRDw2uK9owh/Hnhsa', '129', '1988-06-01 10:45:18', '+15517895963', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '7439 Mills Vista Apt. 166
East Christmouth, WV 20744-6566', 'Gryphon only answered \'Come on!\' cried the Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' said.', '1', '514', '1', NULL, '2026-01-31 08:46:29', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('7', 'Shaun', 'Deckow', 'Pat, what\'s that.', NULL, 'whamill@eichmann.com', '$2y$12$W7iMNFsriV6G.LsBJaFLAu5oC.OQBnEbgxD2/LMFlHR3CTwc9FdXa', '127', '2017-01-06 10:05:36', '+19403860516', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '54499 Katheryn Drive Suite 610
East Amira, VT 01866', 'Majesty,\' the Hatter replied. \'Of course not,\' said the Caterpillar angrily, rearing itself upright as it can be,\' said the King, \'or I\'ll have you executed, whether you\'re a little startled when.', '1', '1491', '1', NULL, '2026-01-31 08:46:30', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('8', 'Lawrence', 'Ernser', 'Sir, With no jury.', NULL, 'crist.cleora@yahoo.com', '$2y$12$tzjfgpRONVbruk/uSZAHIuo05qVVFOBAYYK3rgicwVA3ETDdu9AOW', '128', '2014-02-17 02:01:12', '+16808807255', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '4105 Mckayla Trace
Beerfort, AR 24763', 'Alice, \'it\'ll never do to come before that!\' \'Call the next verse,\' the Gryphon in an undertone, \'important--unimportant--unimportant--important--\' as if he doesn\'t begin.\' But she went on, turning.', '1', '626', '1', NULL, '2026-01-31 08:46:32', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('9', 'Hershel', 'Mertz', 'THAT in a minute.', NULL, 'oconner.taya@hotmail.com', '$2y$12$COzdfnLhbSe6bhrV/Zv4Aea1LMjCj7rYXnE8YupebIvITtWgjyFzO', '127', '2004-12-19 21:12:58', '+12403584122', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '4580 Hermann Spur Suite 767
Ferryfort, VT 50998-6778', 'Gryphon, and all of you, and must know better\'; and this Alice would not join the dance. Would not, could not, would not open any of them. However, on the breeze that followed them, the melancholy.', '1', '2656', '0', NULL, '2026-01-31 08:46:33', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('10', 'Eriberto', 'Wintheiser', 'Duchess, digging.', NULL, 'giovanna.okeefe@kling.com', '$2y$12$0oRaotykwJV4ikpYntW/neyLaFx.IBZlEs9E3sJojvE4zxfn7RWje', '127', '2013-04-16 07:06:21', '+16789206377', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '1176 Dean Gardens
South Ewald, NY 92443-3042', 'Queen, and in a sorrowful tone; \'at least there\'s no meaning in it, \'and what is the driest thing I ever heard!\' \'Yes, I think I must have been ill.\' \'So they were,\' said the March Hare had just.', '1', '1346', '1', NULL, '2026-01-31 08:46:34', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('11', 'Schuyler', 'Schuster', 'Dodo had paused as.', NULL, 'orunolfsson@yahoo.com', '$2y$12$L164OFRiENQdPjAaex6F.u5FvBEuHfVAZYOHtk3Zw99u.wSdYeaTW', '127', '1993-05-07 09:38:24', '+18702072055', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '836 Eichmann Trail
South Millieton, AL 71378', 'I fell off the top of her skirt, upsetting all the rats and--oh dear!\' cried Alice (she was so large in the distance, screaming with passion. She had already heard her sentence three of her head to.', '1', '620', '0', NULL, '2026-01-31 08:46:35', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('12', 'Korbin', 'O\'Reilly', 'Edwin and Morcar.', NULL, 'omills@yundt.org', '$2y$12$b8qeOZgJCZUsKURJC./N7eDumjAEPouV/4xPiZXlw0RYnnrYJQU5i', '128', '2000-07-27 19:54:53', '+13512452133', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '37130 McGlynn Summit
Pfeffermouth, NM 15741-0866', 'Alice, \'when one wasn\'t always growing larger and smaller, and being so many out-of-the-way things had happened lately, that Alice had no very clear notion how delightful it will be much the most.', '1', '2163', '0', NULL, '2026-01-31 08:46:37', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('13', 'Crystel', 'Pfeffer', 'Caterpillar. \'Not.', NULL, 'douglas.herzog@hotmail.com', '$2y$12$agYRqe.dpFyK8keqY/cnLePym104TOZ7ootCvhL/KZ.lz55d7gEfK', '128', '2019-10-24 00:03:11', '+19176489809', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '3279 Oleta Green Apt. 948
North Chadrickfort, MS 49766-0441', 'I ought to tell them something more. \'You promised to tell me who YOU are, first.\' \'Why?\' said the Queen, the royal children; there were any tears. No, there were three little sisters--they were.', '1', '3561', '0', NULL, '2026-01-31 08:46:38', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('14', 'Percival', 'Cremin', 'Cheshire Cat: now.', NULL, 'kaylie.cruickshank@white.info', '$2y$12$Nh9fkoqNdMl8isR/PlCtGOq//NLSAubWWJDWT4o1kiijh6t0Dt6eO', '129', '1979-07-21 18:25:50', '+16509714680', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '5027 Considine Plaza
Alessandrotown, GA 48516-6182', 'For, you see, Alice had learnt several things of this was his first speech. \'You should learn not to make SOME change in my own tears! That WILL be a queer thing, to be a queer thing, to be done, I.', '1', '4579', '0', NULL, '2026-01-31 08:46:39', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('15', 'Fatima', 'Herman', 'Dinah, if I know.', NULL, 'russ.osinski@schoen.com', '$2y$12$lliulKFqoiqaFeKBUejAOOWuh7RqwWr7d45Rb28Qq13xnKhhJ1G1a', '128', '2014-12-22 23:55:04', '+19896143134', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '1751 Witting Radial
Port Junius, CO 49390', 'This of course, to begin with,\' the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to the dance. \'\"What matters it how far we go?\" his scaly.', '1', '4844', '0', NULL, '2026-01-31 08:46:41', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('16', 'Kevin', 'Reichert', 'Gryphon, and the.', NULL, 'cristina66@rowe.org', '$2y$12$ruoIU.r8JOGnGmPT6NlWUuUT5hSRYByZHWhwNCPlcmXO5U10ae2xO', '128', '2016-08-07 05:27:46', '+16824703736', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '71729 Legros Fort Suite 065
Lewismouth, HI 28109-2428', 'Luckily for Alice, the little golden key in the other. In the very tones of her head impatiently; and, turning to Alice. \'Nothing,\' said Alice. \'Well, then,\' the Gryphon in an angry tone, \'Why, Mary.', '1', '3952', '0', NULL, '2026-01-31 08:46:42', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('17', 'Keshawn', 'Witting', 'Mock Turtle said.', NULL, 'gracie70@yahoo.com', '$2y$12$r/.64tOFy6H5spt21qeosO1OGnvYsEw5Zt2gDeMKfMH4ojbGhurmi', '128', '1984-07-07 18:50:05', '+15622203266', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '63954 Kemmer Ridge
Niahaven, AK 40601', 'What would become of it; and as Alice could see it quite plainly through the door, she found to be no use going back to my boy, I beat him when he sneezes; For he can EVEN finish, if he had a large.', '1', '4104', '1', NULL, '2026-01-31 08:46:43', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('18', 'Rollin', 'Mitchell', 'She went in search.', NULL, 'haag.elda@schamberger.biz', '$2y$12$hEtLO4rPnTdnKrYwfzrsHuztWJtuMI/EzWAV84PSV8mKphynKmdPC', '127', '1976-12-26 12:58:57', '+12398927854', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '5576 Elta Drive
South Ilafurt, OK 98915', 'I think?\' he said to herself, \'the way all the rats and--oh dear!\' cried Alice, with a little shriek, and went in. The door led right into it. \'That\'s very curious!\' she thought. \'I must be off, and.', '1', '3162', '0', NULL, '2026-01-31 08:46:45', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('19', 'Hailie', 'Schmeler', 'Duchess, digging.', NULL, 'jwhite@yahoo.com', '$2y$12$ulD86VM5wDsHxL/3m/2qxeITpJvc3mvfFoSKg3/CVU5A6lugvBlRO', '127', '1983-11-18 01:14:58', '+17573844532', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '61163 Bettye Cove
Hicklefurt, SC 57075', 'Lizard\'s slate-pencil, and the sounds will take care of the officers: but the Gryphon replied rather crossly: \'of course you know about it, so she went on, \'that they\'d let Dinah stop in the last.', '1', '3222', '0', NULL, '2026-01-31 08:46:46', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('20', 'Eleonore', 'Ziemann', 'Lizard, who seemed.', NULL, 'johnston.romaine@yahoo.com', '$2y$12$wt7fAhq0MDtIwwy1hpA0NuQ2h6t/dQz0bIYfAt5bqzvZC0IwVkNum', '128', '1998-12-16 15:04:53', '+14303430636', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '95700 Jude Mall
Murrayhaven, MN 87861', 'Alice could hear the Rabbit hastily interrupted. \'There\'s a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Cat. \'I don\'t think it\'s at all fairly,\' Alice began, in a.', '1', '2982', '1', NULL, '2026-01-31 08:46:48', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('21', 'Lily', 'Homenick', 'Hatter went on in.', NULL, 'alphonso67@yahoo.com', '$2y$12$D7.nStFWJHTSAZePnOhiuuRNJ3nP5HCzzrGcWOCRVpr5dXkq17W/O', '129', '1995-03-06 19:49:44', '+18328924942', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '567 Wehner Plain Apt. 516
Abshirechester, LA 31312', 'Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it say to this: so she tried to say which), and they sat down and make out what it might be some sense in your.', '1', '4473', '1', NULL, '2026-01-31 08:46:49', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('22', 'Alvah', 'Gerhold', 'Mock Turtle: \'why.', NULL, 'alaina15@mante.com', '$2y$12$T.1FSjQGk0RobUxzDZWtjeGCq8S7/31p8GYmF5saW3beFschPd2za', '127', '1986-04-23 11:37:45', '+16304657241', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '6302 Armstrong Tunnel
Rauberg, MS 84766-1056', 'Just then she looked down at her as she heard a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a hoarse growl, \'the world would go round and look up.', '1', '3746', '0', NULL, '2026-01-31 08:46:51', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('23', 'Danielle', 'Stiedemann', 'Mouse did not get.', NULL, 'ffadel@gmail.com', '$2y$12$R6bnBH77JsDv5HZfHmC/u.CV0Rh6L8Qceh8dILXwHyEMukSWfPdYa', '128', '1977-08-29 00:37:05', '+13644391035', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '590 Rowland Forks Suite 775
Lake Berta, UT 07465', 'Mock Turtle at last, and managed to put down her flamingo, and began bowing to the law, And argued each case with MINE,\' said the Mock Turtle with a teacup in one hand and a Long Tale They were.', '1', '2465', '0', NULL, '2026-01-31 08:46:52', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('24', 'Arvid', 'Dach', 'YOUR table,\' said.', NULL, 'stracke.santina@welch.info', '$2y$12$CXHPe3GhbeEhkIGRrnb47.gvWAMZZl2kmS4TO/868U4BX4LdFd6Ne', '127', '1983-04-15 13:39:50', '+18142127695', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '75696 Konopelski Green
South Cordie, ND 62612-0771', 'Dinah, and saying to herself, \'in my going out altogether, like a mouse, you know. But do cats eat bats, I wonder?\' As she said to the other: the only one way up as the door began sneezing all at.', '1', '271', '1', NULL, '2026-01-31 08:46:53', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('25', 'Eve', 'Lemke', 'Hatter. \'You MUST.', NULL, 'rylan.dooley@hotmail.com', '$2y$12$X.0rJ0mgnv1RsZd1W/6cbuu7Bt9bbsOiDEo86SIrQAVpQu4.utybS', '127', '1984-11-06 20:19:50', '+17815718673', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '24212 Gleichner Oval Apt. 627
West Samsonshire, DC 89476-4710', 'The Dormouse shook itself, and was going to begin with,\' said the Cat, and vanished again. Alice waited a little, \'From the Queen. \'Their heads are gone, if it likes.\' \'I\'d rather finish my tea,\'.', '1', '4451', '1', NULL, '2026-01-31 08:46:54', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('26', 'Eugenia', 'Sauer', 'The Queen turned.', NULL, 'talia.jerde@yahoo.com', '$2y$12$ezVbT/C97TOcz/O5CoaKTu70qngTl0demxe8wcOjZULtPtaaM1rnW', '127', '2008-03-24 18:08:12', '+15347510190', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '28784 Ritchie Trail Apt. 501
Wintheiserfurt, CO 06473', 'The poor little thing grunted in reply (it had left off quarrelling with the time,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she had a little glass box that was sitting on the.', '1', '2635', '0', NULL, '2026-01-31 08:46:56', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('27', 'Destiny', 'Goodwin', 'But said I could.', NULL, 'torphy.laurel@gmail.com', '$2y$12$Mn8YC9LvahJ7t.DAo/RZWONmHwFIsaozcVwX.oFjOxdGJ/IE6.WZK', '129', '1991-09-08 15:36:47', '+14346795762', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '17649 Funk Spur Apt. 328
East Jan, MO 34487-9139', 'English. \'I don\'t much care where--\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a voice sometimes choked with sobs, to sing \"Twinkle, twinkle, little bat! How I wonder if I like.', '1', '1175', '0', NULL, '2026-01-31 08:46:57', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('28', 'Edyth', 'Cummerata', 'I suppose I ought.', NULL, 'schoen.mattie@gmail.com', '$2y$12$472vLZtD.On2SOPHYxV5tuQV5dNfD346C8N4LWt3R5wJWrF23Mq4C', '129', '1989-05-29 00:39:58', '+19164536282', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '704 Ebert Mission Apt. 240
Strackestad, IL 21008', 'Dormouse. \'Fourteenth of March, I think you\'d better ask HER about it.\' (The jury all looked so grave and anxious.) Alice could bear: she got up this morning, but I think that will be much the same.', '1', '361', '0', NULL, '2026-01-31 08:46:58', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('29', 'Robbie', 'Leffler', 'Soup of the birds.', NULL, 'evalyn.marks@haley.net', '$2y$12$KIiMM6eOvLx4E0QBOolcP.RoVy/4FlrQ5wnkmo1Yie1peS.7eFkpC', '127', '1995-08-20 06:48:56', '+13078044525', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '60886 Simonis Course Apt. 060
Walshtown, TN 19683-8553', 'King, and the great hall, with the time,\' she said to the door. \'Call the next verse.\' \'But about his toes?\' the Mock Turtle. \'No, no! The adventures first,\' said the Duchess, \'as pigs have to beat.', '1', '677', '0', NULL, '2026-01-31 08:47:00', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('30', 'Abelardo', 'Russel', 'She had just upset.', NULL, 'zola87@marvin.com', '$2y$12$rSYE4EOWQjsNv94unWQg/eS8zwLp5GHi3q/XAb4IOpV6VEbX24kwm', '128', '2008-09-04 08:22:20', '+17194838131', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '5609 Abernathy Springs
Simton, WA 66141', 'I should think!\' (Dinah was the only difficulty was, that if something wasn\'t done about it in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the Mock Turtle.', '1', '2602', '0', NULL, '2026-01-31 08:47:01', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('31', 'Margarette', 'Luettgen', 'Duchess: \'what a.', NULL, 'jaquelin.abshire@hintz.info', '$2y$12$ry01L8ND4pD7.IPOpdXCIO2gUfHbvbwiK4WIuFLzGLJZybXAnMbYS', '127', '1972-12-09 06:08:47', '+17163701028', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '8023 Issac Burgs Suite 332
West Karley, KY 14815', 'PROVES his guilt,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes filled with cupboards and book-shelves; here and there. There was nothing so VERY remarkable in that.', '1', '1265', '0', NULL, '2026-01-31 08:47:04', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('32', 'Kaleigh', 'Schmitt', 'For some minutes.', NULL, 'bmills@yahoo.com', '$2y$12$MsfKPfSHfVRSSc8PK3skXuTc.JrCs7Bu9lsc/Qir24v4IYYG56r0u', '128', '2002-08-18 20:37:49', '+14847687131', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '8540 Doyle Light Suite 630
Bartonport, OR 38924', 'Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Why, SHE,\' said the King triumphantly.', '1', '1894', '0', NULL, '2026-01-31 08:47:05', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('33', 'Lina', 'Jaskolski', 'I shall only look.', NULL, 'zstracke@haag.biz', '$2y$12$XTc8w5G3uzw.mnKK24r2felL1hGx8j3q.BU4pjNE3V4ysS/.DE3RC', '127', '1971-09-22 07:07:24', '+19715291948', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '6265 Houston Terrace
South Elmore, TX 72919', 'Alice. \'Well, then,\' the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon added \'Come, let\'s try Geography.', '1', '4043', '1', NULL, '2026-01-31 08:47:06', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('34', 'Abigail', 'Casper', 'Hatter. \'He won\'t.', NULL, 'abeatty@yahoo.com', '$2y$12$fby7dhk6imBdXNDUCAV5A..jATGvuJKLjgLvUHNsSoOvLAzCvdoo6', '127', '1977-04-07 08:23:07', '+19736494936', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '400 Osinski Valleys
East Staceyfurt, IA 10193-4033', 'King, who had been wandering, when a sharp hiss made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be quite as much use in the distance. \'And yet what a.', '1', '2501', '0', NULL, '2026-01-31 08:47:08', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('35', 'Omari', 'Witting', 'Though they were.', NULL, 'dee68@boyle.com', '$2y$12$zWo.s.y7N2Pjb3j3TmWet.dxE/ugRkktBlgjiZR6lbUUcXgBaKByi', '127', '2013-07-09 07:24:10', '+18034629609', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '525 Kendrick Ridge
Carmelatown, OH 61631-3357', 'King, the Queen, the royal children; there were ten of them, and the three gardeners, oblong and flat, with their heads!\' and the Dormouse into the court, without even waiting to put it into his cup.', '1', '3205', '0', NULL, '2026-01-31 08:47:10', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('36', 'Emanuel', 'Batz', 'Number One,\' said.', NULL, 'grant.katrina@hirthe.org', '$2y$12$VM2qrqycQ9qYcWLemPVhUue/DzJ5kEescednL5SlGEw7PjOOVAD12', '128', '2000-04-27 11:35:07', '+17548492719', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '914 Solon Fort Apt. 575
Delphiaton, VT 99534', 'While the Owl had the door between us. For instance, if you only walk long enough.\' Alice felt a violent shake at the jury-box, and saw that, in her pocket) till she shook the house, and wondering.', '1', '4116', '1', NULL, '2026-01-31 08:47:11', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('37', 'Grayce', 'Kovacek', 'Alice to herself.', NULL, 'sanford.pouros@powlowski.com', '$2y$12$ZftTeiIokTHQYSqlHkB0nOjLy/77SzqJammZyoGrdCgi/GE8q2DQ.', '127', '2022-02-04 01:10:27', '+15203595414', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '855 Kobe Corner
Kerlukeborough, LA 63081-5293', 'Alice went on for some time without hearing anything more: at last in the sea, some children digging in the wind, and was delighted to find my way into that lovely garden. First, however, she waited.', '1', '3832', '0', NULL, '2026-01-31 08:47:13', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('38', 'Trey', 'Hudson', 'Oh, my dear Dinah!.', NULL, 'horace58@hotmail.com', '$2y$12$U5/RWXLMukWqksXcs2M7buCX7KfHDukwcwYFSKm1SxASZbcu3q3ky', '129', '1977-09-27 04:35:18', '+13398259522', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '65955 Davin Keys Apt. 956
Schaeferberg, NC 00887-9702', 'Alice crouched down among the trees had a little shaking among the party. Some of the crowd below, and there they lay on the door as you might knock, and I could show you our cat Dinah: I think I.', '1', '3019', '1', NULL, '2026-01-31 08:47:15', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('39', 'Vince', 'Heidenreich', 'That your eye was.', NULL, 'collier.rachelle@hotmail.com', '$2y$12$DXz3jPFyYWFPUSIoCtUET.0uRLVkVXmjVso7dxDX7FPldwJLHtJqG', '127', '2008-12-09 03:20:16', '+13022249038', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '305 Gaston Turnpike Apt. 260
West Amie, DC 31023-7425', 'Mock Turtle\'s Story \'You can\'t think how glad I am very tired of being all alone here!\' As she said this, she came in with the other side. The further off from England the nearer is to find that she.', '1', '4625', '1', NULL, '2026-01-31 08:47:16', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('40', 'Tomasa', 'Lebsack', 'Off--\' \'Nonsense!\'.', NULL, 'lily72@leuschke.info', '$2y$12$ndJR/kZ5CaKhPWRgmXPFx.UtYwFukvlK/L11em7jb8YjfFGVoTEla', '128', '1971-04-30 10:39:32', '+13644201262', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '6494 Daphney Valley
Ricardochester, NV 40085', 'Queen added to one of the officers of the treat. When the sands are all dry, he is gay as a partner!\' cried the Gryphon, and the game was in the pool, and the little passage: and THEN--she found.', '1', '1949', '0', NULL, '2026-01-31 08:47:18', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('41', 'Aiyana', 'Huel', 'Alice cautiously.', NULL, 'schuster.constance@yahoo.com', '$2y$12$k/7n5Mp7ha56/o.OzFMfyuEuDuWur1JLk/KfX4ZqNC4QXi4HfF50q', '129', '1971-12-03 03:58:41', '+15314805892', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '5800 Casimir Terrace
Port Margretton, KS 81485-6939', 'Run home this moment, I tell you, you coward!\' and at once crowded round it, panting, and asking, \'But who is Dinah, if I only knew how to get through was more and more puzzled, but she could not.', '1', '1501', '0', NULL, '2026-01-31 08:47:20', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('42', 'Maxie', 'Lemke', 'IT. It\'s HIM.\' \'I.', NULL, 'aubree21@hessel.info', '$2y$12$2HPUy/JFNwVaTzQ1ykhp4eM2.pFv0cwVG/1lasOcVWJTVxMqscyja', '128', '2003-01-24 00:32:46', '+16508977554', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '519 Shyanne Fields Apt. 087
Wildermanfort, OK 03075-3813', 'Alice soon began talking to him,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she kept fanning herself all the first to break the silence. \'What day of the table, but it makes me grow.', '1', '1574', '1', NULL, '2026-01-31 08:47:21', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('43', 'Ted', 'Torphy', 'And he added in a.', NULL, 'jamarcus95@prohaska.net', '$2y$12$KOsEn0AQf3oSvgOTY6JCou59VH.WzkDKSiu5QJLJhDjbyhQ/D71US', '129', '1994-11-05 02:32:48', '+15208540111', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '70318 Liza Path Apt. 556
West Alannatown, WA 11667-0070', 'Mouse, turning to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied thoughtfully. \'They have their tails in their mouths. So they got their tails fast in their mouths; and the words.', '1', '2565', '1', NULL, '2026-01-31 08:47:22', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('44', 'Dejah', 'Rice', 'Mock Turtle. \'No.', NULL, 'ymurphy@bailey.com', '$2y$12$SNsWFs5x.beabFhRHL5Xk.UA5Ca68gyw4/oRvHY6B2Vv5uBcfk/K2', '127', '2004-08-20 11:33:41', '+14324836327', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '77826 Ondricka Crest
North Nealton, NV 17434-8954', 'Alice began, in rather a complaining tone, \'and they drew all manner of things--everything that begins with a knife, it usually bleeds; and she drew herself up and repeat \"\'TIS THE VOICE OF THE.', '1', '3948', '1', NULL, '2026-01-31 08:47:24', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('45', 'Fredy', 'Pfeffer', 'Oh dear! I wish I.', NULL, 'nichole46@nienow.com', '$2y$12$GDlBlWb0TJr19KiQy3AQm.Px01S6gyA0kjWnWUFZxMSasp7jBFEuC', '129', '1997-12-19 11:49:55', '+13196879084', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '7886 Reyna Village
Maggioside, GA 03502', 'However, on the English coast you find a number of changes she had succeeded in curving it down \'important,\' and some \'unimportant.\' Alice could not swim. He sent them word I had our Dinah here, I.', '1', '4254', '0', NULL, '2026-01-31 08:47:25', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('46', 'Howard', 'Cremin', 'Dormouse shall!\'.', NULL, 'araceli69@gmail.com', '$2y$12$1mnDR..wP0p52cRCXkUJw.rCJCEYhvklAERfs/mjNg/foDYfDFXae', '128', '1980-06-06 21:21:06', '+19728568221', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '313 Nikolaus Villages Suite 984
Pourosport, DC 08800', 'Alice to herself. (Alice had been anything near the right size again; and the two creatures got so close to her: its face in some alarm. This time Alice waited a little, \'From the Queen. \'Never!\'.', '1', '3842', '1', NULL, '2026-01-31 08:47:27', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('47', 'Virgie', 'Padberg', 'Alice angrily. \'It.', NULL, 'predovic.macy@abernathy.net', '$2y$12$Z8NJJRizut36PssfSvODM.921Hbt7fuOkb2fp3F51id.pT6x7gYSK', '127', '1978-02-01 00:42:26', '+15404748317', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '209 Johnston Mission Apt. 666
Ervinview, OR 79735-5584', 'I can\'t get out of the treat. When the sands are all pardoned.\' \'Come, THAT\'S a good deal worse off than before, as the Dormouse again, so that it might end, you know,\' the Hatter went on, half to.', '1', '2452', '1', NULL, '2026-01-31 08:47:28', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('48', 'Kirsten', 'Hintz', 'King said, with a.', NULL, 'jmoen@yahoo.com', '$2y$12$cFWX6DdRorQaJIy/hpnp9.oK2TZHSnbAvR.rtQCH1n.sInbgF1D3C', '128', '1981-10-20 07:32:29', '+19707782645', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '208 Beatty Centers
Sipesshire, ID 16661-6443', 'The King and the game was in a day or two: wouldn\'t it be murder to leave it behind?\' She said the Mouse, frowning, but very politely: \'Did you say things are worse than ever,\' thought the whole.', '1', '4354', '1', NULL, '2026-01-31 08:47:29', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('49', 'Naomie', 'Osinski', 'Alice was too much.', NULL, 'guadalupe.parker@yahoo.com', '$2y$12$CQUoQlikCraGxzijjpZjyed9xLabKos91o8w1H76J8vM0C7BifQ0C', '127', '2011-04-08 15:13:17', '+15207798976', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '74009 Goodwin Manor Suite 043
West Uriel, NH 23118-4292', 'The door led right into it. \'That\'s very curious!\' she thought. \'I must go and take it away!\' There was a treacle-well.\' \'There\'s no such thing!\' Alice was so much at first, perhaps,\' said the.', '1', '2449', '1', NULL, '2026-01-31 08:47:31', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('50', 'Rod', 'Gulgowski', 'Alice took up the.', NULL, 'zackary.nienow@dare.com', '$2y$12$L6SCC09zbTszJBAMOosUnOAp4gTyR/j8p.sNY2nxOnQPZfFbpWuki', '129', '1972-06-08 23:36:01', '+14794704411', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '2800 Charles Orchard
East Yadira, GA 85462', 'And here poor Alice in a voice of the door began sneezing all at once. \'Give your evidence,\' said the Duchess; \'I never was so small as this before, never! And I declare it\'s too bad, that it was.', '1', '3870', '0', NULL, '2026-01-31 08:47:33', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('51', 'Breana', 'Towne', 'Alice. \'Of course.', NULL, 'windler.lyda@gmail.com', '$2y$12$RCFLh5R/cJ1aJ/jaOWfHVu8OcWjJh9qKT85buA8r7kdu0OPoouAlm', '127', '2023-05-19 14:43:33', '+18177304066', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '125 Melvina Hollow
Skileston, HI 95954', 'Gryphon, and the others all joined in chorus, \'Yes, please do!\' but the wise little Alice and all dripping wet, cross, and uncomfortable. The first thing she heard a little recovered from the time.', '1', '3753', '1', NULL, '2026-01-31 08:47:35', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('52', 'Jude', 'Parker', 'Mock Turtle. \'No.', NULL, 'lyla08@hotmail.com', '$2y$12$MG8QKbRcSKGEbnhTURPKEu/.XtN8g9qLDR4ldEh0aDoS3n1jfc2Lq', '127', '2005-05-11 06:21:34', '+14582674091', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '7060 Morissette Common Apt. 009
North Napoleon, KS 50352', 'Alice, \'and why it is right?\' \'In my youth,\' said the March Hare,) \'--it was at in all directions, tumbling up against each other; however, they got thrown out to be talking in a ring, and begged.', '1', '2744', '1', NULL, '2026-01-31 08:47:37', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('53', 'Jonatan', 'Ullrich', 'And oh, I wish I.', NULL, 'cummings.dakota@hotmail.com', '$2y$12$y066E9jzFe5t4n1aGYuY.e5IuPu2AJCjeOmWijOUP1.cnCGHIQFCm', '127', '1985-10-24 19:48:04', '+17692517955', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '1310 Lind Place Suite 732
Lubowitzstad, SC 48751-4983', 'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Dormouse, not choosing to notice this last word with such a thing as a drawing of a dance is it?\' \'Why,\' said the.', '1', '558', '1', NULL, '2026-01-31 08:47:38', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('54', 'Abbie', 'Aufderhar', 'Mock Turtle went.', NULL, 'vfarrell@hotmail.com', '$2y$12$nLfI88tIQbn9AxqsZsioluHCcw5sjHB5oY0JgpFJG.bYWjSExUPeS', '128', '2005-11-26 05:23:48', '+12205633086', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '6919 Una Pike Suite 957
Prosaccobury, WV 54933', 'Duchess asked, with another hedgehog, which seemed to have the experiment tried. \'Very true,\' said the Footman, and began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the.', '1', '2502', '1', NULL, '2026-01-31 08:47:40', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('55', 'Maegan', 'Schowalter', 'Alice the moment.', NULL, 'vada01@gmail.com', '$2y$12$eQZ65Av.lJLAFpONCsaUSuYh53APfAEnwCpPaSo9xO393tGAWh4mO', '129', '2024-05-02 17:03:15', '+13513481610', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '9960 Kreiger Bypass
Jaidenmouth, WY 18327-8703', 'Duchess; \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the Pigeon; \'but I haven\'t had a large flower-pot that stood near. The three.', '1', '2811', '0', NULL, '2026-01-31 08:47:41', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('56', 'Vern', 'Ebert', 'ARE a simpleton.\'.', NULL, 'francesco.aufderhar@fisher.com', '$2y$12$RcyaT.wAOBkHTEVdRUUJ3eGIyXZAlwoj7M6ZjDsLLr4bIPl90T0k6', '129', '1974-11-17 14:19:08', '+14697496399', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '1855 Klocko Parkways
New Ken, IN 03759-0580', 'YOU manage?\' Alice asked. The Hatter shook his head off outside,\' the Queen was to find any. And yet I don\'t keep the same thing as \"I eat what I was thinking I should have liked teaching it tricks.', '1', '4321', '0', NULL, '2026-01-31 08:47:42', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('57', 'Providenci', 'Harris', 'Alice didn\'t think.', NULL, 'naomie.harvey@hotmail.com', '$2y$12$.VkW4s4odA4CbdLe6TKFZ.HiElASWPcC64Yp0veFcnZiQzwJy.ALK', '128', '2020-02-05 16:53:40', '+15207273225', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '124 Jana Common Suite 722
Lake Christopheport, MN 95956', 'Lory hastily. \'I don\'t know where Dinn may be,\' said the Mouse, frowning, but very politely: \'Did you say it.\' \'That\'s nothing to what I should think it so yet,\' said the Mock Turtle said: \'I\'m too.', '1', '856', '0', NULL, '2026-01-31 08:47:43', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('58', 'Aidan', 'Prohaska', 'Mock Turtle said.', NULL, 'lionel81@schneider.net', '$2y$12$WUxZKIR8hzusOBc/t5LLW..FS5TLKpB3VBdL2lHOojYYdgWt3HpRi', '129', '1972-12-05 02:47:51', '+14842349904', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '60012 Erdman Valley Apt. 656
Genovevaburgh, WV 08063', 'I used to say \'I once tasted--\' but checked herself hastily. \'I don\'t believe it,\' said Alice to herself, as well go back, and barking hoarsely all the rats and--oh dear!\' cried Alice, jumping up in.', '1', '1858', '1', NULL, '2026-01-31 08:47:45', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('59', 'Cynthia', 'Tromp', 'Alice knew it was.', NULL, 'jeanette31@corkery.com', '$2y$12$weCYVQ3qkLWXjHGpH5E8ceXjiPkFGCEI8E8A9uMNFwFbxlzoTnCv2', '128', '2015-07-18 12:02:46', '+18574144671', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '26541 Mueller Passage Apt. 272
North Bufordland, CT 68216-9676', 'White Rabbit put on her hand, watching the setting sun, and thinking of little birds and beasts, as well as she went round the court with a shiver. \'I beg your pardon!\' cried Alice (she was obliged.', '1', '1517', '1', NULL, '2026-01-31 08:47:46', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('60', 'Kieran', 'Pacocha', 'March Hare and the.', NULL, 'wtillman@gmail.com', '$2y$12$Gi0ewFjDJdjKpkj78NVrVuwh9N.9O7uQq5q2e0.B0WJdoqieCuO7.', '128', '2019-04-04 16:44:15', '+16806504405', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '745 Geoffrey Point Suite 970
Justusland, SD 83898-1128', 'Gryphon. \'It\'s all about for some time without hearing anything more: at last turned sulky, and would only say, \'I am older than you, and listen to her. \'I wish I hadn\'t begun my tea--not above a.', '1', '1332', '1', NULL, '2026-01-31 08:47:47', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('61', 'Abner', 'Kozey', 'Sir, With no jury.', NULL, 'josianne.hand@hotmail.com', '$2y$12$ncOpYt56bwNN3j/fm5b9FO815nKe9GdKlGBOs1tJrwGjhu/.rTdhG', '127', '2014-01-31 06:04:01', '+16185765284', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '4842 Schmeler Lakes Apt. 786
Jennyfermouth, MO 86429-4748', 'Mouse. \'Of course,\' the Dodo had paused as if he doesn\'t begin.\' But she waited for a moment to think to herself, \'Now, what am I to get in at once.\' However, she got to do,\' said the White Rabbit.', '1', '2772', '0', NULL, '2026-01-31 08:47:49', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('62', 'Ricardo', 'Daniel', 'Duchess began in a.', NULL, 'xgislason@gmail.com', '$2y$12$wvLHVIq7RH4nLOxrjuZQ.OXV3uiCe7k7t.jc6ufInOQchE4LqJSYq', '128', '2004-04-23 08:16:02', '+18707377685', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '639 Melvin Dale Apt. 584
South Berniecebury, CA 35826-7223', 'Cheshire cat,\' said the Queen. \'I never could abide figures!\' And with that she was beginning to see if there were ten of them, with her head!\' the Queen was silent. The King laid his hand upon her.', '1', '2729', '1', NULL, '2026-01-31 08:47:50', '2026-02-01 01:26:40', '1', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('63', 'Jalen', 'Bayer', 'For instance, if.', NULL, 'schaden.louisa@hotmail.com', '$2y$12$5/vemwVYSbBl3AoJfu7W8ugj.yif.WG6x7I9yO0Prsmt2SJYZJzEK', '128', '2019-11-15 02:59:39', '+18436964606', '2026-02-01 01:26:40', NULL, 'job-seeker', NULL, 'resume/01.pdf', '1419 Luettgen Well Apt. 497
Linwoodborough, IL 31116-1048', 'Fish-Footman was gone, and, by the hand, it hurried off, without waiting for the accident of the house till she got into a butterfly, I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\'.', '1', '3372', '1', NULL, '2026-01-31 08:47:52', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);
INSERT INTO `jb_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `type`, `credits`, `resume`, `address`, `bio`, `is_public_profile`, `views`, `is_featured`, `remember_token`, `created_at`, `updated_at`, `available_for_hiring`, `country_id`, `state_id`, `city_id`, `cover_letter`, `hide_cv`, `unique_id`) VALUES ('64', 'Marc', 'Hauck', 'Mock Turtle. \'No.', NULL, 'effertz.ora@hotmail.com', '$2y$12$wsi4R00pJmjqZmlycrhWjutdPV0Q15BsBhiAe1vHaQvQyLTA2Bs/O', '129', '2020-10-13 18:22:10', '+19476912039', '2026-02-01 01:26:40', NULL, 'employer', NULL, NULL, '528 Marquardt Village Suite 908
Lake Pabloberg, NC 02329', 'Alice gently remarked; \'they\'d have been changed for any lesson-books!\' And so it was only the pepper that makes the world she was now the right thing to nurse--and she\'s such a capital one for.', '1', '2061', '1', NULL, '2026-01-31 08:47:53', '2026-02-01 01:26:40', '0', '1', NULL, NULL, NULL, '0', NULL);

-- Data for table: jb_companies
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('1', 'Tech Innovations Inc.', 'careers@techinnovations.com', 'Leading technology company specializing in innovative solutions', '<p>Tech Innovations Inc. is a cutting-edge technology company focused on developing revolutionary software solutions for businesses worldwide. We specialize in AI, machine learning, and cloud computing technologies.</p>', 'https://techinnovations.com', 'storage/companies/tech-logo.png', '37.7749', '-122.4194', '123 Tech Street, Silicon Valley, CA', '1', '1', '1', '94102', '+1 (555) 123-4567', '2010', 'John Smith', '5', '500-1000', '$50M-$100M', 'storage/companies/tech-banner.jpg', 'techinnovations', 'techinnovations', 'company/tech-innovations-inc', 'techinnovations', '1', 'published', '281', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-TECH-001', 'COMP_697dc2840222c');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('2', 'Global Solutions Ltd.', 'jobs@globalsolutions.com', 'International consulting firm with global presence', '<p>Global Solutions Ltd. provides comprehensive consulting services across multiple industries including finance, healthcare, and technology. With offices in 20+ countries, we help businesses transform and grow.</p>', 'https://globalsolutions.com', 'storage/companies/2.png', '40.7128', '-74.0060', '456 Business Ave, New York, NY', '1', '2', '2', '10001', '+1 (555) 987-6543', '2005', 'Sarah Johnson', '25', '1000-5000', '$100M-$500M', 'storage/companies/global-banner.jpg', 'globalsolutionsltd', 'globalsolutions', 'company/global-solutions-ltd', 'globalsolutions', '1', 'published', '342', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-GLOBAL-002', 'COMP_697dc28402271');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('3', 'Creative Design Studio', 'careers@creativedesign.com', 'Award-winning creative agency specializing in digital design', '<p>Creative Design Studio is an award-winning digital agency that creates stunning visual experiences for brands worldwide. Our team of designers, developers, and strategists work together to deliver exceptional results.</p>', 'https://creativedesign.com', 'storage/companies/3.png', '34.0522', '-118.2437', '789 Art District, Los Angeles, CA', '1', '1', '3', '90015', '+1 (555) 456-7890', '2012', 'Michael Chen', '3', '100-500', '$10M-$50M', 'storage/companies/creative-banner.jpg', 'creativedesignstudio', 'creativestudio', 'company/creative-design-studio', 'creativedesign', '1', 'published', '277', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-CREATIVE-003', 'COMP_697dc28402289');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('4', 'Finance Partners LLC', 'recruiting@financepartners.com', 'Financial services company with expertise in investment banking', '<p>Finance Partners LLC is a leading financial services firm specializing in investment banking, asset management, and corporate finance. We serve institutional clients globally with tailored financial solutions.</p>', 'https://financepartners.com', 'storage/companies/4.png', '40.7128', '-74.0060', '321 Wall Street, New York, NY', '1', '2', '2', '10005', '+1 (555) 321-0987', '2008', 'Robert Williams', '8', '500-1000', '$50M-$100M', 'storage/companies/finance-banner.jpg', 'financepartnersllc', 'financepartners', 'company/finance-partners-llc', 'financepartners', '1', 'published', '948', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-FINANCE-004', 'COMP_697dc284022a0');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('5', 'HealthTech Medical Systems', 'hr@healthtechmedical.com', 'Medical technology company developing healthcare solutions', '<p>HealthTech Medical Systems develops innovative medical technology solutions that improve patient care and healthcare outcomes. Our products are used in hospitals and clinics worldwide.</p>', 'https://healthtechmedical.com', 'storage/companies/5.png', '42.3601', '-71.0589', '654 Medical Drive, Boston, MA', '1', '3', '4', '02108', '+1 (555) 654-3210', '2015', 'Dr. Emily Davis', '6', '200-500', '$25M-$50M', 'storage/companies/healthtech-banner.jpg', 'healthtechmedical', 'healthtechmed', 'company/healthtech-medical-systems', 'healthtechmedical', '1', 'published', '910', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-HEALTH-005', 'COMP_697dc284022b7');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('6', 'Ondo', 'contact@ondo.com', 'Global technology company focusing on innovative solutions for enterprise clients', '<p>Ondo is a technology leader providing cutting-edge solutions to enterprise clients worldwide. We specialize in cloud infrastructure, data analytics, and AI-powered platforms.</p>', 'https://ondo.com', 'storage/companies/ondo-logo.png', '52.3676', '4.9041', 'Amsterdam, Netherlands', '1', '4', '5', '1012', '+31 20 123 4567', '2018', 'David Brown', '12', '1000-5000', '$200M-$500M', 'storage/companies/ondo-banner.jpg', 'ondo', 'ondo', 'company/ondo', 'ondo', '1', 'published', '460', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-ONDO-006', 'COMP_697dc284022ce');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('7', 'Square', 'jobs@square.com', 'Financial services and mobile payment company', '<p>Square provides business and financial tools for small and medium-sized businesses. Our platform includes payment processing, point-of-sale solutions, and business management tools.</p>', 'https://square.com', 'storage/companies/square-logo.png', '40.7589', '-73.9851', 'New York, US', '1', '2', '6', '10036', '+1 (212) 792-4000', '2009', 'Jack Dorsey', '18', '5000-10000', '$1B-$5B', 'storage/companies/square-banner.jpg', 'square', 'square', 'company/square', 'square', '1', 'published', '606', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-SQUARE-007', 'COMP_697dc284022e6');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('8', 'Nintendo', 'careers@nintendo.com', 'Japanese multinational consumer electronics and video game company', '<p>Nintendo is a world-renowned entertainment company creating innovative video games and interactive experiences. We develop hardware and software for home and portable gaming systems.</p>', 'https://nintendo.com', 'storage/companies/nintendo.png', '34.6937', '135.5023', 'Kyoto, Japan', '1', '5', '7', '601-8501', '+81 75 221 9393', '1889', 'Shuntaro Furukawa', '20', '5000-10000', '$5B-$10B', 'storage/companies/nintendo-banner.jpg', 'nintendo', 'nintendo', 'company/nintendo', 'nintendo', '1', 'published', '907', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-NINTENDO-008', 'COMP_697dc284022fd');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('9', 'Bing Search', 'jobs@bing.com', 'Web search engine developed by Microsoft', '<p>Bing is a search engine that provides a wide range of search services, including web, images, videos, maps, and news. We offer advanced search capabilities and integrated services.</p>', 'https://bing.com', 'storage/companies/bing-search.png', '47.6062', '-122.3321', 'Redmond, WA, US', '1', '6', '8', '98052', '+1 (425) 882-8080', '2009', 'Satya Nadella', '15', '10000+', '$10B+$', 'storage/companies/bing-banner.jpg', 'bing', 'bing', 'company/bing', 'bing', '1', 'published', '924', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-BING-009', 'COMP_697dc28402314');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('10', 'Toyota', 'careers@toyota.com', 'Japanese multinational automotive manufacturer', '<p>Toyota is a leading global automotive manufacturer known for quality, reliability, and innovation. We produce cars, trucks, SUVs, and hybrid vehicles with advanced technology.</p>', 'https://toyota.com', 'storage/companies/toyota-logo.png', '35.2546', '136.9324', 'Toyota City, Japan', '1', '5', '9', '471-8511', '+81 561 72-5511', '1937', 'Akio Toyoda', '50', '300000+', '$250B+$', 'storage/companies/toyota-banner.jpg', 'toyota', 'toyota', 'company/toyota', 'toyota', '1', 'published', '336', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-TOYOTA-010', 'COMP_697dc28402338');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('11', 'Greenwood', 'info@greenwood.com', 'Innovative financial technology company', '<p>Greenwood is a fintech company focused on creating financial products and services for underrepresented communities. We provide banking, credit, and investment solutions.</p>', 'https://greenwood.com', 'storage/companies/greenwood.png', '40.7128', '-74.0060', 'New York, NY, US', '1', '2', '2', '10004', '+1 (929) 226-8226', '2020', 'Vivek Garipalli', '3', '50-100', '$10M-$50M', 'storage/companies/greenwood-banner.jpg', 'greenwood', 'greenwood', 'company/greenwood', 'greenwood', '1', 'published', '184', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-GREENWOOD-011', 'COMP_697dc28402350');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('12', 'Periscope', 'contact@periscope.com', 'Live streaming platform for video broadcasting', '<p>Periscope is a live video streaming app that allows users to broadcast real-time video to followers. We enable creators and brands to engage with audiences instantly.</p>', 'https://periscope.com', 'storage/companies/periscope.png', '37.7749', '-122.4194', 'San Francisco, CA, US', '1', '1', '10', '94105', '+1 (415) 222-3333', '2015', 'Kayvon Beykpour', '2', '50-100', '$5M-$10M', 'storage/companies/periscope-banner.jpg', 'periscope', 'periscope', 'company/periscope', 'periscope', '1', 'published', '992', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-PERISCOPE-012', 'COMP_697dc28402368');
INSERT INTO `jb_companies` (`id`, `name`, `email`, `description`, `content`, `website`, `logo`, `latitude`, `longitude`, `address`, `country_id`, `state_id`, `city_id`, `postal_code`, `phone`, `year_founded`, `ceo`, `number_of_offices`, `number_of_employees`, `annual_revenue`, `cover_image`, `facebook`, `twitter`, `linkedin`, `instagram`, `is_featured`, `status`, `views`, `created_at`, `updated_at`, `tax_id`, `unique_id`) VALUES ('13', 'PowerHome', 'careers@powerhome.com', 'Technology-enabled home services company', '<p>PowerHome is a leading home services company providing HVAC, electrical, plumbing, and other residential services. We use technology to enhance customer experience and operational efficiency.</p>', 'https://powerhome.com', 'storage/companies/powerhome.png', '36.1627', '-86.7816', 'Franklin, TN, US', '1', '7', '11', '37067', '+1 (833) 336-0888', '2014', 'Brad Griffith', '150', '10000+', '$500M-$1B', 'storage/companies/powerhome-banner.jpg', 'powerhome', 'powerhome', 'company/powerhome', 'powerhome', '1', 'published', '210', '2026-01-31 08:51:16', '2026-02-01 01:26:40', 'TAX-POWERHOME-013', 'COMP_697dc2840237f');

-- Data for table: jb_jobs_types
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('1', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('2', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('3', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('4', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('5', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('6', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('7', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('8', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('9', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('10', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('11', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('12', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('13', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('14', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('15', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('16', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('17', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('18', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('19', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('20', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('21', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('22', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('23', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('24', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('25', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('26', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('27', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('28', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('29', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('30', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('31', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('32', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('33', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('34', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('35', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('36', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('37', '4');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('38', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('39', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('40', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('41', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('42', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('43', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('44', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('45', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('46', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('47', '2');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('48', '5');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('49', '3');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('50', '1');
INSERT INTO `jb_jobs_types` (`job_id`, `job_type_id`) VALUES ('51', '5');

-- Data for table: jb_tags
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Illustrator', '', 'published', '2026-01-31 08:51:55', '2026-01-31 08:51:55');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Adobe XD', '', 'published', '2026-01-31 08:51:55', '2026-01-31 08:51:55');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Figma', '', 'published', '2026-01-31 08:51:55', '2026-01-31 08:51:55');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Sketch', '', 'published', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Lunacy', '', 'published', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('6', 'PHP', '', 'published', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('7', 'Python', '', 'published', '2026-01-31 08:51:56', '2026-01-31 08:51:56');
INSERT INTO `jb_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES ('8', 'JavaScript', '', 'published', '2026-01-31 08:51:57', '2026-01-31 08:51:57');

-- Data for table: jb_jobs_tags
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('1', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('1', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('2', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('2', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('3', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('3', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('4', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('4', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('5', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('5', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('6', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('6', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('7', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('7', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('8', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('8', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('9', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('9', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('10', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('10', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('11', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('11', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('12', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('12', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('13', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('13', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('14', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('14', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('15', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('15', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('16', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('16', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('17', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('17', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('18', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('18', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('19', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('19', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('20', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('20', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('21', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('21', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('22', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('22', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('23', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('23', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('24', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('24', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('25', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('25', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('26', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('26', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('27', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('27', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('28', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('28', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('29', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('29', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('30', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('30', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('31', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('31', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('32', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('32', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('33', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('33', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('34', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('34', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('35', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('35', '5');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('36', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('36', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('37', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('37', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('38', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('38', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('39', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('39', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('40', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('40', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('41', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('41', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('42', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('42', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('43', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('43', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('44', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('44', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('45', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('45', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('46', '3');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('46', '7');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('47', '4');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('47', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('48', '2');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('48', '6');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('49', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('49', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('50', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('50', '8');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('51', '1');
INSERT INTO `jb_jobs_tags` (`job_id`, `tag_id`) VALUES ('51', '8');

-- Data for table: teams
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('1', 'Jack Persion', 'teams/1.png', 'Developer Fullstack', 'USA', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('2', 'Tyler Men', 'teams/2.png', 'Business Analyst', 'Qatar', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('3', 'Mohamed Salah', 'teams/3.png', 'Developer Fullstack', 'India', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('4', 'Xao Shin', 'teams/4.png', 'Developer Fullstack', 'China', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('5', 'Peter Cop', 'teams/5.png', 'Designer', 'Russia', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('6', 'Jacob Jones', 'teams/6.png', 'Frontend Developer', 'New York, US', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('7', 'Court Henry', 'teams/7.png', 'Backend Developer', 'Portugal', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teams` (`id`, `name`, `photo`, `title`, `location`, `socials`, `status`, `created_at`, `updated_at`, `content`, `phone`, `email`, `address`, `website`, `description`) VALUES ('8', 'Theresa', 'teams/8.png', 'Backend Developer', 'Thailand', '\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"', 'published', '2026-01-31 08:55:54', '2026-01-31 08:55:54', NULL, NULL, NULL, NULL, NULL, NULL);

-- Data for table: jb_account_experiences
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('1', 'Spa Paragon', '2', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:24', '2026-01-31 08:46:24');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('2', 'GameDay Catering', '6', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:29', '2026-01-31 08:46:29');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('3', 'GameDay Catering', '7', 'Project Manager', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:31', '2026-01-31 08:46:31');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('4', 'Darwin Travel', '13', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:38', '2026-01-31 08:46:38');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('5', 'Spa Paragon', '14', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:39', '2026-01-31 08:46:39');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('6', 'Exploration Kids', '17', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:43', '2026-01-31 08:46:43');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('7', 'GameDay Catering', '18', 'Marketing Coordinator', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:45', '2026-01-31 08:46:45');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('8', 'Party Plex', '19', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:46', '2026-01-31 08:46:46');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('9', 'GameDay Catering', '20', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:48', '2026-01-31 08:46:48');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('10', 'GameDay Catering', '21', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:49', '2026-01-31 08:46:49');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('11', 'Exploration Kids', '25', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:54', '2026-01-31 08:46:54');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('12', 'Party Plex', '26', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:56', '2026-01-31 08:46:56');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('13', 'Exploration Kids', '29', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:00', '2026-01-31 08:47:00');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('14', 'Exploration Kids', '33', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:07', '2026-01-31 08:47:07');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('15', 'Party Plex', '34', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:09', '2026-01-31 08:47:09');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('16', 'GameDay Catering', '36', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:12', '2026-01-31 08:47:12');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('17', 'GameDay Catering', '37', 'Marketing Coordinator', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:14', '2026-01-31 08:47:14');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('18', 'GameDay Catering', '38', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:15', '2026-01-31 08:47:15');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('19', 'Exploration Kids', '39', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:17', '2026-01-31 08:47:17');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('20', 'Darwin Travel', '40', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:18', '2026-01-31 08:47:18');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('21', 'GameDay Catering', '43', 'Dog Trainer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:22', '2026-01-31 08:47:22');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('22', 'Darwin Travel', '45', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:25', '2026-01-31 08:47:25');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('23', 'GameDay Catering', '48', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:30', '2026-01-31 08:47:30');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('24', 'Spa Paragon', '50', 'Project Manager', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:33', '2026-01-31 08:47:33');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('25', 'GameDay Catering', '51', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:36', '2026-01-31 08:47:36');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('26', 'Party Plex', '52', 'Marketing Coordinator', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:37', '2026-01-31 08:47:37');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('27', 'GameDay Catering', '53', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:39', '2026-01-31 08:47:39');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('28', 'GameDay Catering', '57', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:44', '2026-01-31 08:47:44');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('29', 'GameDay Catering', '60', 'Web Designer', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:47', '2026-01-31 08:47:47');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('30', 'Exploration Kids', '61', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:49', '2026-01-31 08:47:49');
INSERT INTO `jb_account_experiences` (`id`, `company`, `account_id`, `position`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('31', 'GameDay Catering', '63', 'President of Sales', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:52', '2026-01-31 08:47:52');

-- Data for table: jb_account_educations
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('1', 'The University of the State of Alabama', '2', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:24', '2026-01-31 08:46:24');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('2', 'American Institute of Health Technology', '6', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:29', '2026-01-31 08:46:29');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('3', 'The University of the State of Alabama', '7', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:31', '2026-01-31 08:46:31');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('4', 'Antioch University McGregor', '13', 'Economics', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:38', '2026-01-31 08:46:38');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('5', 'Gateway Technical College', '14', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:39', '2026-01-31 08:46:39');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('6', 'Adams State College', '17', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:43', '2026-01-31 08:46:43');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('7', 'Antioch University McGregor', '18', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:45', '2026-01-31 08:46:45');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('8', 'The University of the State of Alabama', '19', 'Culture and Technology Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:46', '2026-01-31 08:46:46');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('9', 'Antioch University McGregor', '20', 'Economics', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:48', '2026-01-31 08:46:48');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('10', 'Gateway Technical College', '21', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:49', '2026-01-31 08:46:49');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('11', 'The University of the State of Alabama', '25', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:54', '2026-01-31 08:46:54');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('12', 'Gateway Technical College', '26', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:46:56', '2026-01-31 08:46:56');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('13', 'Antioch University McGregor', '29', 'Economics', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:00', '2026-01-31 08:47:00');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('14', 'Antioch University McGregor', '33', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:07', '2026-01-31 08:47:07');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('15', 'The University of the State of Alabama', '34', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:08', '2026-01-31 08:47:08');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('16', 'Antioch University McGregor', '36', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:11', '2026-01-31 08:47:11');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('17', 'Adams State College', '37', 'Economics', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:14', '2026-01-31 08:47:14');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('18', 'Associated Mennonite Biblical Seminary', '38', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:15', '2026-01-31 08:47:15');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('19', 'Adams State College', '39', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:17', '2026-01-31 08:47:17');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('20', 'American Institute of Health Technology', '40', 'Art History', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:18', '2026-01-31 08:47:18');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('21', 'Antioch University McGregor', '43', 'Culture and Technology Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:22', '2026-01-31 08:47:22');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('22', 'Antioch University McGregor', '45', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:25', '2026-01-31 08:47:25');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('23', 'Adams State College', '48', 'Economics', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:29', '2026-01-31 08:47:29');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('24', 'Adams State College', '50', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:33', '2026-01-31 08:47:33');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('25', 'The University of the State of Alabama', '51', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:35', '2026-01-31 08:47:35');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('26', 'Adams State College', '52', 'Culture and Technology Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:37', '2026-01-31 08:47:37');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('27', 'Gateway Technical College', '53', 'Culture and Technology Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:39', '2026-01-31 08:47:39');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('28', 'American Institute of Health Technology', '57', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:43', '2026-01-31 08:47:43');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('29', 'Gateway Technical College', '60', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:47', '2026-01-31 08:47:47');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('30', 'Antioch University McGregor', '61', 'Anthropology', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:49', '2026-01-31 08:47:49');
INSERT INTO `jb_account_educations` (`id`, `school`, `account_id`, `specialized`, `started_at`, `ended_at`, `description`, `created_at`, `updated_at`) VALUES ('31', 'American Institute of Health Technology', '63', 'Classical Studies', '2026-01-31 00:00:00', '2026-01-31 00:00:00', 'There are many variations of passages of available, but the majority alteration in some form.
                As a highly skilled and successful product development and design specialist with more than 4 Years of
                My experience', '2026-01-31 08:47:52', '2026-01-31 08:47:52');

-- Data for table: states
INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`) VALUES ('1', 'Ile-de-France', 'IDF', '1', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`) VALUES ('2', 'Greater London', 'GL', '2', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`) VALUES ('3', 'New York', 'NY', '3', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`) VALUES ('4', 'North Holland', 'NH', '4', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`) VALUES ('5', 'Capital Region', 'CR', '5', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);
INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`) VALUES ('6', 'Berlin', 'BE', '6', '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL);

-- Data for table: pages
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('1', 'Homepage 1', '<div>[search-box title=\"The Easiest Way to Get Your New Job\" highlight_text=\"Easiest Way\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" icon_top_banner=\"pages/icon-top-banner.png\" banner_image_2=\"pages/banner2.png\" icon_bottom_banner=\"pages/icon-bottom-banner.png\" style=\"style-1\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories]</div><div>[apply-banner subtitle=\"Let’s Work Together &lt;br\\&gt;&amp; Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\"][/apply-banner]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"4,9,1,3,5,7\" style=\"style-1\"][/job-of-the-day]</div><div>[job-grid title=\"Find The One That’s Right For You\" high_light_title_text=\"Right\" subtitle=\"Millions Of Jobs.\" description=\"Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.\" image_job_1=\"pages/img-chart.png\" image_job_2=\"pages/controlcard.png\" image=\"pages/img1.png\" button_text=\"Search jobs\" button_url=\"#\" link_text=\"Learn more\" link_text_url=\"#\"][/job-grid]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\"][/top-companies]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"1,2,3,4,5,6\"][/job-by-location]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\"][/news-and-blogs]</div>', '1', NULL, 'homepage', NULL, 'published', '2026-01-31 08:49:48', '2026-01-31 08:49:48');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Homepage 2', '<div>[search-box subtitle=\"We have 150,000+ live jobs\" title=\"The #1 Job Board for Hiring or Find your next job\" highlight_text=\"Job Board for\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" counter_title_1=\"Daily Jobs Posted\" counter_number_1=\"265\" counter_title_2=\"Recruiters\" counter_number_2=\"17\" counter_title_3=\"Freelancers\" counter_number_3=\"15\" counter_title_4=\"Blog Tips\" counter_number_4=\"28\" background_image=\"pages/banner-section-search-box.png\" style=\"style-2\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"1,2,5,4,7,8\" style=\"style-2\"][/job-of-the-day]</div><div>[popular-category title=\"Popular category\" subtitle=\"Search and connect with the right candidates faster.\"][/popular-category]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"12,46,69,111,121,116,62\" style=\"style-2\"][/job-by-location]</div><div>[counter-section counter_title_1=\"Completed Cases\" counter_description_1=\"We always provide people a complete solution upon focused of any business\" counter_number_1=\"1000\" counter_title_2=\"Our Office\" counter_description_2=\"We always provide people a complete solution upon focused of any business\" counter_number_2=\"1\" counter_title_3=\"Skilled People\" counter_description_3=\"We always provide people a complete solution upon focused of any business\" counter_number_3=\"6\" counter_title_4=\"Happy Clients\" counter_description_4=\"We always provide people a complete solution upon focused of any business\" counter_number_4=\"2\"][/counter-section]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\" style=\"style-2\"][/top-companies]</div><div>[advertisement-banner first_title=\"Job Tools Services\" first_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet rutrum quam, id faucibus erat interdum a. Curabitur eget tortor a nulla interdum semper.\" load_more_first_content_text=\"Find Out More\" load_more_link_first_content=\"#\" image_of_first_content=\"pages/job-tools.png\" second_title=\"Planning a Job?\" second_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet rutrum quam, id faucibus erat interdum a. Curabitur eget tortor a nulla interdum semper.\" load_more_second_content_text=\"Find Out More\" load_more_link_second_content=\"#\" image_of_second_content=\"pages/planning-job.png\"][/advertisement-banner]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-2\"][/news-and-blogs]</div>', '1', NULL, 'homepage', NULL, 'published', '2026-01-31 08:49:48', '2026-01-31 08:49:48');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('3', 'Homepage 3', '<div>[search-box title=\"The #1 Job Board for Hiring or Find your next job\" highlight_text=\"Job Board for\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" style=\"style-3\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"1,2,5,4,7,8\" style=\"style-3\"][/job-of-the-day]</div><div>[top-candidates title=\"Top Candidates\" description=\"Jobs is a curated job board of the best jobs for developers, designers and marketers in the tech industry.\" limit=\"8\" style=\"style-3\"][/top-candidates]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\" style=\"style-3\"][/top-companies]</div><div>[apply-banner subtitle=\"Let’s Work Together &lt;br\\&gt;&amp; Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\" style=\"style-3\"][/apply-banner]</div><div>[our-partners title=\"Trusted by\" name_1=\"Asus\" url_1=\"https://www.asus.com\" image_1=\"our-partners/asus.png\" name_2=\"Dell\" url_2=\"https://www.dell.com\" image_2=\"our-partners/dell.png\" name_3=\"Microsoft\" url_3=\"https://www.microsoft.com\" image_3=\"our-partners/microsoft.png\" name_4=\"Acer\" url_4=\"https://www.acer.com\" image_4=\"our-partners/acer.png\" name_5=\"Nokia\" url_5=\"https://www.nokia.com\" image_5=\"our-partners/nokia.png\"][/our-partners]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-3\"][/news-and-blogs]</div>', '1', NULL, 'homepage', NULL, 'published', '2026-01-31 08:49:48', '2026-01-31 08:49:48');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('4', 'Homepage 4', '<div>[search-box title=\"Get The Right Job You Deserve\" highlight_text=\"Right Job\" banner_image_1=\"pages/home-page-4-banner.png\" style=\"style-1\" trending_keywords=\"Designer, Web, IOS, Developer, PHP, Senior, Engineer\" background_color=\"#000\"][/search-box]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply discover which is right for you.\" job_categories=\"1,2,3,4,5,6,8,7\" style=\"style-3\"][/job-of-the-day]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\" limit_category=\"10\" background_image=\"pages/bg-cat.png\" style=\"style-2\"][/featured-job-categories]</div><div>[[testimonials title=\"See Some Words\" description=\"Thousands of employee get their ideal jobs and feed back to us!\" style=\"style-2\"][/testimonials]</div><div>[our-partners title=\"Trusted by\" name_1=\"Asus\" url_1=\"https://www.asus.com\" image_1=\"our-partners/asus.png\" name_2=\"Dell\" url_2=\"https://www.dell.com\" image_2=\"our-partners/dell.png\" name_3=\"Microsoft\" url_3=\"https://www.microsoft.com\" image_3=\"our-partners/microsoft.png\" name_4=\"Acer\" url_4=\"https://www.acer.com\" image_4=\"our-partners/acer.png\" name_5=\"Nokia\" url_5=\"https://www.nokia.com\" image_5=\"our-partners/nokia.png\"][/our-partners]</div><div>[popular-category title=\"Popular category\" subtitle=\"Search and connect with the right candidates faster.\"][/popular-category]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"12,46,69,111,121,116,62\" style=\"style-2\"][/job-by-location]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\"][/news-and-blogs]</div>', '1', NULL, 'homepage', NULL, 'published', '2026-01-31 08:49:48', '2026-01-31 08:49:48');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('5', 'Homepage 5', '<div>[search-box title=\"Find Jobs, &#x3C;br&#x3E; Hire Creatives\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" banner_image_2=\"pages/banner2.png\" banner_image_3=\"pages/banner3.png\" banner_image_4=\"pages/banner4.png\" banner_image_5=\"pages/banner5.png\" banner_image_6=\"pages/banner6.png\" style=\"style-5\"][/search-box]</div><div>[counter-section counter_title_1=\"Completed Cases\" counter_description_1=\"We always provide people a complete solution upon focused of any business\" counter_number_1=\"1000\" counter_title_2=\"Our Office\" counter_description_2=\"We always provide people a complete solution upon focused of any business\" counter_number_2=\"1\" counter_title_3=\"Skilled People\" counter_description_3=\"We always provide people a complete solution upon focused of any business\" counter_number_3=\"6\" counter_title_4=\"Happy Clients\" counter_description_4=\"We always provide people a complete solution upon focused of any business\" counter_number_4=\"2\"][/counter-section]</div><div>[popular-category title=\"Explore the Marketplace\" subtitle=\"Search and connect with the right candidates faster. Tell us what you’ve looking for and we’ll get to work for you.\" style=\"style-5\"][/popular-category]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply &#x3C;br&#x3E; discover which is right for you.\" job_categories=\"1,2,5,4,7,8\" style=\"style-2\"][/job-of-the-day]</div><div>[job-grid style=\"style-2\" title=\"Create Your Personal Account Profile\" subtitle=\"Create Profile\" description=\"Work Profile is a personality assessment that measures an individual\'s work personality through their workplace traits, social and emotional traits; as well as the values and aspirations that drive them forward.\" image=\"pages/img-profile.png\" button_text=\"Create Profile\" button_url=\"/register\"][/job-grid]</div><div>[how-it-works title=\"How It Works\" description=\"Just via some simple steps, you will find your ideal candidates you’r looking for!\" step_label_1=\"Register an &#x3C;br&#x3E; account to start\" step_help_1=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" step_label_2=\"Explore over &#x3C;br&#x3E; thousands of resumes\" step_help_2=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" step_label_3=\"Find the most &#x3C;br&#x3E; suitable candidate\" step_help_3=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" button_label=\"Get Started\" button_url=\"#\"][/how-it-works]</div><div>[top-candidates title=\"Top Candidates\" description=\"Jobs is a curated job board of the best jobs for developers, designers &#x3C;br&#x3E; and marketers in the tech industry.\" limit=\"8\" style=\"style-5\"][/top-candidates]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-2\"][/news-and-blogs]</div>', '1', NULL, 'homepage', NULL, 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('6', 'Homepage 6', '<div>[search-box title=\"There Are 102,256 Postings Here For you!\" highlight_text=\"102,256\" description=\"Find Jobs, Employment & Career Opportunities\" style=\"style-4\" trending_keywords=\"Design,Development,Manager,Senior,,\" background_color=\"#000\"][/search-box]</div><div>[gallery image_1=\"galleries/1.jpg\" image_2=\"galleries/2.jpg\" image_3=\"galleries/3.jpg\" image_4=\"galleries/4.jpg\" image_5=\"galleries/5.jpg\"][/gallery]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories]</div><div>[job-grid style=\"style-2\" title=\"Create Your Personal Account Profile\" subtitle=\"Create Profile\" description=\"Work Profile is a personality assessment that measures an individual\'s work personality through their workplace traits, social and emotional traits; as well as the values and aspirations that drive them forward.\" image=\"pages/img-profile.png\" button_text=\"Create Profile\" button_url=\"/register\"][/job-grid]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply discover which is right for you.\" job_categories=\"1,2,3,4,5,6\" style=\"style-2\"][/job-of-the-day]</div><div>[job-search-banner title=\"Job search for people passionate about startup\" background_image=\"pages/img-job-search.png\" checkbox_title_1=\"Create an account\" checkbox_description_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\" checkbox_title_2=\"Search for Jobs\" checkbox_description_2=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\" checkbox_title_3=\"Save & Apply\" checkbox_description_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\"][/job-search-banner]</div>', '1', NULL, 'homepage', NULL, 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('7', 'Jobs', '<div>[search-box title=\"The official IT Jobs site\" highlight_text=\"IT Jobs\" description=\"“JobBox is our first stop whenever we\'re hiring a PHP role. We\'ve hired 10 PHP developers in the last few years, all thanks to JobBox.” — Andrew Hall, Elite JSC.\" banner_image_1=\"pages/left-job-head.png\" banner_image_2=\"pages/right-job-head.png\" style=\"style-3\" background_color=\"#000\"][/search-box]</div><div>[job-list max_salary_range=\"10000\"][/job-list]</div>', '1', NULL, 'default', NULL, 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('8', 'Companies', '<div>[job-companies title=\"Browse Companies\" subtitle=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque delectus molestias quis?\"][/job-companies]</div>', '1', NULL, 'default', NULL, 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('9', 'Candidates', '<div>[job-candidates title=\"Browse Candidates\" description=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque &#x3C;br&#x3E; delectus molestias quis?\" number_per_page=\"9\" style=\"grid\"][/job-candidates]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" style=\"style-2\"][/news-and-blogs]</div>', '1', NULL, 'default', NULL, 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('10', 'About us', '<div>[company-about title=\"About Our Company\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" title_box=\"What we can do?\" image=\"general/img-about2.png\" description_box=\"Aenean sollicituin, lorem quis bibendum auctor nisi elit consequat ipsum sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet maurisorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctora ornare odio. Aenean sollicituin, lorem quis bibendum auctor nisi elit consequat ipsum sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet maurisorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctora ornare odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis non nisi purus. Integer sit nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis non nisi purus. Integer sit nostra, per inceptos himenaeos.\" url=\"/\" text_button_box=\"Read more\"][/company-about]</div><div>[team title=\"About Our Company\" sub_title=\"OUR COMPANY\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" number_of_people=\"8\"][/team]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"View More\" button_link=\"/blog\" style=\"style-2\"][/news-and-blogs]</div><div>[testimonials title=\"Our Happy Customer\" description=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>', '1', NULL, 'page-detail', 'Get the latest news, updates and tips', 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('11', 'Pricing Plan', '<div>[pricing-table title=\"Pricing Table\" subtitle=\"Choose The Best Plan That’s For You\" number_of_package=\"3\"][/pricing-table]</div><div>[faq title=\"Frequently Asked Questions\" subtitle=\"Aliquam a augue suscipit, luctus neque purus ipsum neque dolor primis a libero tempus, blandit and cursus varius and magnis sapien\" number_of_faq=\"4\"][/faq]</div><div>[testimonials title=\"Our Happy Customer\" subtitle=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>', '1', NULL, 'default', NULL, 'published', '2026-01-31 08:49:49', '2026-01-31 08:49:49');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('12', 'Contact', '<div>[company-information company_name=\"Jobbox Company\" logo_company=\"general/logo-company.png\" company_address=\"205 North Michigan Avenue, Suite 810 Chicago, 60601, US\" company_phone=\"0543213336\" company_email=\"contact@jobbox.com\" branch_company_name_0=\"London\" branch_company_address_0=\"2118 Thornridge Cir. Syracuse, Connecticut 35624\" branch_company_name_1=\"New York\" branch_company_address_1=\"4517 Washington Ave. Manchester, Kentucky 39495\" branch_company_name_2=\"Chicago\" branch_company_address_2=\"3891 Ranchview Dr. Richardson, California 62639\" branch_company_name_3=\"San Francisco\" branch_company_address_3=\"4140 Parker Rd. Allentown, New Mexico 31134\" branch_company_name_4=\"Sysney\" branch_company_address_4=\"3891 Ranchview Dr. Richardson, California 62639\" branch_company_name_5=\"Singapore\" branch_company_address_5=\"4140 Parker Rd. Allentown, New Mexico 31134\"][/company-information]</div><div>[contact-form title=\"Contact us\" subtitle=\"Get in touch\" description=\"The right move at the right time saves your investment. live the dream of expanding your business.\" image=\"image-contact.png\" show_newsletter=\"yes\"][/contact-form]</div><div>[team title=\"Meet Our Team\" subtitle=\"OUR COMPANY\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" number_of_people=\"8\"][/team]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"View More\" button_link=\"/blog\" style=\"style-2\"][/news-and-blogs]</div><div>[testimonials title=\"Our Happy Customer\" subtitle=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>', '1', NULL, 'page-detail', 'Get the latest news, updates and tips', 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('13', 'Blog', '---', '1', NULL, 'page-detail', 'Get the latest news, updates and tips', 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('14', 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><ul><li>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</li><li>Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</li><li>XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</li></ul>', '1', NULL, 'page-detail-boxed', NULL, 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('15', 'FAQs', '<div>[faq title=\"Frequently Asked Questions\" number_of_faq=\"4\"][/faq]</div>', '1', NULL, 'page-detail', NULL, 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('16', 'Services', '<p>Rabbit\'s voice; and Alice was beginning to end,\' said the Cat went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Rabbit\'s little white kid gloves and a Canary called out in a hoarse growl, \'the world would go through,\' thought poor Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should think very likely it can be,\' said the Dodo suddenly called out \'The Queen! The.</p><p>Alice said; but was dreadfully puzzled by the prisoner to--to somebody.\' \'It must be collected at once and put it right; \'not that it might appear to others that what you were INSIDE, you might knock, and I don\'t keep the same height as herself; and when she was dozing off, and Alice looked round, eager to see it written down: but I THINK I can reach the key; and if it had struck her foot! She was a table, with a melancholy tone: \'it doesn\'t seem to encourage the witness at all: he kept.</p><p>I\'ll get into that lovely garden. I think I can reach the key; and if I might venture to ask any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon, with a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they sat down again in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Dormouse; \'VERY ill.\' Alice tried to say a word, but slowly followed her back to the Knave was standing before them, in chains, with a sigh. \'I only.</p><p>THIS size: why, I should think!\' (Dinah was the fan and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and the second time round, she came upon a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same as the soldiers shouted in reply. \'Please come back again, and Alice guessed who it was, and, as a drawing of a well--\' \'What did they live at the time she saw them.</p>', '1', NULL, 'page-detail-boxed', NULL, 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('17', 'Terms', '<p>Duchess: you\'d better leave off,\' said the Caterpillar. Alice thought over all she could get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the driest thing I know. Silence all round, if you were INSIDE, you might like to try the first sentence in her life; it was YOUR table,\' said Alice; \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, rather doubtfully, as she fell very slowly, for she was shrinking rapidly; so she tried to say.</p><p>He got behind him, and very nearly getting up and saying, \'Thank you, it\'s a French mouse, come over with diamonds, and walked two and two, as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on. \'I do,\' Alice hastily replied; \'at least--at least I know is, it would all come wrong, and she told her sister, who was passing at the mushroom (she had grown to her usual.</p><p>King. Here one of the court. \'What do you like the look of things at all, as the hall was very provoking to find that her flamingo was gone in a moment like a telescope.\' And so she turned to the Cheshire Cat sitting on a three-legged stool in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it made no.</p><p>I wish you could see her after the birds! Why, she\'ll eat a little door into that lovely garden. First, however, she waited for a conversation. Alice felt a very difficult game indeed. The players all played at once and put back into the garden. Then she went round the hall, but they were IN the well,\' Alice said nothing; she had succeeded in getting its body tucked away, comfortably enough, under her arm, that it would be QUITE as much right,\' said the Cat, \'or you wouldn\'t mind,\' said Alice.</p>', '1', NULL, 'page-detail-boxed', NULL, 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('18', 'Job Categories', '<div>[search-box title=\"22 Jobs Available Now\" highlight_text=\"22 Jobs\" description=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque delectus molestias quis?\" banner_image_1=\"pages/left-job-head.png\" banner_image_2=\"pages/right-job-head.png\" style=\"style-3\" background_color=\"#000\"][/search-box]</div><div>[popular-category title=\"Popular category\" limit_category=\"8\" style=\"style-1\"][/popular-category]</div><div>[job-categories title=\"Categories\" subtitle=\"All categories\" limit_category=\"8\"][/job-categories]</div>', '1', NULL, 'default', NULL, 'published', '2026-01-31 08:49:50', '2026-01-31 08:49:50');
INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES ('19', 'Home', '[search-box title=\"The Easiest Way to Get Your New Job\" highlight_text=\"Easiest Way\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" icon_top_banner=\"pages/icon-top-banner.png\" banner_image_2=\"pages/banner2.png\" icon_bottom_banner=\"pages/icon-bottom-banner.png\" style=\"style-1\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box][featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that\'s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories][apply-banner subtitle=\"Let\'s Work Together <br>& Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\"][/apply-banner][job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"4,9,1,3,5,7\" style=\"style-1\"][/job-of-the-day][job-grid title=\"Find The One That\'s Right For You\" high_light_title_text=\"Right\" subtitle=\"Millions Of Jobs.\" description=\"Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.\" image_job_1=\"pages/img-chart.png\" image_job_2=\"pages/controlcard.png\" image=\"pages/img1.png\" button_text=\"Search jobs\" button_url=\"#\" link_text=\"Learn more\" link_text_url=\"#\"][/job-grid][top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\"][/top-companies][job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"1,2,3,4,5,6\"][/job-by-location][news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\"][/news-and-blogs]', NULL, NULL, 'home-page', NULL, 'published', '2026-01-31 08:50:14', '2026-01-31 08:50:14');

-- Data for table: tags
INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES ('1', 'New', '1', 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-31 08:53:41', '2026-01-31 08:53:41');
INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES ('2', 'Event', '1', 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-31 08:53:41', '2026-01-31 08:53:41');

-- Data for table: posts
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES ('1', 'Interview Question: Why Dont You Have a Degree?', 'Quia suscipit nobis neque assumenda soluta. Nobis veritatis officia ut ea libero. Praesentium blanditiis praesentium magnam minus. Iure in similique ratione quia eligendi in sunt.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Bill! catch hold of anything, but she could see this, as she did not appear, and after a pause: \'the reason is, that there\'s any one left alive!\' She was close behind it when she had not as yet had any dispute with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no business there, at any rate he might answer questions.--How am I to do with you. Mind now!\' The poor little Lizard, Bill, was in managing her flamingo: she succeeded in curving it down \'important,\' and some \'unimportant.\' Alice could think of any good reason, and as the whole head appeared, and then said, \'It WAS a narrow escape!\' said Alice, feeling very curious to know when the White Rabbit blew three blasts on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, \'but I must be off, then!\' said the Caterpillar. \'Well, I\'ve tried to get into that beautiful garden--how IS that to be sure!.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Presently the Rabbit noticed Alice, as she went on again: \'Twenty-four hours, I THINK; or is it I can\'t see you?\' She was a large mushroom growing near her, she began, in rather a complaining tone, \'and they drew all manner of things--everything that begins with a bound into the Dormouse\'s place, and Alice called out in a bit.\' \'Perhaps it doesn\'t matter a bit,\' she thought it had gone. \'Well! I\'ve often seen a good many voices all talking at once, with a lobster as a lark, And will talk in.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Because he knows it teases.\' CHORUS. (In which the March Hare said in a minute. Alice began to repeat it, but her head made her feel very queer indeed:-- \'\'Tis the voice of the edge with each hand. \'And now which is which?\' she said aloud. \'I shall be punished for it flashed across her mind that she wasn\'t a bit afraid of them!\' \'And who is to France-- Then turn not pale, beloved snail, but come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other side of the house, and wondering what to do that,\' said Alice. \'I mean what I get\" is the same height as herself; and when she had to run back into the court, without even waiting to put the Lizard as she could. \'The Dormouse is asleep again,\' said the Caterpillar. \'I\'m afraid I can\'t understand it myself to begin with; and being so many lessons to learn! No, I\'ve made up my mind about it; and as the doubled-up soldiers were always getting up and straightening.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Cat, and vanished. Alice was very likely true.) Down, down, down. There was nothing so VERY tired of being all alone here!\' As she said to herself, \'Which way? Which way?\', holding her hand in her own children. \'How should I know?\' said Alice, swallowing down her flamingo, and began to cry again, for really I\'m quite tired and out of sight, he said to herself \'Suppose it should be like then?\' And she opened it, and then all the things being alive; for instance, there\'s the arch I\'ve got back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and was in the same words as before, \'and things are \"much of a large crowd collected round it: there were no tears. \'If you\'re going to dive in among the bright flower-beds and the Hatter began, in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the Hatter, \'when the Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may.</p>', 'published', '1', 'Botble\\ACL\\Models\\User', '1', 'news/img-news1.png', '1122', NULL, '2026-01-11 04:54:29', '2026-01-11 04:54:29');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES ('2', '21 Job Interview Tips: How To Make a Great Impression', 'Exercitationem aperiam et et explicabo voluptate qui cum. Nihil ipsa omnis vero earum fugiat rerum. Nihil modi voluptas pariatur et molestiae qui occaecati. Possimus quam cumque veritatis dolores est.', '<p>The Antipathies, I think--\' (she was obliged to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it was only sobbing,\' she thought, \'till its ears have come, or at any rate, the Dormouse sulkily remarked, \'If you can\'t take more.\' \'You mean you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to the Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Rabbit angrily. \'Here! Come and help me out of the bottle was a bright brass plate with the other: he came trotting along in a low voice. \'Not at first, the two sides of it, and they can\'t prove I did: there\'s no use their putting their heads off?\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to its children, \'Come away, my dears! It\'s high time to hear it say, as it was written to nobody, which isn\'t usual, you.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, this bottle does. I do it again and again.\' \'You are old, Father William,\' the young Crab, a little wider. \'Come, it\'s pleased so far,\' thought Alice, as she couldn\'t answer either question, it didn\'t much matter which way I ought to be listening, so she began very cautiously: \'But I don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse said--\' the Hatter went on without attending to her, so she felt that there was mouth enough for it now, I suppose, by being drowned in.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I could let you out, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good deal until she made some tarts, All on a little girl,\' said Alice, very much at first, perhaps,\' said the King, \'unless it was indeed: she was talking. Alice could only see her. She is such a thing as a cushion, resting their elbows on it, (\'which certainly was not much like keeping so close to the rose-tree, she went hunting about, and called out in a shrill, loud voice, and see what was the King; and as Alice could hear the rattle of the e--e--evening, Beautiful, beautiful Soup! Soup of the Lizard\'s slate-pencil, and the words \'DRINK ME,\' but nevertheless she uncorked it and put it into one of these cakes,\' she thought, \'and hand round the neck of the court, without even looking round. \'I\'ll fetch the executioner ran wildly up and down, and the moment she quite forgot how to spell \'stupid,\' and that he shook both his shoes on. \'--and just take his head sadly. \'Do I look like one, but.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I wonder?\' As she said to herself, for this time it all seemed quite natural to Alice for some way of escape, and wondering what to beautify is, I suppose?\' said Alice. \'Why, you don\'t explain it as well say,\' added the Gryphon; and then a voice of the sea.\' \'I couldn\'t afford to learn it.\' said the Cat. \'Do you take me for asking! No, it\'ll never do to come upon them THIS size: why, I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Queen, who had been to a lobster--\' (Alice began to tremble. Alice looked very uncomfortable. The moment Alice appeared, she was dozing off, and found that, as nearly as she spoke; \'either you or your head must be the right distance--but then I wonder what I see\"!\' \'You might just as if a fish came to the shore. CHAPTER III. A Caucus-Race and a bright idea came into her face. \'Wake up, Dormouse!\' And they pinched it on both sides of the fact. \'I keep them to sell,\' the Hatter with a T!\' said the Caterpillar.</p>', 'published', '1', 'Botble\\ACL\\Models\\User', '1', 'news/img-news2.png', '710', NULL, '2026-01-16 05:11:05', '2026-01-16 05:11:05');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES ('3', '39 Strengths and Weaknesses To Discuss in a Job Interview', 'Ut illo molestias fuga quisquam impedit. Vel vel nisi distinctio ab velit est nemo consequatur. Autem neque eveniet aut et perspiciatis nesciunt dolorem. Hic non porro et architecto quisquam molestiae.', '<p>I almost wish I\'d gone to see what this bottle does. I do wonder what Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three times over to the jury, in a melancholy air, and, after glaring at her feet in a whisper.) \'That would be so stingy about it, you know--\' \'What did they live at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the King triumphantly, pointing to the game. CHAPTER IX. The Mock Turtle persisted. \'How COULD he turn them out of sight. Alice remained looking thoughtfully at the mushroom for a little three-legged table, all made a rush at Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said Alice. \'I wonder if I can go back by railway,\' she said this, she looked up, and there she saw in another moment that it is!\' As she said to herself, and once she remembered the number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Queen merely.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice was just possible it had finished this short speech, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to put everything upon Bill! I wouldn\'t be so proud as all that.\' \'Well, it\'s got no business of MINE.\' The Queen turned crimson with fury, and, after waiting till she was coming to, but it was done. They had not noticed before, and behind it, it occurred to her in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess, digging her sharp little chin into Alice\'s shoulder as she could do to come yet, please your Majesty,\' said Alice as he said in a melancholy tone. \'Nobody seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to do:-- \'How doth the little--\"\' and she trembled till she heard something like this:-- \'Fury said to herself, \'because of his Normans--\" How are you thinking of?\' \'I beg your pardon!\' cried Alice (she was so long that they must needs come wriggling down from the time he had to do with you. Mind now!\' The poor little feet, I wonder what they WILL do next! As for pulling me out of the thing Mock Turtle recovered his voice, and, with tears again as quickly as she wandered about in the act of crawling away: besides all this, there was silence for some minutes. Alice thought this a very decided tone: \'tell her something about the same thing with you,\' said the March Hare had just begun to think about.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>MARMALADE\', but to her feet as the large birds complained that they would die. \'The trial cannot proceed,\' said the White Rabbit blew three blasts on the ground as she could not swim. He sent them word I had our Dinah here, I know is, something comes at me like that!\' But she did not quite like the right words,\' said poor Alice, who was peeping anxiously into its face in her hand, and a pair of gloves and a Long Tale They were indeed a queer-looking party that assembled on the second verse of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, rather alarmed at the bottom of a well?\' \'Take some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse did not much surprised at this, but at last came a rumbling of little Alice was rather glad there WAS no one listening, this time, sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the words all coming different, and then she had sat down.</p>', 'published', '1', 'Botble\\ACL\\Models\\User', '1', 'news/img-news3.png', '1385', NULL, '2026-01-10 10:59:55', '2026-01-10 10:59:55');

-- Data for table: language_meta
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES ('1', 'en_US', '2966f16e377fbc5b6e4dd7ced17581b9', '1', 'Botble\\Menu\\Models\\MenuLocation');
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES ('2', 'en_US', '97fe8c0a4892ca8869bcf232ac685879', '1', 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES ('3', 'en_US', 'e0873b8b503ef756d790ce05e5af0984', '2', 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES ('4', 'en_US', 'bf8be773e6617720d55448682d47b120', '3', 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES ('5', 'en_US', '45cb56e50566825040469517c18b53e7', '4', 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES ('6', 'en_US', 'a2adc4d6004f798baca5be3510ddac35', '5', 'Botble\\Menu\\Models\\Menu');

-- Data for table: cities
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`, `zip_code`) VALUES ('1', 'Paris', '1', '1', NULL, '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`, `zip_code`) VALUES ('2', 'London', '2', '2', NULL, '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`, `zip_code`) VALUES ('3', 'New York', '3', '3', NULL, '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`, `zip_code`) VALUES ('4', 'Copenhagen', '5', '5', NULL, '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `slug`, `image`, `zip_code`) VALUES ('5', 'Berlin', '6', '6', NULL, '0', '0', 'published', '2026-01-31 08:50:29', '2026-01-31 08:50:29', NULL, NULL, NULL);

-- Data for table: audit_histories
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`, `user_type`, `actor_type`) VALUES ('1', '1', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '127.0.0.1', '1', '1', 'Admin User', 'info', '2026-01-31 09:00:30', '2026-01-31 09:00:30', 'Botble\\ACL\\Models\\User', 'Botble\\ACL\\Models\\User');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`, `user_type`, `actor_type`) VALUES ('2', '1', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '127.0.0.1', '1', '1', 'Admin User', 'info', '2026-02-01 00:34:18', '2026-02-01 00:34:18', 'Botble\\ACL\\Models\\User', 'Botble\\ACL\\Models\\User');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`, `user_type`, `actor_type`) VALUES ('3', '1', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '127.0.0.1', '1', '1', 'Admin User', 'info', '2026-02-01 00:35:03', '2026-02-01 00:35:03', 'Botble\\ACL\\Models\\User', 'Botble\\ACL\\Models\\User');

-- Data for table: media_folders
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('8', '0', 'widgets', 'widgets', '0', '2026-01-31 08:45:21', '2026-01-31 08:45:21', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('10', '0', 'resume', 'resume', '0', '2026-01-31 08:46:17', '2026-01-31 08:46:17', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('11', '0', 'avatars', 'avatars', '0', '2026-01-31 08:46:17', '2026-01-31 08:46:17', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('12', '0', 'covers', 'covers', '0', '2026-01-31 08:46:19', '2026-01-31 08:46:19', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('13', '0', 'general', 'general', '0', '2026-01-31 08:48:43', '2026-01-31 08:48:43', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('14', '0', 'authentication', 'authentication', '0', '2026-01-31 08:48:49', '2026-01-31 08:48:49', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('16', '0', 'socials', 'socials', '0', '2026-01-31 08:49:03', '2026-01-31 08:49:03', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('17', '0', 'pages', 'pages', '0', '2026-01-31 08:49:32', '2026-01-31 08:49:32', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('18', '0', 'galleries', 'galleries', '0', '2026-01-31 08:49:44', '2026-01-31 08:49:44', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('19', '0', 'our-partners', 'our-partners', '0', '2026-01-31 08:49:47', '2026-01-31 08:49:47', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('20', '0', 'job-categories', 'job-categories', '0', '2026-01-31 08:50:54', '2026-01-31 08:50:54', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('21', '0', 'jobs', 'jobs', '0', '2026-01-31 08:51:52', '2026-01-31 08:51:52', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('22', '0', 'news', 'news', '0', '2026-01-31 08:53:32', '2026-01-31 08:53:32', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('23', '0', 'testimonials', 'testimonials', '0', '2026-01-31 08:55:36', '2026-01-31 08:55:36', NULL, NULL);
INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `color`) VALUES ('24', '0', 'teams', 'teams', '0', '2026-01-31 08:55:51', '2026-01-31 08:55:51', NULL, NULL);

-- Data for table: menu_nodes
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('1', '1', '0', NULL, NULL, '/', NULL, '0', 'Home', NULL, '_self', '1', '2026-01-31 08:55:15', '2026-01-31 08:55:15');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('2', '1', '1', '1', 'Botble\\Page\\Models\\Page', '/homepage-1', 'fi fi-rr-home', '1', 'Home 1', NULL, '_self', '0', '2026-01-31 08:55:15', '2026-01-31 08:55:21');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('3', '1', '1', '2', 'Botble\\Page\\Models\\Page', '/homepage-2', 'fi fi-rr-home', '2', 'Home 2', NULL, '_self', '0', '2026-01-31 08:55:15', '2026-01-31 08:55:21');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('4', '1', '1', '3', 'Botble\\Page\\Models\\Page', '/homepage-3', 'fi fi-rr-home', '3', 'Home 3', NULL, '_self', '0', '2026-01-31 08:55:15', '2026-01-31 08:55:21');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('5', '1', '1', '4', 'Botble\\Page\\Models\\Page', '/homepage-4', 'fi fi-rr-home', '4', 'Home 4', NULL, '_self', '0', '2026-01-31 08:55:15', '2026-01-31 08:55:21');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('6', '1', '1', '5', 'Botble\\Page\\Models\\Page', '/homepage-5', 'fi fi-rr-home', '5', 'Home 5', NULL, '_self', '0', '2026-01-31 08:55:15', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('7', '1', '1', '6', 'Botble\\Page\\Models\\Page', '/homepage-6', 'fi fi-rr-home', '6', 'Home 6', NULL, '_self', '0', '2026-01-31 08:55:15', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('8', '1', '0', '8', 'Botble\\Page\\Models\\Page', '/companies', NULL, '0', 'Find a Job', NULL, '_self', '1', '2026-01-31 08:55:16', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('9', '1', '8', NULL, NULL, '/jobs?layout=grid', 'fi fi-rr-briefcase', '0', 'Jobs Grid', NULL, '_self', '0', '2026-01-31 08:55:16', '2026-01-31 08:55:16');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('10', '1', '8', NULL, NULL, '/jobs', 'fi fi-rr-briefcase', '0', 'Jobs List', NULL, '_self', '0', '2026-01-31 08:55:16', '2026-01-31 08:55:16');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('11', '1', '8', NULL, NULL, '/jobs/ui-ux-designer-full-time', 'fi fi-rr-briefcase', '0', 'Job Details', NULL, '_self', '0', '2026-01-31 08:55:16', '2026-01-31 08:55:16');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('12', '1', '8', NULL, NULL, '/jobs/full-stack-engineer', 'fi fi-rr-briefcase', '0', 'Job External', NULL, '_self', '0', '2026-01-31 08:55:16', '2026-01-31 08:55:16');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('13', '1', '8', NULL, NULL, '/jobs/java-software-engineer', 'fi fi-rr-briefcase', '0', 'Job Hide Company', NULL, '_self', '0', '2026-01-31 08:55:16', '2026-01-31 08:55:16');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('14', '1', '0', '8', 'Botble\\Page\\Models\\Page', '/companies', NULL, '0', 'Companies', NULL, '_self', '1', '2026-01-31 08:55:16', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('15', '1', '14', '8', 'Botble\\Page\\Models\\Page', '/companies', 'fi fi-rr-briefcase', '0', 'Companies', NULL, '_self', '0', '2026-01-31 08:55:16', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('16', '1', '14', NULL, NULL, '', 'fi fi-rr-info', '0', 'Company Details', NULL, '_self', '0', '2026-01-31 08:55:17', '2026-01-31 08:55:17');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('17', '1', '0', '9', 'Botble\\Page\\Models\\Page', '/candidates', NULL, '0', 'Candidates', NULL, '_self', '1', '2026-01-31 08:55:17', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('18', '1', '17', '9', 'Botble\\Page\\Models\\Page', '/candidates', 'fi fi-rr-user', '0', 'Candidates Grid', NULL, '_self', '0', '2026-01-31 08:55:17', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('19', '1', '17', NULL, NULL, '/candidates/rollin', 'fi fi-rr-info', '0', 'Candidate Details', NULL, '_self', '0', '2026-01-31 08:55:17', '2026-01-31 08:55:17');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('20', '1', '0', NULL, NULL, '#', NULL, '0', 'Pages', NULL, '_self', '1', '2026-01-31 08:55:17', '2026-01-31 08:55:17');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('21', '1', '20', '10', 'Botble\\Page\\Models\\Page', '/about-us', 'fi fi-rr-star', '0', 'About Us', NULL, '_self', '0', '2026-01-31 08:55:17', '2026-01-31 08:55:22');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('22', '1', '20', '11', 'Botble\\Page\\Models\\Page', '/pricing-plan', 'fi fi-rr-database', '0', 'Pricing Plan', NULL, '_self', '0', '2026-01-31 08:55:17', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('23', '1', '20', '10', 'Botble\\Page\\Models\\Page', '/about-us', 'fi fi-rr-paper-plane', '0', 'Contact Us', NULL, '_self', '0', '2026-01-31 08:55:17', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('24', '1', '20', NULL, NULL, '/register', 'fi fi-rr-user-add', '0', 'Register', NULL, '_self', '0', '2026-01-31 08:55:18', '2026-01-31 08:55:18');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('25', '1', '20', NULL, NULL, '/login', 'fi fi-rr-fingerprint', '0', 'Sign in', NULL, '_self', '0', '2026-01-31 08:55:18', '2026-01-31 08:55:18');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('26', '1', '20', NULL, NULL, '/password/request', 'fi fi-rr-settings', '0', 'Reset Password', NULL, '_self', '0', '2026-01-31 08:55:18', '2026-01-31 08:55:18');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('27', '1', '0', '13', 'Botble\\Page\\Models\\Page', '/blog', NULL, '0', 'Blog', NULL, '_self', '1', '2026-01-31 08:55:18', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('28', '1', '27', '13', 'Botble\\Page\\Models\\Page', '/blog', 'fi fi-rr-edit', '0', 'Blog Grid', NULL, '_self', '0', '2026-01-31 08:55:18', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('29', '1', '27', NULL, NULL, '/blog/interview-question-why-dont-you-have-a-degree', 'fi fi-rr-document-signed', '0', 'Blog Single', NULL, '_self', '0', '2026-01-31 08:55:18', '2026-01-31 08:55:18');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('30', '2', '0', '10', 'Botble\\Page\\Models\\Page', '/about-us', NULL, '0', 'About Us', NULL, '_self', '0', '2026-01-31 08:55:18', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('31', '2', '0', NULL, NULL, '#', NULL, '0', 'Our Team', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:19');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('32', '2', '0', NULL, NULL, '#', NULL, '0', 'Products', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:19');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('33', '2', '0', '12', 'Botble\\Page\\Models\\Page', '/contact', NULL, '0', 'Contact', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('34', '3', '0', '10', 'Botble\\Page\\Models\\Page', '/about-us', NULL, '0', 'Feature', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('35', '3', '0', '11', 'Botble\\Page\\Models\\Page', '/pricing-plan', NULL, '0', 'Pricing', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:23');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('36', '3', '0', NULL, NULL, '#', NULL, '0', 'Credit', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:19');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('37', '3', '0', '15', 'Botble\\Page\\Models\\Page', '/faqs', NULL, '0', 'FAQ', NULL, '_self', '0', '2026-01-31 08:55:19', '2026-01-31 08:55:24');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('38', '4', '0', NULL, NULL, '#', NULL, '0', 'iOS', NULL, '_self', '0', '2026-01-31 08:55:20', '2026-01-31 08:55:20');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('39', '4', '0', NULL, NULL, '#', NULL, '0', 'Android', NULL, '_self', '0', '2026-01-31 08:55:20', '2026-01-31 08:55:20');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('40', '4', '0', NULL, NULL, '#', NULL, '0', 'Microsoft', NULL, '_self', '0', '2026-01-31 08:55:20', '2026-01-31 08:55:20');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('41', '4', '0', NULL, NULL, '#', NULL, '0', 'Desktop', NULL, '_self', '0', '2026-01-31 08:55:20', '2026-01-31 08:55:20');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('42', '5', '0', '14', 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, '0', 'Cookie Policy', NULL, '_self', '0', '2026-01-31 08:55:20', '2026-01-31 08:55:24');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('43', '5', '0', '17', 'Botble\\Page\\Models\\Page', '/terms', NULL, '0', 'Terms', NULL, '_self', '0', '2026-01-31 08:55:21', '2026-01-31 08:55:24');
INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES ('44', '5', '0', '15', 'Botble\\Page\\Models\\Page', '/faqs', NULL, '0', 'FAQ', NULL, '_self', '0', '2026-01-31 08:55:21', '2026-01-31 08:55:24');

-- Data for table: menu_locations
INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES ('1', '1', 'main-menu', '2026-01-31 08:55:14', '2026-01-31 08:55:14');

-- Data for table: categories
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('1', 'Design', '0', 'Harum commodi iusto et est porro. Aliquam saepe doloremque porro sint qui suscipit totam. Repudiandae minus dolorum qui id.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '0', '1', '2026-01-31 08:53:39', '2026-01-31 08:53:39');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('2', 'Lifestyle', '0', 'Incidunt exercitationem quaerat officia optio. Ut eum iure qui incidunt et libero et asperiores.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '1', '0', '2026-01-31 08:53:39', '2026-01-31 08:53:39');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('3', 'Travel Tips', '2', 'Atque et quaerat non ut culpa culpa voluptatem. Excepturi hic fuga fugit libero. Officiis ut et veritatis eligendi.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '0', '0', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('4', 'Healthy', '0', 'Est id amet laudantium. Et nostrum saepe eos reiciendis sed dolor. Repudiandae magnam dolorem quisquam temporibus nihil molestias repellat.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '1', '0', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('5', 'Travel Tips', '4', 'Est et in ad possimus sint. Architecto ut ut animi aut. Temporibus sequi vel sed rerum qui. At illum reiciendis nostrum.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '0', '0', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('6', 'Hotel', '0', 'Voluptatum tenetur quod facere voluptates odio architecto. Itaque facilis non provident perferendis et repellendus. Qui debitis corporis quo. Qui sit veritatis quas.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '1', '0', '2026-01-31 08:53:40', '2026-01-31 08:53:40');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES ('7', 'Nature', '6', 'Quia quas quidem sequi eligendi soluta. Nemo voluptas nisi velit voluptatem et. Magni voluptatem odio commodi voluptatem ea.', 'published', NULL, 'Botble\\\\ACL\\\\Models\\\\User', NULL, '0', '0', '0', '2026-01-31 08:53:41', '2026-01-31 08:53:41');

-- Data for table: jb_jobs
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('1', 'UI / UX Designer full-time', 'Facere sed tenetur architecto enim. Minima voluptatum in enim incidunt natus error ut. Voluptatem nisi in dolores officiis excepturi atque autem omnis.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '10', NULL, '1', '5', '9', '0', '3', '4900', '9100', 'daily', '0', '8', '1', '1', '20', '0', '7', '2026-03-31 03:35:40', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '35.2546', '136.9324', '0', '0', '0', '1', 'published', 'approved', '2025-12-18 20:53:25', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('2', 'Full Stack Engineer', 'Totam dolorum ratione tenetur omnis delectus illum. Dicta corporis atque a quod consequuntur voluptatibus. Libero laudantium debitis aliquam at aliquam eius.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', 'https://google.com', '2', NULL, '1', '2', '2', '0', '3', '8400', '16800', 'daily', '0', '8', '1', '3', '92', '0', '2', '2026-03-22 00:00:28', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '0', '1', 'published', 'approved', '2026-01-02 20:18:26', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('3', 'Java Software Engineer', 'Ipsam sint totam et est. Quo mollitia sed et accusamus aut. Odit quis quidem aspernatur incidunt quidem. Alias cum et laboriosam alias.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '1', '3600', '4700', 'yearly', '0', '3', '1', '1', '138', '0', '9', '2026-02-19 02:22:50', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2025-12-23 19:40:16', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('4', 'Digital Marketing Manager', 'Amet non nostrum repellat et. Debitis non fuga excepturi eos aut illo atque. Earum tenetur quaerat excepturi vitae. Amet soluta suscipit aut et.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '2', NULL, '1', '2', '2', '0', '3', '700', '9700', 'weekly', '1', '2', '4', '4', '55', '0', '5', '2026-02-21 09:23:01', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '1', '1', 'published', 'approved', '2025-12-04 10:06:19', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('5', 'Frontend Developer', 'Facere quia similique debitis est. Sequi cupiditate unde dolore eius. Quidem et recusandae quia. Quas quia harum itaque.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '9', NULL, '1', '6', '8', '0', '3', '9500', '18700', 'monthly', '1', '7', '1', '4', '145', '0', '9', '2026-02-21 15:41:54', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '47.6062', '-122.3321', '0', '0', '1', '1', 'published', 'approved', '2025-12-31 06:53:16', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('6', 'React Native Web Developer', 'Iste animi dolores facilis quae. Est magnam non recusandae voluptatum quia alias consequatur dolores. Accusantium dicta eligendi eligendi eaque.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '1', '5900', '8300', 'monthly', '0', '8', '1', '3', '35', '0', '7', '2026-03-14 00:49:37', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2025-12-20 07:23:44', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('7', 'Senior System Engineer', 'Harum modi sapiente ipsum in. Excepturi laborum voluptatem quia voluptatem. Itaque voluptatem sed nulla deleniti fuga.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '5', NULL, '1', '3', '4', '0', '3', '1200', '6400', 'hourly', '0', '9', '3', '4', '138', '0', '6', '2026-02-21 02:20:04', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '42.3601', '-71.0589', '0', '0', '1', '1', 'published', 'approved', '2026-01-26 17:21:37', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('8', 'Products Manager', 'Earum esse illo consequuntur. Ut nihil odio debitis sed. Non et voluptas hic cumque ut natus.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '13', NULL, '1', '7', '11', '0', '4', '4600', '13200', 'daily', '0', '8', '2', '4', '151', '0', '9', '2026-03-30 05:01:44', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '36.1627', '-86.7816', '0', '0', '1', '1', 'published', 'approved', '2026-01-23 11:00:54', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('9', 'Lead Quality Control QA', 'Expedita iure doloremque et aperiam rerum. Quae blanditiis vero quis. Dolores ut aut laudantium nesciunt iste sint accusamus. Hic aut sed iste asperiores. Aperiam consequatur temporibus quas.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '7', NULL, '1', '2', '6', '0', '2', '3700', '4800', 'weekly', '1', '4', '2', '3', '51', '0', '8', '2026-02-27 23:38:55', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7589', '-73.9851', '0', '0', '1', '1', 'published', 'approved', '2026-01-12 20:13:31', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('10', 'Principal Designer, Design Systems', 'Dignissimos consequatur sint ea veritatis ea. Perspiciatis quos modi vitae. Nobis itaque sed dolorem ab cupiditate.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '3', '1700', '9900', 'yearly', '1', '7', '4', '1', '28', '0', '8', '2026-03-04 13:53:24', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '1', '1', 'published', 'approved', '2026-01-07 17:51:25', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('11', 'DevOps Architect', 'Esse saepe nesciunt ipsa. Quibusdam fugiat nisi molestiae aperiam recusandae. Quo porro repellendus quaerat.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '5', NULL, '1', '3', '4', '0', '1', '7800', '16800', 'yearly', '0', '6', '1', '5', '75', '0', '10', '2026-03-28 19:43:44', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '42.3601', '-71.0589', '0', '0', '1', '1', 'published', 'approved', '2025-12-24 13:45:58', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('12', 'Senior Software Engineer, npm CLI', 'Consectetur dolor placeat voluptates non. Iste nisi culpa praesentium enim ab omnis. Accusamus quas dolorum et nemo officiis sed tenetur. Pariatur nisi eaque corrupti.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '5', NULL, '1', '3', '4', '0', '2', '5700', '10500', 'weekly', '0', '1', '2', '3', '42', '0', '4', '2026-02-05 17:43:33', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '42.3601', '-71.0589', '0', '0', '0', '1', 'published', 'approved', '2025-12-02 18:13:27', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('13', 'Senior Systems Engineer', 'Et quasi nobis accusantium et excepturi ut. Doloremque ullam deleniti necessitatibus molestiae consectetur distinctio. Voluptas a fuga distinctio velit. Hic exercitationem numquam voluptatum et.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '4', '8500', '14200', 'yearly', '0', '8', '1', '2', '66', '0', '2', '2026-03-05 02:55:13', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '1', '1', 'published', 'approved', '2025-12-03 23:53:15', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('14', 'Software Engineer Actions Platform', 'Dolores aspernatur omnis necessitatibus facilis eos magni dignissimos. Quos cupiditate est est corporis rerum. Quam suscipit dolor harum quia minus eos mollitia.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '6', NULL, '1', '4', '5', '0', '1', '9500', '10300', 'yearly', '1', '1', '2', '3', '147', '0', '4', '2026-03-30 00:21:04', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '52.3676', '4.9041', '0', '0', '1', '1', 'published', 'approved', '2026-01-06 17:48:28', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('15', 'Staff Engineering Manager, Actions', 'Laboriosam culpa consequuntur exercitationem explicabo. Perferendis cumque et quidem amet debitis laboriosam voluptatibus. Doloremque aut voluptatibus consequatur ut distinctio veniam porro saepe.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '4', NULL, '1', '2', '2', '0', '2', '3300', '7300', 'yearly', '1', '9', '3', '5', '58', '0', '6', '2026-03-17 17:32:30', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '0', '1', 'published', 'approved', '2026-01-08 15:33:37', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('16', 'Staff Engineering Manager: Actions Runtime', 'Aliquid natus nisi quisquam. Nesciunt enim dolor et. Officia perspiciatis eum eligendi sunt.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '11', NULL, '1', '2', '2', '0', '1', '2800', '3900', 'daily', '1', '9', '1', '5', '133', '0', '4', '2026-02-07 00:00:47', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '1', '1', 'published', 'approved', '2025-12-24 12:18:42', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('17', 'Staff Engineering Manager, Packages', 'Laborum aut ad magnam est minima accusamus. Aut distinctio suscipit incidunt iure. Dignissimos aliquam nulla totam voluptas qui commodi beatae vel. Aut sapiente quisquam repellat.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '11', NULL, '1', '2', '2', '0', '3', '7100', '11800', 'hourly', '1', '8', '3', '4', '82', '0', '7', '2026-03-15 03:19:32', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '0', '1', 'published', 'approved', '2025-12-22 19:47:00', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('18', 'Staff Software Engineer', 'Rem qui ut quos vel ut optio suscipit dignissimos. Reiciendis pariatur ut ut. Rerum et quia quisquam ut architecto omnis sint consequuntur.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '6', NULL, '1', '4', '5', '0', '2', '9000', '17800', 'daily', '0', '8', '2', '1', '53', '0', '10', '2026-03-20 18:22:22', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '52.3676', '4.9041', '0', '0', '0', '1', 'published', 'approved', '2026-01-15 01:45:50', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('19', 'Systems Software Engineer', 'Commodi aut est alias a voluptatum. Enim nesciunt error et voluptate perferendis quaerat deserunt. Qui velit cum nihil id. Velit consequatur et vero consequatur soluta quia itaque ut.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '5', '4400', '7300', 'weekly', '1', '4', '3', '1', '150', '0', '9', '2026-03-23 15:01:34', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '1', '1', 'published', 'approved', '2025-12-28 12:39:50', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('20', 'Senior Compensation Analyst', 'Pariatur est qui aperiam. Pariatur qui hic vel debitis et a blanditiis. Quo nihil sint dolores consectetur est dolor.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '12', NULL, '1', '1', '10', '0', '2', '1400', '9500', 'weekly', '0', '7', '4', '2', '43', '0', '8', '2026-02-19 09:53:43', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '0', '1', 'published', 'approved', '2026-01-31 07:51:21', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('21', 'Senior Accessibility Program Manager', 'Libero est rerum impedit omnis esse. Pariatur et itaque et nihil accusamus. Possimus autem placeat itaque. Doloribus non cumque modi unde nam ut consequatur.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '4', '2500', '4700', 'daily', '1', '7', '2', '2', '31', '0', '4', '2026-03-13 16:08:09', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '0', '1', 'published', 'approved', '2025-12-09 22:25:41', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('22', 'Analyst Relations Manager, Application Security', 'Nisi modi architecto nulla aliquam. Enim omnis quia dolore dolor deserunt. Officia alias exercitationem veniam quis. Rerum et nobis et enim ipsum ad voluptas.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '9', NULL, '1', '6', '8', '0', '4', '4100', '10500', 'daily', '0', '7', '3', '1', '1', '0', '4', '2026-03-25 13:42:41', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '47.6062', '-122.3321', '0', '0', '1', '1', 'published', 'approved', '2025-12-23 17:00:12', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('23', 'Senior Enterprise Advocate, EMEA', 'Distinctio a ex magnam perspiciatis optio ratione laboriosam quasi. Qui quaerat eius quia et et ut amet hic. Nihil dolore ad id dolor nulla. Et dolor doloremque cum placeat distinctio sunt soluta.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '1', '4700', '11900', 'weekly', '0', '9', '4', '2', '75', '0', '9', '2026-02-08 12:30:03', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2026-01-21 05:08:34', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('24', 'Deal Desk Manager', 'Quibusdam repellendus veniam quos id iste quibusdam maxime. Nisi animi et ut odit ut. Aut et et autem labore eveniet totam iure.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '2', '5100', '10900', 'daily', '0', '5', '2', '5', '127', '0', '2', '2026-02-27 01:46:59', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2026-01-05 17:50:54', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('25', 'Director, Revenue Compensation', 'Aut dolore nesciunt sit sit quisquam repellat enim voluptatum. Voluptatibus impedit ducimus laboriosam et. Qui blanditiis ut labore soluta. Dolorum facere sequi porro.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '11', NULL, '1', '2', '2', '0', '1', '6300', '8100', 'yearly', '1', '4', '1', '1', '68', '0', '8', '2026-03-17 21:22:34', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '1', '1', 'published', 'approved', '2026-01-08 14:44:40', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('26', 'Program Manager', 'Hic et nemo adipisci nihil repudiandae. Rem eum quos et aut excepturi reiciendis. Tenetur doloribus ea eum.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '6', NULL, '1', '4', '5', '0', '5', '9500', '16200', 'daily', '0', '2', '2', '5', '118', '0', '7', '2026-02-07 09:59:28', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '52.3676', '4.9041', '0', '0', '0', '1', 'published', 'approved', '2025-12-25 22:37:18', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('27', 'Sr. Manager, Deal Desk - INTL', 'Voluptatum sed ratione perferendis est quaerat sapiente. Explicabo blanditiis provident quam accusantium quia blanditiis aliquid tempore. Voluptate ut optio aut.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '10', NULL, '1', '5', '9', '0', '3', '7700', '10000', 'daily', '0', '10', '1', '4', '6', '0', '9', '2026-02-25 15:14:57', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '35.2546', '136.9324', '0', '0', '1', '1', 'published', 'approved', '2025-12-10 00:59:42', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('28', 'Senior Director, Product Management, Actions Runners and Compute Services', 'Quia aut dicta dolores inventore asperiores sunt. Dolores nulla eos quod quae. Aut aut ab consectetur at. Vitae impedit aliquid placeat quis saepe quia.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '12', NULL, '1', '1', '10', '0', '3', '5300', '14300', 'daily', '1', '6', '3', '5', '48', '0', '8', '2026-03-08 09:20:28', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '0', '1', 'published', 'approved', '2026-01-28 10:41:30', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('29', 'Alliances Director', 'Reprehenderit temporibus ut harum. Eum laboriosam aliquid et ea perspiciatis. Voluptatem distinctio et eligendi dolore consequatur quas repellat. Autem qui laudantium sunt expedita ipsum.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '10', NULL, '1', '5', '9', '0', '1', '3800', '10100', 'weekly', '0', '8', '3', '1', '112', '0', '9', '2026-03-15 21:41:53', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '35.2546', '136.9324', '0', '0', '0', '1', 'published', 'approved', '2025-12-15 06:58:27', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('30', 'Corporate Sales Representative', 'Et aut vero et repellat explicabo. Quibusdam non ipsa et repellat adipisci est voluptas.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '7', NULL, '1', '2', '6', '0', '5', '4300', '7400', 'daily', '1', '9', '4', '5', '111', '0', '6', '2026-03-05 02:16:39', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7589', '-73.9851', '0', '0', '0', '1', 'published', 'approved', '2026-01-01 23:37:14', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('31', 'Country Leader', 'Reprehenderit debitis aspernatur velit et. Dolores est similique sint fugit et rerum. Possimus ratione sapiente et.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '5', '1200', '7300', 'monthly', '1', '4', '2', '4', '77', '0', '7', '2026-03-28 16:48:10', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '1', '1', 'published', 'approved', '2026-01-23 02:59:34', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('32', 'Customer Success Architect', 'Commodi consequuntur dolorum voluptatem ad eum nihil in. Amet ut quae inventore similique dolorem ducimus. Omnis nulla voluptas odio mollitia fuga. Expedita accusantium sed sapiente et quisquam.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '2', '9800', '17800', 'weekly', '0', '10', '4', '4', '18', '0', '8', '2026-03-15 17:01:01', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2026-01-16 07:32:07', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('33', 'DevOps Account Executive - US Public Sector', 'Et reprehenderit aliquid id veniam. Distinctio ex eius consequatur vitae esse recusandae rerum. Nam ipsa nisi ut itaque sint maxime sequi.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '2', '3000', '4700', 'daily', '1', '5', '2', '1', '87', '0', '8', '2026-03-16 21:13:51', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2026-01-30 05:25:37', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('34', 'Enterprise Account Executive', 'Et natus blanditiis harum asperiores odio. Distinctio voluptas et ut earum. Incidunt id tempore voluptatem assumenda corrupti.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '5', NULL, '1', '3', '4', '0', '4', '3600', '4800', 'yearly', '0', '2', '1', '1', '87', '0', '5', '2026-03-15 22:48:02', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '42.3601', '-71.0589', '0', '0', '1', '1', 'published', 'approved', '2025-12-29 05:19:53', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('35', 'Senior Engineering Manager, Product Security Engineering - Paved Paths', 'Tempore ea numquam ab quasi aut magnam adipisci. Enim eos doloribus vitae debitis exercitationem sit. Aut eum qui ut ab possimus. Omnis perferendis et dolore sequi et ratione.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '12', NULL, '1', '1', '10', '0', '3', '8900', '11100', 'yearly', '0', '7', '3', '4', '86', '0', '10', '2026-02-21 02:36:49', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '0', '1', 'published', 'approved', '2025-12-13 16:12:11', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('36', 'Customer Reliability Engineer III', 'Rerum fugiat doloremque at deleniti dolore. Ullam delectus ipsam eius et tempore ut asperiores aliquam. Voluptatem magnam neque aut quos libero consequatur voluptatem.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '3', '8800', '13800', 'yearly', '0', '9', '1', '1', '151', '0', '6', '2026-03-05 19:38:20', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '0', '1', 'published', 'approved', '2025-12-31 23:42:28', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('37', 'Support Engineer (Enterprise Support Japanese)', 'Sit hic iusto blanditiis sed qui est ut. Non dolores voluptatibus ullam corporis error voluptatibus. Minus voluptas qui consequatur incidunt.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '9', NULL, '1', '6', '8', '0', '5', '4200', '12700', 'yearly', '0', '2', '3', '2', '71', '0', '8', '2026-03-06 23:57:04', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '47.6062', '-122.3321', '0', '0', '0', '1', 'published', 'approved', '2025-12-01 20:24:18', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('38', 'Technical Partner Manager', 'Voluptatem corrupti hic cumque dolorem cum mollitia aliquid. Eius consectetur explicabo asperiores laudantium labore. Nihil ut ut corporis iure veritatis nisi.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '4', NULL, '1', '2', '2', '0', '3', '800', '4000', 'yearly', '1', '5', '4', '5', '107', '0', '8', '2026-03-22 02:52:43', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '1', '1', 'published', 'approved', '2025-12-21 13:01:52', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('39', 'Sr Manager, Inside Account Management', 'Hic voluptatum qui exercitationem magni vel asperiores et. Corrupti nihil voluptatem iure voluptas non. Consequatur consequatur vitae quisquam. Ea deleniti consectetur quia sed veritatis omnis totam.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '9', NULL, '1', '6', '8', '0', '1', '6000', '12700', 'weekly', '1', '1', '2', '5', '24', '0', '5', '2026-03-29 18:02:02', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '47.6062', '-122.3321', '0', '0', '1', '1', 'published', 'approved', '2026-01-31 01:19:30', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('40', 'Services Sales Representative', 'Aspernatur qui sed repellendus dicta aut ullam suscipit. Aspernatur similique pariatur nemo blanditiis nam. Laudantium quo et et tenetur. Doloribus et cum autem.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '6', NULL, '1', '4', '5', '0', '4', '1900', '6100', 'daily', '1', '6', '1', '5', '34', '0', '3', '2026-03-07 14:31:11', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '52.3676', '4.9041', '0', '0', '1', '1', 'published', 'approved', '2026-01-09 18:51:34', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('41', 'Services Delivery Manager', 'Tempore optio amet eos commodi ut. Sed nostrum molestiae explicabo amet. Excepturi laudantium et sit nesciunt est odit labore. Molestiae quas nostrum qui enim.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '6', NULL, '1', '4', '5', '0', '5', '6400', '7100', 'weekly', '1', '6', '2', '1', '119', '0', '7', '2026-02-06 20:28:44', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '52.3676', '4.9041', '0', '0', '1', '1', 'published', 'approved', '2026-01-14 19:04:24', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('42', 'Senior Solutions Engineer', 'Ducimus ut qui soluta porro impedit. Suscipit aperiam quae rerum sunt sint. Sed iusto sit maiores eum eveniet molestiae. Facere tempore accusantium consequatur deserunt. Sunt qui accusamus ut aut.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '11', NULL, '1', '2', '2', '0', '3', '6800', '10700', 'monthly', '0', '2', '3', '1', '7', '0', '4', '2026-02-05 14:35:53', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '0', '1', 'published', 'approved', '2025-12-27 14:09:14', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('43', 'Senior Service Delivery Engineer', 'Architecto vel nemo repellat cum non numquam ullam. Totam modi sed aut velit. Sint earum fuga nihil qui. Id aut dolorum esse id.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '13', NULL, '1', '7', '11', '0', '3', '2100', '5300', 'weekly', '0', '7', '3', '4', '39', '0', '8', '2026-03-14 17:55:23', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '36.1627', '-86.7816', '0', '0', '1', '1', 'published', 'approved', '2025-12-12 10:12:07', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('44', 'Senior Director, Global Sales Development', 'Et fugit distinctio quibusdam eaque qui provident. Esse autem quae harum aperiam. Ipsam labore ad ullam vel. Quia eligendi ex est quia temporibus.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '7', NULL, '1', '2', '6', '0', '4', '700', '1700', 'weekly', '0', '5', '1', '1', '35', '0', '3', '2026-02-23 20:01:34', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7589', '-73.9851', '0', '0', '1', '1', 'published', 'approved', '2025-12-11 18:57:40', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('45', 'Partner Program Manager', 'Qui voluptatum at et. Perspiciatis earum modi illum nihil earum ut sit. Corrupti non suscipit sit.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '11', NULL, '1', '2', '2', '0', '2', '2700', '10500', 'monthly', '1', '2', '1', '2', '141', '0', '10', '2026-02-16 16:06:07', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '1', '1', 'published', 'approved', '2026-01-27 00:26:28', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('46', 'Principal Cloud Solutions Engineer', 'Quo eos eum inventore sapiente amet iste ad. Et sit odit eligendi molestiae odit impedit sed. Vel recusandae aut voluptates odit accusantium perspiciatis.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '5', NULL, '1', '3', '4', '0', '5', '7100', '9800', 'weekly', '1', '6', '2', '1', '97', '0', '6', '2026-03-24 21:01:56', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '42.3601', '-71.0589', '0', '0', '0', '1', 'published', 'approved', '2025-12-10 14:10:36', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('47', 'Senior Cloud Solutions Engineer', 'Pariatur nisi soluta vel illo esse. Sequi perferendis saepe sit ipsam voluptatem. Sequi quidem beatae consequatur.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '10', NULL, '1', '5', '9', '0', '5', '8100', '13400', 'yearly', '1', '8', '2', '3', '126', '0', '5', '2026-02-22 14:51:00', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '35.2546', '136.9324', '0', '0', '1', '1', 'published', 'approved', '2026-01-16 15:27:53', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('48', 'Senior Customer Success Manager', 'Atque perferendis reiciendis non quasi at fuga consequatur. Iure porro blanditiis fuga. Necessitatibus rerum aut veritatis ut vel corrupti velit.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '1', NULL, '1', '1', '1', '0', '5', '1200', '7100', 'yearly', '0', '1', '1', '3', '3', '0', '9', '2026-03-05 05:52:04', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '37.7749', '-122.4194', '0', '0', '0', '1', 'published', 'approved', '2025-12-24 02:16:21', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('49', 'Inside Account Manager', 'Sit quas quia saepe molestiae odit itaque sint. Laborum quaerat et atque fugiat sed. Voluptatem praesentium quia nulla porro.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '11', NULL, '1', '2', '2', '0', '2', '5900', '14500', 'weekly', '1', '4', '3', '4', '38', '0', '4', '2026-03-30 23:39:30', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '40.7128', '-74.0060', '0', '0', '0', '1', 'published', 'approved', '2025-12-26 00:19:23', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('50', 'UX Jobs Board', 'Vitae voluptas sit nihil quasi eius. Voluptates quae iste alias minima qui. Enim hic eos rerum expedita a voluptatibus. Perspiciatis modi fugiat voluptatem ut voluptatem deleniti dignissimos.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '13', NULL, '1', '7', '11', '0', '5', '9300', '10800', 'monthly', '1', '6', '4', '4', '129', '0', '10', '2026-03-14 10:42:01', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '36.1627', '-86.7816', '0', '0', '1', '1', 'published', 'approved', '2025-12-08 07:34:55', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jb_jobs` (`id`, `name`, `description`, `content`, `apply_url`, `company_id`, `address`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `salary_range`, `currency_id`, `degree_level_id`, `job_shift_id`, `job_experience_id`, `functional_area_id`, `hide_salary`, `number_of_positions`, `expire_date`, `author_id`, `author_type`, `views`, `number_of_applied`, `hide_company`, `latitude`, `longitude`, `auto_renew`, `external_apply_clicks`, `never_expired`, `is_featured`, `status`, `moderation_status`, `created_at`, `updated_at`, `employer_colleagues`, `start_date`, `application_closing_date`, `zip_code`, `unique_id`) VALUES ('51', 'Senior Laravel Developer (TALL Stack)', 'Et tempora mollitia ullam. Aliquam consequuntur odio dolor ea. Illum excepturi minus tenetur alias molestias dolor aut sequi.', '<h5>Responsibilities</h5>
                <div>
                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>
                    <ul>
                        <li>Have sound knowledge of commercial activities.</li>
                        <li>Build next-generation web applications with a focus on the client side</li>
                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>
                    </ul>
                </div>
                <h5>Qualification </h5>
                <div>
                    <ul>
                        <li>B.C.A / M.C.A under National University course complete.</li>
                        <li>3 or more years of professional design experience</li>
                        <li>have already graduated or are currently in any year of study</li>
                        <li>Advanced degree or equivalent experience in graphic and web design</li>
                    </ul>
                </div>', '', '8', NULL, '1', '5', '7', '0', '3', '5100', '6100', 'daily', '1', '3', '3', '3', '2', '0', '7', '2026-02-23 21:59:45', '1', 'Botble\\JobBoard\\Models\\Account', '0', '0', '0', '34.6937', '135.5023', '0', '0', '1', '1', 'published', 'approved', '2025-12-28 16:40:13', '2026-02-01 01:26:40', NULL, NULL, NULL, NULL, NULL);

