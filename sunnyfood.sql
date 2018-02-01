-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 06:36 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunnyfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_meal_type`
--

CREATE TABLE `main_meal_type` (
  `Main_ID` int(11) NOT NULL,
  `Main_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_meal_type`
--

INSERT INTO `main_meal_type` (`Main_ID`, `Main_Name`) VALUES
(1, 'Main Dish'),
(2, 'Appetizer'),
(3, 'Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `Material_ID` int(11) NOT NULL,
  `Material_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`Material_ID`, `Material_Name`) VALUES
(1, 'Salt'),
(2, 'Onion'),
(3, 'Dill'),
(4, 'Parsley'),
(5, 'Rice'),
(6, 'Spaghetti'),
(7, 'Apple juice '),
(8, 'Aubergine\r\n'),
(9, 'Avocado\r\n\r\n'),
(10, 'Asparagus'),
(11, 'Bacon\r\n'),
(12, 'Baking powder'),
(13, 'Balsamic vinegar '),
(14, 'Barbecue sauce '),
(15, 'Basil'),
(16, 'Beef'),
(17, 'Beer'),
(18, 'Black pepper '),
(19, 'Black eyed beans'),
(20, 'Blood orange '),
(21, 'Broccoli'),
(22, 'Brown sugar'),
(23, 'Caramel'),
(24, 'Celery'),
(25, 'Cheese'),
(26, 'Chicken breast'),
(27, 'Dried oregano'),
(28, 'Egg'),
(29, 'Fish'),
(30, 'Fresh tuna '),
(31, 'Garlic'),
(32, 'Ginger'),
(33, 'Haricot beans '),
(34, 'Hazelnut oil '),
(35, 'Ice cream '),
(36, 'Jelly '),
(37, 'Ketchup '),
(38, 'Lamb'),
(39, 'Langoustine'),
(40, 'Lemon'),
(41, 'Lettuce'),
(42, 'Lobster'),
(43, 'Macaroni'),
(44, 'Mint'),
(45, 'Mushroom'),
(46, 'Mustard'),
(47, 'Noodles'),
(48, 'Olive'),
(49, 'Olive oil'),
(50, 'Dry Bread Crumbs'),
(51, 'Orange juice '),
(52, 'Oyster'),
(53, 'Peanut oil'),
(54, 'Pepperoni '),
(55, 'Pesto'),
(56, 'Penne '),
(57, 'Red Pepper '),
(58, 'Pork'),
(59, 'Radish'),
(60, 'Raisins'),
(61, 'Rice flour'),
(62, 'Potato'),
(63, 'Poultry'),
(64, 'Rosemary '),
(65, 'Saffron '),
(66, 'Salmon'),
(67, 'Sesame oil'),
(68, 'Soya oil '),
(69, 'Spinach '),
(70, 'Spring onion'),
(71, 'Brown Suger'),
(72, 'Sweet potato'),
(73, 'Sweetcorn '),
(74, 'Tomato'),
(75, 'Wine'),
(76, 'Yoghurt'),
(77, 'Hot Pepper Sauce'),
(78, 'Skim Milk'),
(79, 'Parmesan Cheese'),
(80, 'Worcestershire Sauce'),
(81, 'Water'),
(82, 'All-purpose Flour'),
(83, 'Swiss Cheese'),
(84, 'Paprika'),
(85, 'White Wine'),
(86, 'Chicken Bouillon Granules'),
(87, 'Cornstarch'),
(88, ' Heavy Whipping Cream'),
(89, 'Ranch Dressing'),
(90, 'White Vinegar'),
(91, 'Sour Cream'),
(92, 'Semisweet Chocolate Chips'),
(93, 'Crushed Pretzels'),
(94, 'White Sugar'),
(95, 'Strawberry'),
(96, 'Cream Cheese'),
(97, 'Vegetable Oil'),
(98, 'Butter'),
(99, 'Frozen Whipped Topping'),
(100, 'Italian Seasoning'),
(101, 'Seasoned Bread Cumbs'),
(102, 'Black Pepper'),
(103, 'Ham'),
(104, 'White Vinegar'),
(105, 'TilaPia'),
(106, 'Carrot'),
(107, 'Bay Leavs'),
(108, 'Finely Diced Onion'),
(109, 'marshmallow crème'),
(110, 'pineapple juice'),
(111, 'watermelon'),
(112, 'pineapple'),
(113, 'silver tequila'),
(114, 'agave nectar'),
(115, 'Mayonnaise'),
(116, 'Walnuts'),
(117, 'Blueberries'),
(118, 'package mixed salad greens'),
(119, 'raspberry vinaigrette salad dressing'),
(120, 'feta cheese'),
(121, 'zucchini'),
(122, 'Mashed Potatoes'),
(123, 'Italian turkey sausage'),
(124, 'Green Swiss chard');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `Meal_ID` int(11) NOT NULL,
  `Meal_Name` varchar(50) NOT NULL,
  `Meal_Pic_ID` int(11) NOT NULL,
  `Main_Meal_Type_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Recipe_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`Meal_ID`, `Meal_Name`, `Meal_Pic_ID`, `Main_Meal_Type_ID`, `Category_ID`, `Recipe_ID`) VALUES
(1, 'Meatball Nirvana', 1, 1, 1, 1),
(2, 'Salisbury Steak', 2, 1, 1, 2),
(3, 'Rosemary Ranch Chicken Kabobs', 3, 1, 2, 3),
(4, 'Chicken Cordon Bleu', 4, 1, 2, 4),
(5, 'Too Much Chocolate Cake', 5, 3, 8, 5),
(6, 'Judy`s Strawberry Pretzel Salad', 6, 3, 8, 6),
(7, 'Dessert Crepes', 7, 3, 10, 7),
(8, 'Strawberry Angel Food Dessert', 8, 3, 10, 8),
(9, 'Grilled Salmon', 9, 1, 3, 9),
(10, 'Easy Baked Tilapia', 10, 1, 3, 10),
(11, 'Fruit Dip', 11, 3, 9, 11),
(12, 'Tipsy Fruit', 12, 3, 9, 12),
(13, 'Bodacious Broccoli Salad', 13, 2, 7, 13),
(14, 'Blueberry Walnut Salad', 14, 2, 7, 14),
(15, 'Avgolemono Soup', 15, 2, 6, 15),
(16, 'Toscano Soup', 16, 2, 6, 16),
(17, 'Spinach Cheese Manicotti', 17, 1, 5, 17),
(18, 'Zucchini Patties', 18, 1, 5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `meal_category`
--

CREATE TABLE `meal_category` (
  `Meal_Category_ID` int(11) NOT NULL,
  `Basic_Meal_Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_category`
--

INSERT INTO `meal_category` (`Meal_Category_ID`, `Basic_Meal_Category`) VALUES
(1, 'Beef'),
(2, 'Chicken'),
(3, 'Fish'),
(4, 'Sandwich '),
(5, 'Vegeterian'),
(6, 'Soup'),
(7, 'Salad'),
(8, 'Cake'),
(9, 'Fruit'),
(10, 'Frozen Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `Pic_ID` int(11) NOT NULL,
  `Pic_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`Pic_ID`, `Pic_Name`) VALUES
(1, 'Meatball.jpg'),
(2, 'Steak.jpg'),
(3, 'RosemaryRanchChickenKabobs.jpg'),
(4, 'chicken _cordon_ blue.jpg'),
(5, 'Cake.jpg'),
(6, 'JudsStrawberry.jpg'),
(7, 'DessertCrepes.jpg'),
(8, 'Strawberry.jpg'),
(9, 'GrilleedSalmon.jpg'),
(10, 'BakedTilapia.jpg'),
(11, 'FruitDip.jpg'),
(12, 'TipsyFruit.jpg'),
(13, 'BroccoliSalad.jpg'),
(14, 'BlueberryWalnutSalad.jpg'),
(15, 'AvgolemonoSoup.jpg'),
(16, 'ToscanoSoup.jpg'),
(17, 'SpinachCheeseMaincotti.jpg'),
(18, 'ZucchiniPatties.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `Recipe_ID` int(11) NOT NULL,
  `Description` longtext NOT NULL,
  `Prepration_time` time NOT NULL,
  `Cooking_time` time NOT NULL,
  `Serving` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Recipe_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`Recipe_ID`, `Description`, `Prepration_time`, `Cooking_time`, `Serving`, `Rating`, `Recipe_Date`) VALUES
(1, '1.	Preheat an oven to 400 degrees F (200 degrees C).|\r\n2.	Place the beef into a mixing bowl, and season with salt, onion, garlic salt, Italian seasoning, oregano, red pepper flakes, hot pepper sauce, and Worcestershire sauce; mix well. Add the milk, Parmesan cheese, and bread crumbs. Mix until evenly blended, then form into 1 1/2-inch meatballs, and place onto a baking sheet.|\r\n3.	Bake in the preheated oven until no longer pink in the center, 20 to 25 minutes.|\r\n', '00:30:00', '01:00:00', 4, 1, '2017-02-15'),
(2, '1.	In a large bowl, mix together 1/3 cup condensed French onion soup with ground beef, bread crumbs, egg, salt and black pepper. Shape into 6 oval patties.|\r\n2.	In a large skillet over medium-high heat, brown both sides of patties. Pour off excess fat.|\r\n3.	In a small bowl, blend flour and remaining soup until smooth. Mix in ketchup, water, Worcestershire sauce and mustard powder. Pour over meat in skillet. Cover, and cook for 20 minutes, stirring occasionally.\r\n', '00:30:00', '00:04:00', 4, 3, '2016-11-23'),
(3, '1.	In a medium bowl, stir together the olive oil, ranch dressing, Worcestershire sauce, rosemary, salt, lemon juice, white vinegar, pepper, and sugar. Let stand for 5 minutes. Place chicken in the bowl, and stir to coat with the marinade. Cover and refrigerate for 30 minutes.|\r\n2.	Preheat the grill for medium-high heat. Thread chicken onto skewers and discard marinade.|\r\n3.	Lightly oil the grill grate. Grill skewers for 8 to 12 minutes, or until the chicken is no longer pink in the center, and the juices run clear.\r\n\r\n', '00:30:00', '01:00:00', 4, 2, '2016-07-26'),
(4, '1.	Pound chicken breasts if they are too thick. Place a cheese and ham slice on each breast within 1/2 inch of the edges. Fold the edges of the chicken over the filling, and secure with toothpicks. Mix the flour and paprika in a small bowl, and coat the chicken pieces.|\r\n2.	Heat the butter in a large skillet over medium-high heat, and cook the chicken until browned on all sides. Add the wine and bouillon. Reduce heat to low, cover, and simmer for 30 minutes, until chicken is no longer pink and juices run clear.|\r\n3.	Remove the toothpicks, and transfer the breasts to a warm platter. Blend the cornstarch with the cream in a small bowl, and whisk slowly into the skillet. Cook, stirring until thickened, and pour over the chicken. Serve warm.\r\n', '01:40:00', '00:30:00', 4, 4, '2017-03-28'),
(5, '1.	Preheat oven to 350 degrees F (175 degrees C).|\r\n2.	In a large bowl, mix together the cake and pudding mixes, sour cream, oil, beaten eggs and water. Stir in the chocolate chips and pour batter into a well-greased 12 cup Bundt pan.|\r\n3.	Bake for 50 to 55 minutes, or until top is springy to the touch and a wooden toothpick inserted comes out clean. Cool cake thoroughly in pan at least an hour and a half before inverting onto a plate If desired, dust the cake with powdered sugar.\r\n', '00:30:00', '00:40:00', 4, 5, '2016-09-13'),
(6, '1.	Preheat oven to 350 degrees F (175 degrees C). Mix together the pretzels, 4 1/2 tablespoons sugar and melted butter. Press into the bottom of a 9x13 inch pan. Bake for 10 minutes, or until lightly toasted. Set aside to cool completely.|\r\n2.	In a medium bowl, beat the sugar and cream cheese until smooth. Fold in whipped topping. Spread evenly over the cooled crust. Refrigerate until set, about 30 minutes.|\r\n3.	In a medium bowl, stir together the gelatin mix and boiling water. Mix in frozen strawberries, and stir until thawed. Pour over cream cheese mixture in pan. Refrigerate until completely chilled, at least 1 hour.\r\n', '00:40:00', '01:00:00', 4, 4, '2017-03-11'),
(7, '1.	In large bowl, whisk together eggs, milk, melted butter, flour sugar and salt until smooth.|\r\n2.	Heat a medium-sized skillet or crepe pan over medium heat. Grease pan with a small amount of butter or oil applied with a brush or paper towel. Using a serving spoon or small ladle, spoon about 3 tablespoons crepe batter into hot pan, tilting the pan so that bottom surface is evenly coated. Cook over medium heat, 1 to 2 minutes on a side, or until golden brown. Serve immediately.\r\n', '00:20:00', '00:20:00', 4, 1, '2017-03-23'),
(8, '1.	Crumble the cake into a 9x13 inch dish.|\r\n2.	Beat the cream cheese and sugar in a medium bowl until light and fluffy. Fold in whipped topping. Mash the cake down with your hands and spread the cream cheese mixture over the cake.|\r\n3.	In a bowl, combine strawberries and glaze until strawberries are evenly coated. Spread over cream cheese layer. Chill until serving.\r\n', '00:10:00', '00:20:00', 4, 2, '2016-10-25'),
(9, '1.	Season salmon fillets with lemon pepper, garlic powder, and salt.|\r\n2.	In a small bowl, stir together soy sauce, brown sugar, water, and vegetable oil until sugar is dissolved. Place fish in a large resalable plastic bag with the soy sauce mixture, seal, and turn to coat. Refrigerate for at least 2 hours.|\r\n3.	Preheat grill for medium heat.|\r\n4.	Lightly oil grill grate. Place salmon on the preheated grill, and discard marinade. Cook salmon for 6 to 8 minutes per side, or until the fish flakes easily with a fork.\r\n', '00:15:00', '00:20:00', 4, 3, '2017-04-24'),
(10, '1.	Preheat the oven to 375 degrees F (190 degrees F). Grease a 9x13 inch baking dish.|\r\n2.	Place the tilapia fillets in the bottom of the baking dish and dot with butter. Season with Old Bay seasoning and garlic salt. Top each one with a slice or two of lemon. Arrange the frozen mixed vegetables around the fish, and season lightly with salt and pepper.|\r\n3.	Cover the dish and bake for 25 to 30 minutes in the preheated oven, until vegetables are tender and fish flakes easily with a fork.\r\n', '00:15:00', '00:25:00', 4, 4, '2017-01-18'),
(11, '1.	Blend together the cream cheese, marshmallow cream and thawed topping. Add enough pineapple juice to make it dipping consistency. Chill for 1 hour.', '00:10:00', '00:00:00', 4, 2, '2016-02-16'),
(12, '1.	Mix watermelon, pineapple, and strawberries in a serving bowl.|\r\n2.	Whisk tequila, agave nectar, lime zest, and lime juice together in a bowl; pour dressing over fruit. Toss to coat\r\n', '00:15:00', '00:00:00', 4, 2, '2017-03-19'),
(13, '1.	Place bacon in a large, deep skillet. Cook over medium high heat until evenly brown. Drain, and crumble.|\r\n2.	In a large bowl, combine broccoli, cheese, bacon and onion.|\r\n3.	Prepare the dressing in a small bowl by whisking together the red wine vinegar, sugar, pepper, salt, mayonnaise and lemon juice. Combine dressing with salad. Cover, and refrigerate until ready to serve.\r\n', '00:20:00', '00:00:00', 4, 3, '2016-11-23'),
(14, '1.	In a large bowl, toss the salad greens with the blueberries, walnuts, and raspberry vinaigrette. Top with feta cheese to serve.', '00:20:00', '00:00:00', 4, 4, '2015-10-14'),
(15, '1.	Place chicken, chopped onion, celery, carrot, bay leaves, and oregano in a large pot. Pour water over the top; bring to a boil, reduce heat to medium-low, and simmer, skimming foam as necessary, until chicken is falling off the bone, 60 to 90 minutes. An instant-read thermometer inserted into the thickest part of the thigh, near the bone should read 165 degrees F (74 degrees C). Transfer chicken to a bowl to cool, strain all vegetables from simmering broth, discard vegetables, and return broth to the pot. Chop cooked chicken meat.|\r\n2.	Combine 2 cups diced onion, olive oil, and a pinch of salt in a large skillet. Cook and stir onion mixture over medium heat until onion is soft, sweet, and golden, 7 to 10 minutes.|\r\n3.	Stir onion mixture into chicken broth in the pot and set over medium-low heat; add Arborio rice and a pinch of salt. Bring to a simmer; cook, stirring occasionally, until rice is very tender and broth flavors combine, about 45 minutes.|\r\n4.	Whisk eggs, cayenne pepper, and black pepper together in a bowl; whisk in lemon juice. Slowly pour 1 cup broth mixture into egg mixture, whisking constantly. Add 1 more cup of broth to egg mixture and whisk. Pour egg mixture into broth in the pot, add chopped chicken, and cook until heated through, about 5 minutes more.\r\n', '00:20:00', '00:40:00', 4, 5, '2017-03-22'),
(16, '1.	Cook the bacon in a large Dutch oven over medium heat. Drain on a paper towel.|\r\n2.	Crumble and set aside.|\r\n3.	Remove the turkey Italian sausage links from the casing and place in the Dutch oven along with the diced onion.|\r\n4.	Saute until the onion is soft and the sausage is cooked. Add the garlic, stirring frequently for 45 seconds.|\r\n5.	Add the chicken stock, milk, and potatoes.|\r\n6.	Add Swiss chard or kale along with the crushed red pepper, sea salt and fresh cracked black pepper to taste.|\r\n7.	Cook on medium low for 15 minutes or until hot.|\r\n8.	Ladle into soup bowls and garnish with crumbled bacon.\r\n', '00:20:00', '01:00:00', 4, 3, '2017-02-09'),
(17, '1.	Preheat oven to 350 degrees F (175 degrees C).|\r\n2.	In a large bowl, combine ricotta, spinach, onion and egg. Season with parsley, pepper and garlic powder. Mix in 1 cup mozzarella and 1/4 cup Parmesan. In a separate bowl, stir together spaghetti sauce and water.|\r\n3.	Spread 1 cup sauce in the bottom of a 9x13 inch baking dish. Stuff uncooked manicotti shells with ricotta mixture, and arrange in a single layer in the dish. Cover with remaining sauce. Sprinkle with remaining mozzarella and Parmesan.|\r\n4.	Bake in preheated oven for 45 to 55 minutes, or until noodles are soft.\r\n', '00:30:00', '00:20:00', 4, 2, '2017-03-05'),
(18, '1.	In a medium bowl, combine the zucchini, eggs, onion, flour, Parmesan cheese, mozzarella cheese, and salt. Stir well enough to distribute ingredients evenly.|\r\n2.	Heat a small amount of oil in a skillet over medium-high heat. Drop zucchini mixture by heaping tablespoonful’s, and cook for a few minutes on each side until golden.\r\n', '00:20:00', '00:20:00', 4, 1, '2017-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `recipes_materials`
--

CREATE TABLE `recipes_materials` (
  `Recipe_ID` int(11) NOT NULL,
  `Material_ID` int(11) NOT NULL,
  `Metric` varchar(100) NOT NULL,
  `Count` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_materials`
--

INSERT INTO `recipes_materials` (`Recipe_ID`, `Material_ID`, `Metric`, `Count`) VALUES
(1, 1, 'TeaSpoon', 0.5),
(1, 2, 'Number', 1),
(1, 27, 'TeaSpoon', 0.75),
(1, 31, 'Teaspoon', 0.5),
(1, 57, 'TeaSpoon', 0.75),
(1, 77, 'TeaSpoon', 1),
(1, 78, 'cup', 0.3),
(1, 79, 'cup', 0.25),
(1, 80, 'TableSpoon', 1.5),
(1, 100, 'TeaSpoon', 0.5),
(1, 101, 'cup', 0.5),
(2, 1, 'TeaSpoon', 1),
(2, 2, 'Number', 1),
(2, 16, 'Pound', 1.5),
(2, 28, 'Number', 1),
(2, 37, 'Cup', 0.25),
(2, 46, 'TeaSpoon', 0.5),
(2, 50, 'cup', 0.5),
(2, 80, 'TableSpoon', 1),
(2, 81, 'cup', 0.25),
(2, 82, 'TableSpoon', 1),
(2, 102, 'TeaSpoon', 0.125),
(3, 1, 'TeaSpoon', 2),
(3, 26, 'Number', 5),
(3, 40, 'TeaSpoon', 1),
(3, 49, 'Cup', 0.5),
(3, 64, 'TableSpoon', 1),
(3, 80, 'TableSpoon', 3),
(3, 89, 'Cup', 0.5),
(3, 90, 'TeaSpoon', 1),
(3, 94, 'TableSpoon', 1),
(3, 102, 'TeaSpoon', 0.25),
(4, 26, 'Number', 6),
(4, 82, 'TableSpoon', 3),
(4, 83, 'Slice', 6),
(4, 84, 'TeaSpoon', 1),
(4, 85, 'Cup', 0.5),
(4, 86, 'TeaSpoon', 1),
(4, 87, 'Tablespoon', 1),
(4, 88, 'Cup', 1),
(4, 98, 'TableSpoon', 6),
(4, 103, 'Slice', 6),
(5, 28, 'Number', 4),
(5, 81, 'Cup', 0.5),
(5, 82, 'Ounce', 18.25),
(5, 91, 'Cup', 1),
(5, 92, 'Ounce', 6),
(5, 97, 'Cup', 1),
(6, 81, 'Cup', 2),
(6, 93, 'Cup', 1.5),
(6, 94, 'TableSpoon', 5),
(6, 95, 'Ounce', 6),
(6, 96, 'Ounce', 8),
(6, 98, 'Cup', 0.75),
(6, 99, 'Ounce', 80),
(7, 1, 'TeaSpoon', 0.5),
(7, 28, 'Number', 4),
(7, 78, 'Cup', 1.75),
(7, 82, 'Cup', 1),
(7, 94, 'Tablespoon', 2),
(7, 98, 'TableSpoon', 2),
(8, 91, 'Inch', 10),
(8, 94, 'Cup', 1),
(8, 95, 'Number', 1),
(8, 96, 'Ounce', 8),
(8, 99, 'Ounce', 8),
(9, 1, 'TeaSpoon', 1),
(9, 31, 'Number', 1),
(9, 66, 'Pound', 1.5),
(9, 68, 'Cup', 0.75),
(9, 71, 'Cup', 0.75),
(9, 75, 'TeaSpoon', 1),
(9, 81, 'Cup', 0.75),
(9, 97, 'Cup', 0.25),
(10, 21, 'Number', 1),
(10, 31, 'TeaSpoon', 0.5),
(10, 40, 'Number', 1),
(10, 57, 'TeaSpoon', 1),
(10, 98, 'TeaSpoon', 2),
(10, 100, 'TeaSpoon', 0.25),
(10, 105, 'Ounce', 4),
(11, 96, 'Ounce', 8),
(11, 99, 'Cup', 2),
(11, 109, 'Cup', 0.5),
(11, 110, 'Cup', 0.25),
(12, 40, 'Number', 3),
(12, 95, 'Cup', 2),
(12, 111, 'Cup', 3),
(12, 112, 'Cup', 3),
(12, 113, 'Cup', 0.25),
(12, 114, 'Cup', 0.25),
(13, 1, 'TeaSpoon', 1),
(13, 2, 'Number', 0.5),
(13, 11, 'Slice', 8),
(13, 21, 'Number', 2),
(13, 25, 'Cup', 1.5),
(13, 40, 'TeaSpoon', 1),
(13, 90, 'Cup', 0.25),
(13, 94, 'Cup', 0.125),
(13, 102, 'TeaSpoon', 2),
(13, 115, 'Cup', 0.7),
(14, 116, 'Cup', 0.25),
(14, 117, 'Number', 1),
(14, 118, 'Ounce', 10),
(14, 119, 'Cup', 0.5),
(14, 120, 'Cup', 0.25),
(15, 1, 'TeaSpoon', 2),
(15, 2, 'Number', 1),
(15, 24, 'Number', 2),
(15, 26, 'Pound', 3),
(15, 27, 'TeaSpoon', 0.25),
(15, 28, 'Number', 2),
(15, 40, 'Cup', 0.5),
(15, 49, 'TableSpoon', 2),
(15, 57, 'TeaSpoon', 1),
(15, 81, 'Cup', 3),
(15, 102, 'TeaSpoon', 0.5),
(15, 106, 'Number', 1),
(15, 107, 'Bay Leave', 2),
(15, 108, 'Cup', 2),
(16, 2, 'TeaSpoon', 0.5),
(16, 11, 'Slice', 3),
(16, 26, 'Cup', 5),
(16, 31, 'TeaSpoon', 3),
(16, 57, 'TeaSpoon', 1),
(16, 78, 'Cup', 5),
(16, 102, 'TeaSpoon', 1),
(16, 122, 'Ounce', 4),
(16, 123, 'Number', 3),
(16, 124, 'Cup', 4),
(17, 2, 'Cup', 0.5),
(17, 4, 'TeaSpoon', 2),
(17, 6, 'Ounce', 52),
(17, 25, 'Cup', 1.5),
(17, 28, 'Number', 1),
(17, 31, 'TeaSpoon', 0.25),
(17, 57, 'TeaSpoon', 0.5),
(17, 69, 'Ounce', 10),
(17, 79, 'Ounce', 15),
(17, 81, 'Cup', 1.5),
(18, 1, 'TeaSpoon', 1),
(18, 2, 'Cup', 0.25),
(18, 25, 'Cup', 0.5),
(18, 28, 'Number', 2),
(18, 79, 'Cup', 0.5),
(18, 82, 'Cup', 0.5),
(18, 96, 'TableSpoon', 2),
(18, 121, 'Cup', 2);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_users`
--

CREATE TABLE `recipes_users` (
  `Recipe_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Recipe_User_ID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Rate_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_users`
--

INSERT INTO `recipes_users` (`Recipe_ID`, `User_ID`, `Recipe_User_ID`, `Rating`, `Rate_Date`) VALUES
(8, 45, 2, 3, '2017-04-15'),
(6, 46, 4, 3, '2017-04-15'),
(12, 46, 5, 3, '2017-04-15'),
(11, 46, 6, 3, '2017-04-15'),
(6, 47, 8, 3, '2017-04-15'),
(12, 47, 12, 3, '2017-04-15'),
(7, 47, 14, 3, '2017-04-15'),
(5, 47, 16, 3, '2017-04-15'),
(15, 48, 20, 3, '2017-04-15'),
(1, 48, 21, 3, '2017-04-15'),
(5, 49, 25, 3, '2017-04-16'),
(12, 49, 26, 3, '2017-04-16'),
(16, 49, 27, 3, '2017-04-16'),
(14, 49, 28, 3, '2017-04-16'),
(14, 8, 29, 3, '2017-04-16'),
(10, 51, 30, 3, '2017-04-16'),
(16, 51, 31, 3, '2017-04-16'),
(2, 3, 32, 3, '2017-04-16'),
(9, 3, 36, 3, '2017-04-16'),
(11, 3, 37, 3, '2017-04-18'),
(14, 3, 39, 3, '2017-04-18'),
(10, 52, 41, 3, '2017-04-18'),
(13, 52, 42, 3, '2017-04-18'),
(1, 52, 43, 3, '2017-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Pass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Email`, `Pass`) VALUES
(1, 'Sani', 'Sani@yahoo.com', '123'),
(2, 'Artin', 'Artin@yahoo.com', '123'),
(3, 'sanaz', '123@yahoo.com', '123'),
(4, 'Sun', 'sun@yahoo.com', '123'),
(5, 'test', 'test@test.test', '1'),
(6, 'ts', 'ts@test.test', '1'),
(7, 't', 't@test.test', '1'),
(8, 't1', 't1@test.test', '1'),
(42, 't5', 't5@test.test', '1'),
(43, 't2', 't2@test.test', '1'),
(44, 't3', 't3@test.test', '1'),
(45, 't4', 't4@test.test', '1'),
(46, 't7', 't7@test.test', '1'),
(47, 't8', 't8@test.test', '1'),
(48, 'w1', 'w1@yahoo.com', '12'),
(49, 'qc', 'qc@test.test', '1'),
(50, 'r', 'r@test.test', '1'),
(51, 'w', 'w@test.test', '1'),
(52, 'sami', 'sami@yahoo.com', '123'),
(53, 'ani', 'ani@yahoo.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_meal_type`
--
ALTER TABLE `main_meal_type`
  ADD PRIMARY KEY (`Main_ID`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`Material_ID`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`Meal_ID`),
  ADD UNIQUE KEY `Food_Name` (`Meal_Name`),
  ADD KEY `fk_SubFood_Foods` (`Main_Meal_Type_ID`),
  ADD KEY `fk_FoodCategory_Foods` (`Category_ID`),
  ADD KEY `fk_Recipes_Foods` (`Recipe_ID`),
  ADD KEY `fk_Images_Foods` (`Meal_Pic_ID`);

--
-- Indexes for table `meal_category`
--
ALTER TABLE `meal_category`
  ADD PRIMARY KEY (`Meal_Category_ID`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`Pic_ID`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`Recipe_ID`);

--
-- Indexes for table `recipes_materials`
--
ALTER TABLE `recipes_materials`
  ADD PRIMARY KEY (`Recipe_ID`,`Material_ID`),
  ADD KEY `fk_Ingrident_ReIN` (`Material_ID`),
  ADD KEY `Recipe_ID` (`Recipe_ID`);

--
-- Indexes for table `recipes_users`
--
ALTER TABLE `recipes_users`
  ADD PRIMARY KEY (`Recipe_User_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`,`Recipe_ID`) USING BTREE,
  ADD KEY `Recipe_ID` (`Recipe_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_meal_type`
--
ALTER TABLE `main_meal_type`
  MODIFY `Main_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `Material_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `Meal_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `meal_category`
--
ALTER TABLE `meal_category`
  MODIFY `Meal_Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `Pic_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `Recipe_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `recipes_users`
--
ALTER TABLE `recipes_users`
  MODIFY `Recipe_User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `fk_FoodCategory_Foods` FOREIGN KEY (`Category_ID`) REFERENCES `meal_category` (`Meal_Category_ID`),
  ADD CONSTRAINT `fk_Recipes_Foods` FOREIGN KEY (`Recipe_ID`) REFERENCES `recipes` (`Recipe_ID`),
  ADD CONSTRAINT `fk_SubFood_Foods` FOREIGN KEY (`Main_Meal_Type_ID`) REFERENCES `main_meal_type` (`Main_ID`),
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`Meal_Pic_ID`) REFERENCES `pics` (`Pic_ID`);

--
-- Constraints for table `recipes_materials`
--
ALTER TABLE `recipes_materials`
  ADD CONSTRAINT `fk_Ingrident_ReIN` FOREIGN KEY (`Material_ID`) REFERENCES `materials` (`Material_ID`),
  ADD CONSTRAINT `fk_Recepi_ReIN` FOREIGN KEY (`Recipe_ID`) REFERENCES `recipes` (`Recipe_ID`);

--
-- Constraints for table `recipes_users`
--
ALTER TABLE `recipes_users`
  ADD CONSTRAINT `recipes_users_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `recipes_users_ibfk_2` FOREIGN KEY (`Recipe_ID`) REFERENCES `recipes` (`Recipe_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
