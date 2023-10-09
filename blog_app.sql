-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 04:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Guliakhali Beach', '<p><span style=\"color: rgb(67, 71, 86); font-family: Manrope, Helvetica, sans-serif; font-size: 13.1px; letter-spacing: 0.1px;\">&nbsp;Guliakhali sea beach is&nbsp;</span><strong style=\"box-sizing: inherit; color: rgb(67, 71, 86); font-family: Manrope, Helvetica, sans-serif; font-size: 13.1px; letter-spacing: 0.1px;\">one of the lesser known beaches of Bangladesh</strong><span style=\"color: rgb(67, 71, 86); font-family: Manrope, Helvetica, sans-serif; font-size: 13.1px; letter-spacing: 0.1px;\">. It is also known as Muradpur beach to the local people. The beach is full of greenery, which makes it special. The sea beach situated at Sitakunda in Chittagong Division. It is located 5 kilometres away from sitakunda bazar.Any bus headed to Chittagong from Dhaka will take one to Shitakunda Bazar.</span><font color=\"#434756\" face=\"Manrope, Helvetica, sans-serif\"><span style=\"font-size: 13.1px; letter-spacing: 0.1px;\">Guliakhali beach, only five kilometers off Sitakunda Bazar, covers 259.10 acres. The beach, unlike any other in the country, is covered with green grass and thin canals that fill up with water during high tide.</span></font><span style=\"font-size: 13.1px; letter-spacing: 0.1px; color: rgb(67, 71, 86); font-family: Manrope, Helvetica, sans-serif;\">From one side of this eccentric beach, one can see Keora forest on one side and the ocean on the other. This beach has managed to draw hundreds of tourists from different parts of the country since 2014 with its unique natural attributes.</span></p>', 'uploads/blog-images/gulia.jpg', 1, '2023-10-09 07:37:26', '2023-10-09 07:37:26'),
(2, 4, 'Palombaggia Beach', '<p>It is one of the most beautiful beaches in Corsica. And this would already be enough to describe it. But Palombaggia beach is much more: it is one of the best and many natural wonders on the island of beauty. A wonder that you can also discover on the occasion of your next holiday.&nbsp;Palombaggia is just three kilometres long. And it “challenges” Rondinara to be the most beautiful beach in Corsica. The sand of Palombaggia is clear and immaculate. The sea reflects all shades of blue and turquoise, and is obviously crystal clear.&nbsp;<span style=\"font-size: 0.8125rem;\">From the waves, small smooth rocks emerge and make this beach so famous all over Europe and beyond. The seabed remains low for many meters and it’s ideal for a holiday with children.&nbsp;</span>Most of Palombaggia beach is uncontaminated, free and without services, but there is a perfectly equipped small bathhouse.<span style=\"font-size: 0.8125rem;\">The beach is always very crowded, especially during the summer.</span><span style=\"font-size: 0.8125rem;\">&nbsp;</span></p>', 'uploads/blog-images/licensed-image.jpg', 1, '2023-10-09 07:49:41', '2023-10-09 07:49:41'),
(3, 4, 'Antibes', '<p>Antibes is a resort town between Cannes and Nice on the French Riviera (Côte d’Azur). It’s known for its old town enclosed by 16th-century ramparts with the star-shaped Fort Carré. This overlooks luxury yachts moored at the Port Vauban marina. The forested Cap d’Antibes peninsula, dotted with grand villas, separates Antibes from Juan-les-Pins, a chic resort with buzzing nightlife and the Jazz à Juan music festival.&nbsp;Antibes is a resort town between Cannes and Nice on the French Riviera (Côte d’Azur). It’s known for its old town enclosed by 16th-century ramparts with the star-shaped Fort Carré. This overlooks luxury yachts moored at the Port Vauban marina. The forested Cap d’Antibes peninsula, dotted with grand villas, separates Antibes from Juan-les-Pins, a chic resort with buzzing nightlife and the Jazz à Juan music festival<br></p>', 'uploads/blog-images/Antibes.jpg', 1, '2023-10-09 07:54:56', '2023-10-09 07:54:56'),
(4, 5, 'Darjeeling', '<p>Darjeeling is a town in India\'s West Bengal state, in the Himalayan foothills. Once a summer resort for the British Raj elite, it remains the terminus of the narrow-gauge Darjeeling Himalayan Railway, or “Toy Train,” completed in 1881. It\'s famed for the distinctive black tea grown on plantations that dot its surrounding slopes. Its backdrop is Mt. Kanchenjunga, among the world’s highest peaks.&nbsp;Darjeeling is a town in India\'s West Bengal state, in the Himalayan foothills. Once a summer resort for the British Raj elite, it remains the terminus of the narrow-gauge Darjeeling Himalayan Railway, or “Toy Train,” completed in 1881. It\'s famed for the distinctive black tea grown on plantations that dot its surrounding slopes. Its backdrop is Mt. Kanchenjunga, among the world’s highest peaks.<br></p>', 'uploads/blog-images/darjeling.jpg', 1, '2023-10-09 07:59:17', '2023-10-09 07:59:17'),
(5, 5, 'Mahabaleshwar', '<p>Mahabaleshwar is a hill station in India\'s forested Western Ghats range, south of Mumbai. It features several elevated viewing points, such as Arthur’s Seat. West of here is centuries-old Pratapgad Fort, perched atop a mountain spur. East, Lingmala Waterfall tumbles off a sheer cliff. Colorful boats dot Venna Lake, while 5 rivers meet at Panch Ganga Temple to the north.&nbsp;Mahabaleshwar is a hill station in India\'s forested Western Ghats range, south of Mumbai. It features several elevated viewing points, such as Arthur’s Seat. West of here is centuries-old Pratapgad Fort, perched atop a mountain spur. East, Lingmala Waterfall tumbles off a sheer cliff. Colorful boats dot Venna Lake, while 5 rivers meet at Panch Ganga Temple to the north.<br></p>', 'uploads/blog-images/Mahabaleshwar.jpeg', 1, '2023-10-09 08:02:20', '2023-10-09 08:02:20'),
(6, 5, 'Araku', '<p>Araku Valley is a hill station and valley region in the southeastern Indian state of Andhra Pradesh. It\'s surrounded by the thick forests of the Eastern Ghats mountain range. The Tribal Museum is dedicated to the area\'s numerous indigenous tribes, known for their traditional Dhimsa dance, and showcases traditional handicrafts. A miniature train runs through Padmapuram Gardens, with its sculptures and tree-top huts.&nbsp;Araku Valley is a hill station and valley region in the southeastern Indian state of Andhra Pradesh. It\'s surrounded by the thick forests of the Eastern Ghats mountain range. The Tribal Museum is dedicated to the area\'s numerous indigenous tribes, known for their traditional Dhimsa dance, and showcases traditional handicrafts. A miniature train runs through Padmapuram Gardens, with its sculptures and tree-top huts.<br></p>', 'uploads/blog-images/aruku.jpg', 1, '2023-10-09 08:03:57', '2023-10-09 08:03:57'),
(7, 6, 'Tinap Saitar Waterfall', '<p>Tinap Saitar is a waterfall located at Roangchhari (Paindu union of Ruma upazila) in Bandarban district of Bangladesh. Tinap Saitar is a Bam word. In Bam language, Tinap means runny nose and Saita means spring or waterfall. It is located in Paindu canal. For this reason, to many it is also known as Paindu Saitar. If you want to go to Tinap Saitar, you have to walk nearly 40 kilometers. In terms of water flow, Tinap Saitar is the largest waterfall in Bangladesh. It is located deep inside the Paindu canal. Jhiripath on the way to Tinap Saitar is very interesting. During the monsoon season, water flow increases in Tinap Saitar. Tinap Saitar is one of the tourist attractions of Bangladesh.<span style=\"font-size: 0.8125rem;\">Due to its remote location, Tinap Saitar has not yet gained much recognition among tourists. However, those who have visited this waterfall along its difficult road have been fascinated by its unparalleled beauty.</span><span style=\"font-size: 0.8125rem;\">This naturally created waterfall is very different from other waterfalls. Its water is clear and cold-hot throughout the year. During the monsoon season, water flow increases in Tinap Saitar. The water of this waterfall falls into the Paindu canal from about one and a half feet above. Everyone is fascinated to see the water falling from the winding path. Another interesting thing is that the rainbow can be seen here in the sunlight during the day.</span></p>', 'uploads/blog-images/Tinap Saitar Waterfall.png', 1, '2023-10-09 08:08:19', '2023-10-09 08:08:19'),
(8, 6, 'Khoiyachora Waterfall', '<p>Khoiyachora Waterfall is a hilly waterfall which is situated on the hills of Mirsharai, Chittagong, Bangladesh . Among many other waterfalls in Mirsarai upazila, such as Komoldoho Waterfall, Napittachora Waterfall, Napittachora Waterfall, Sahasradhara Waterfall, Jharjhari Waterfall etc., Khoiyachora waterfall and its corridor is one of the largest in this hilly belt.[1] The Khoiyachora waterfall has a total of seven major waterfalls (cascade) and many isolated steps.[2][3] Since the location of the fountain is in Khoiyachora union of Mirsarai Upazila, the waterfall has been named \"Khoiyachora Waterfall\".&nbsp;It is believed that the Khoiyachora Waterfalls, which is flowing almost 50 years ago.[6] It took time to discover its location for massless mountain areas and bushes. Again many people think that this fountain was created due to hilly diversions almost 50 years ago, before that there was no waterfall.[7]<span style=\"font-size: 0.8125rem;\">In 2010, the Government has been included in the Khoiyachora Waterfall National Park, after declaring 293.61 hectares of the block of Kunda Hat (Baratakia) block in the Baraiyadhala Block National Park.[7]</span><span style=\"font-size: 0.8125rem;\">On behalf of the Government of the People\'s Republic of Bangladesh in 2017, the eco-tourism development project has been undertaken by the Department of Forest Department of Chittagong, \"Ramgarh-Sitakunda-Reserve Forest\", Khoiyachora Fountain, one of the main objectives is the conservation of the Khoiyachora Waterfall.</span></p>', 'uploads/blog-images/Khaiachara_Waterfalls.jpg', 1, '2023-10-09 08:10:21', '2023-10-09 08:10:21'),
(9, 6, 'Richang Waterfall', '<p>Richhang is another natural waterfall and one of the most attractive tourist destinations in Khagrachhari District of Bangladesh. Not so wide and not as great as Jadepai or Nafakhum, but this beautiful waterfall successfully surprised the domestic and foreign travelers with its intrinsic natural beauty.&nbsp;Richang Waterfall is located 11 km away from Khagrachari district headquarters and about 10km away from Matiranga Upazila Sadar (1 km South) Khagrachhari-Dhaka main road.</p><p>From the main road, going through the hilly path, it needs to go down by 235 steps. During the rainy season, the sound of the waterfall is heard when you are in the stairs.</p><p><span style=\"font-size: 0.8125rem;\">The green hilly areas and the amazing environment will surely amaze you. This natural fountain/waterfall was discovered on 1993-94. Through the Jhom cultivation, the fountain comes to the attention of everyone. Fountain water falls below from 100 feet high, which has made the place more attractive.</span><br></p><p><span style=\"font-size: 0.8125rem;\">There are two ways to get in Khagrachari, both by road: Direct from Dhaka via BaroiarHat or from Chittagong. A number of non-stop coach services are available from Dhaka (e.g., Shanti Paribahan, Soudia, S. Alam, Eagle and ShamoliParibahan).</span><br></p><p><span style=\"font-size: 0.8125rem;\">Gabtoli, Saidabad, Komolapur and Kolabagan are the bus stand name in Dhaka where you can get bus tickets. From Chittagong you can get non-AC bus services of BRTC and Shanti Paribahan are most convenient with the fare as cheap as to travel to Khagarachari or the other two hill districts (Rangamati and Bandarban).</span><br></p>', 'uploads/blog-images/r.jpg', 1, '2023-10-09 08:13:18', '2023-10-09 08:13:18'),
(10, 7, 'Take a Journey of a Lifetime', '<p>Have you ever wondered what the true meaning of life is? Many people spend their entire lives searching for the answer, but sometimes it can only be found through experience. Join me on a lifetime journey as I discover life\'s true meaning through personal experiences.</p><p><span style=\"font-size: 0.8125rem;\">As a foreigner in a new land, I faced many challenges and obstacles that forced me to look within myself and discover my purpose and meaning in life. Through my journey of self-discovery, I found that the meaning of life is different for everyone, and it can only be found through experiencing life to the fullest.&nbsp;</span>Have you ever wondered what the true meaning of life is? Many people spend their entire lives searching for the answer, but sometimes it can only be found through experience. Join me on a lifetime journey as I discover life\'s true meaning through personal experiences.<br></p><p><span style=\"font-size: 0.8125rem;\">As a foreigner in a new land, I faced many challenges and obstacles that forced me to look within myself and discover my purpose and meaning in life. Through my journey of self-discovery, I found that the meaning of life is different for everyone, and it can only be found through experiencing life to the fullest.</span><br></p>', 'uploads/blog-images/images.jpg', 1, '2023-10-09 08:20:24', '2023-10-09 08:20:24'),
(11, 9, 'Malnichhera Tea Garden', '<p>Malnichhera Tea Garden is not only the largest and first established tea garden in Bangladesh, but also in the subcontinent. It was established by Lord Hurdson in 1849 on 1500 acres of land. The tea garden is located a short distance from Sylhet International Airport.&nbsp;Malnichhera Tea Garden is not only the largest and first established tea garden in Bangladesh, but also in the subcontinent. It was established by Lord Hurdson in 1849 on 1500 acres of land. The tea garden is located a short distance from Sylhet International Airport.&nbsp;Malnichhera Tea Garden is not only the largest and first established tea garden in Bangladesh, but also in the subcontinent. It was established by Lord Hurdson in 1849 on 1500 acres of land. The tea garden is located a short distance from Sylhet International Airport.<br></p>', 'uploads/blog-images/sunset-at-tata-tea-gardens.jpg', 1, '2023-10-09 08:22:37', '2023-10-09 08:22:37'),
(12, 9, 'Srimangal Tea Garden', '<p>A relatively new area that has come under tea cultivation is the sub-Himalayan terrain of Panchagarh. The soil and climate is highly favorable for growing tea here. In fact this area is contiguous with Assam and Bengal in India where tea has been grown for decades. Beginning with only 300 acres of land in 2000, the cash crop is now being cultivated on over 3,500 acres in Tentulia, Sadar and Atoari upazilas of Panchagarh. It can be expanded to ultimately cover about 60,000 acres.</p><p>The humus content in the soil here is more than in the traditional tea-growing areas of Sylhet. The tea produced in Panchagarh is supposedly much better in quality than that of Sylhet. Several nurseries have been set up in Panchagarh and Thakurgaon to supply high quality saplings to the tea gardens. This promises to be a good avenue of employment for the locals and chances of increased exports of tea. As of now Bangladesh exports tea to Pakistan and Russia. This may soon reach wider markets and become everyone’s cup of tea.</p>', 'uploads/blog-images/t.jpg', 1, '2023-10-09 08:26:10', '2023-10-09 08:26:10'),
(13, 8, 'Lalbagh', '<p>Lalbagh Fort (Bengali: লালবাগ কেল্লা) is a fort in the old city of Dhaka, Bangladesh. Its name is derived from its neighborhood Lalbagh, which means Red Garden. The term Lalbagh refers to reddish and pinkish architecture from the Mughal period. The original fort was called Fort Aurangabad.[1] Its construction was started by Prince Muhammad Azam Shah, who was the son of Emperor Aurangzeb and a future Mughal emperor himself. After the prince was recalled by his father, the fort\'s construction was overseen by Shaista Khan. The death of Shaista Khan\'s daughter Pari Bibi (Fairy Lady) resulted in a halt to the construction process, apparently due to Shaista Khan\'s superstition that the fort brought bad omen. Pari Bibi was buried inside the fort.</p><p>Lalbagh Fort was built as the official residence of the governor of the Mughal province of Bengal, Bihar and Orissa. The complex includes the Mughal governor\'s house, the tomb of Pari Bibi and a mosque. It is covered by lawns, fountains and water channels. Its two south gates were previously grand arches. The original grand complex covered the governor\'s house and the two archways. The tomb of Pari Bibi was later added. Lalbagh Fort was modelled as a miniature version of great Mughal forts like the Red Fort and Fatehpur Sikri. During the reign of Emperor Aurangzeb, Mughal Bengal became the economic engine of the empire. Emperor Aurangzeb called Bengal the Paradise of Nations.[2] Dhaka grew into an imperial city with one of the richest elites in the Mughal Empire, including members of the imperial family. Mughal artillery guarded the fort. Once located beside the Buriganga River, the river has retreated from the vicinity of the fort. The fort was depicted in European paintings during the 18th and 19th centuries.</p>', 'uploads/blog-images/l.jpg', 1, '2023-10-09 08:27:12', '2023-10-09 08:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Sea Beach', 1, '2023-10-09 06:51:34', '2023-10-09 06:51:34'),
(5, 'Hills', 1, '2023-10-09 06:51:52', '2023-10-09 06:58:23'),
(6, 'Waterfalls', 1, '2023-10-09 06:54:54', '2023-10-09 06:54:54'),
(7, 'Explore', 1, '2023-10-09 07:15:45', '2023-10-09 07:15:45'),
(8, 'Historical Places', 1, '2023-10-09 07:18:56', '2023-10-09 07:18:56'),
(9, 'Tea Garden', 1, '2023-10-09 07:20:00', '2023-10-09 07:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `visitor_id`, `blog_id`, `comment`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'So beautiful', '2023-10-09', 1, '2023-10-09 07:40:40', '2023-10-09 07:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_30_142438_create_sessions_table', 1),
(7, '2023_09_30_183730_create_categories_table', 1),
(8, '2023_09_30_202839_create_blogs_table', 1),
(9, '2023_10_02_065126_create_visitors_table', 1),
(10, '2023_10_04_040216_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'jubu', 'jubu@gmail.com', NULL, '$2y$10$nzMV2XtGh20CVsIy6PRAouESugw8kxsfGeZCkz7GuT/M7KtCC/pIW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-09 06:36:23', '2023-10-09 06:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `dstatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `email`, `password`, `mobile`, `image`, `nid`, `date_of_birth`, `dstatus`, `created_at`, `updated_at`) VALUES
(1, 'jubu', 'jubu@gmail.com', '$2y$10$YNXVdrZYMhe43acdYxqeaefwIh2Z8T/yv/xr1eocZqDwC8mmqK5m2', NULL, NULL, NULL, NULL, 1, '2023-10-09 06:35:11', '2023-10-09 06:35:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
