-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-pow05
-- Generation Time: Jan 27, 2019 at 04:35 AM
-- Server version: 5.6.41
-- PHP Version: 4.4.9
-- 
-- Database: `questkeeper`
-- 
CREATE DATABASE `questkeeper` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `questkeeper`;

-- --------------------------------------------------------

-- 
-- Table structure for table `alignments`
-- 

CREATE TABLE `alignments` (
  `alignmentID` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `alignmentName` varchar(50) NOT NULL,
  PRIMARY KEY (`alignmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `alignments`
-- 

INSERT INTO `alignments` VALUES (1, 'Lawful Good');
INSERT INTO `alignments` VALUES (2, 'Neutral Good');
INSERT INTO `alignments` VALUES (3, 'Chaotic Good');
INSERT INTO `alignments` VALUES (4, 'Lawful Neutral');
INSERT INTO `alignments` VALUES (5, 'Neutral');
INSERT INTO `alignments` VALUES (6, 'Chaotic Neutral');
INSERT INTO `alignments` VALUES (7, 'Lawful Evil');
INSERT INTO `alignments` VALUES (8, 'Neutral Evil');
INSERT INTO `alignments` VALUES (9, 'Chaotic Evil');
INSERT INTO `alignments` VALUES (10, 'Alignment');

-- --------------------------------------------------------

-- 
-- Table structure for table `backgrounds`
-- 

CREATE TABLE `backgrounds` (
  `backgroundID` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundName` varchar(50) NOT NULL,
  PRIMARY KEY (`backgroundID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `backgrounds`
-- 

INSERT INTO `backgrounds` VALUES (1, 'Acolyte');
INSERT INTO `backgrounds` VALUES (2, 'Charlatan');
INSERT INTO `backgrounds` VALUES (3, 'Criminal');
INSERT INTO `backgrounds` VALUES (4, 'Entertainer');
INSERT INTO `backgrounds` VALUES (5, 'Folk Hero');
INSERT INTO `backgrounds` VALUES (6, 'Guild Artisan');
INSERT INTO `backgrounds` VALUES (7, 'Hermit');
INSERT INTO `backgrounds` VALUES (8, 'Noble');
INSERT INTO `backgrounds` VALUES (9, 'Outlander');
INSERT INTO `backgrounds` VALUES (10, 'Sage');
INSERT INTO `backgrounds` VALUES (11, 'Sailor');
INSERT INTO `backgrounds` VALUES (12, 'Soldier');
INSERT INTO `backgrounds` VALUES (13, 'Urchin');
INSERT INTO `backgrounds` VALUES (14, 'Pirate');
INSERT INTO `backgrounds` VALUES (15, 'Knight');
INSERT INTO `backgrounds` VALUES (16, 'Guild Merchant');
INSERT INTO `backgrounds` VALUES (17, 'Gladiator');
INSERT INTO `backgrounds` VALUES (18, 'Spy');
INSERT INTO `backgrounds` VALUES (19, 'Background');

-- --------------------------------------------------------

-- 
-- Table structure for table `characters`
-- 

CREATE TABLE `characters` (
  `characterID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `characterName` varchar(100) DEFAULT NULL,
  `classID` int(3) unsigned DEFAULT NULL,
  `levelID` int(2) unsigned DEFAULT NULL,
  `backgroundID` int(3) unsigned DEFAULT NULL,
  `userID` int(11) unsigned NOT NULL,
  `raceID` int(3) unsigned DEFAULT NULL,
  `alignmentID` int(1) unsigned DEFAULT NULL,
  `experiencePoints` int(11) unsigned DEFAULT NULL,
  `strengthScore` int(3) unsigned DEFAULT NULL,
  `dexterityScore` int(3) unsigned DEFAULT NULL,
  `constitutionScore` int(3) unsigned DEFAULT NULL,
  `intelligenceScore` int(3) unsigned DEFAULT NULL,
  `wisdomScore` int(3) unsigned DEFAULT NULL,
  `charismaScore` int(3) unsigned DEFAULT NULL,
  `inspiration` varchar(3) DEFAULT NULL,
  `strengthProficiency` tinyint(1) DEFAULT NULL,
  `dexterityProficiency` tinyint(1) DEFAULT NULL,
  `constitutionProficiency` tinyint(1) DEFAULT NULL,
  `intelligenceProficiency` tinyint(1) DEFAULT NULL,
  `wisdomProficiency` tinyint(1) DEFAULT NULL,
  `charismaProficiency` tinyint(1) DEFAULT NULL,
  `acrobaticsProficiency` tinyint(1) DEFAULT NULL,
  `animalHandlingProficiency` tinyint(1) DEFAULT NULL,
  `arcanaProficiency` tinyint(1) DEFAULT NULL,
  `athleticsProficiency` tinyint(1) DEFAULT NULL,
  `deceptionProficiency` tinyint(1) DEFAULT NULL,
  `historyProficiency` tinyint(1) DEFAULT NULL,
  `insightProficiency` tinyint(1) DEFAULT NULL,
  `intimidationProficiency` tinyint(1) DEFAULT NULL,
  `investigationProficiency` tinyint(1) DEFAULT NULL,
  `medicineProficiency` tinyint(1) DEFAULT NULL,
  `natureProficiency` tinyint(1) DEFAULT NULL,
  `perceptionProficiency` tinyint(1) DEFAULT NULL,
  `performanceProficiency` tinyint(1) DEFAULT NULL,
  `persuasionProficiency` tinyint(1) DEFAULT NULL,
  `religionProficiency` tinyint(1) DEFAULT NULL,
  `sleightOfHandProficiency` tinyint(1) DEFAULT NULL,
  `stealthProficiency` tinyint(1) DEFAULT NULL,
  `survivalProficiency` tinyint(1) DEFAULT NULL,
  `otherProficiencies` text,
  `armorClass` int(3) DEFAULT NULL,
  `initiative` int(3) DEFAULT NULL,
  `speed` varchar(5) DEFAULT NULL,
  `maxHitPoints` int(11) DEFAULT NULL,
  `currentHitPoints` int(11) DEFAULT NULL,
  `temporaryHitPoints` int(4) DEFAULT NULL,
  `totalHitDice` varchar(10) DEFAULT NULL,
  `remainingHitDice` varchar(10) DEFAULT NULL,
  `deathSuccess1` tinyint(1) DEFAULT NULL,
  `deathSuccess2` tinyint(1) DEFAULT NULL,
  `deathSuccess3` tinyint(1) DEFAULT NULL,
  `deathFail1` tinyint(1) DEFAULT NULL,
  `deathFail2` tinyint(1) DEFAULT NULL,
  `deathFail3` tinyint(1) DEFAULT NULL,
  `attackName1` varchar(50) DEFAULT NULL,
  `attackBonus1` varchar(6) DEFAULT NULL,
  `attackDamage1` varchar(50) DEFAULT NULL,
  `attackName2` varchar(50) DEFAULT NULL,
  `attackBonus2` varchar(6) DEFAULT NULL,
  `attackDamage2` varchar(50) DEFAULT NULL,
  `attackName3` varchar(50) DEFAULT NULL,
  `attackBonus3` varchar(6) DEFAULT NULL,
  `attackDamage3` varchar(50) DEFAULT NULL,
  `spellcasting` text,
  `copperPieces` int(11) unsigned DEFAULT NULL,
  `silverPieces` int(11) unsigned DEFAULT NULL,
  `electrumPieces` int(11) unsigned DEFAULT NULL,
  `goldPieces` int(11) unsigned DEFAULT NULL,
  `platinumPieces` int(11) unsigned DEFAULT NULL,
  `equipment` text,
  `personality` text,
  `ideals` text,
  `bonds` text,
  `flaws` text,
  `features` text,
  PRIMARY KEY (`characterID`),
  KEY `backgroundID` (`backgroundID`) USING BTREE,
  KEY `levelID` (`levelID`) USING BTREE,
  KEY `classID` (`classID`) USING BTREE,
  KEY `userID` (`userID`),
  KEY `raceID` (`raceID`),
  KEY `alignmentID` (`alignmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- 
-- Dumping data for table `characters`
-- 

INSERT INTO `characters` VALUES (1, 'Character 1', 1, 10, 3, 8, 18, 6, 100, 18, 14, 16, 8, 12, 16, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 0, 0, '0', 0, 0, 0, '1d12', '1d12', 1, 1, 1, 1, 1, 1, 'Dagger', '+6', '1d4+3', 'Flail', '+6', '1d8+3 Bludgeoning', 'Javalin', '+6', '1d6+3 Piercing', 'test2', 10, 30, 50, 70, 90, 'test3', 'test4', 'test5', 'test6', 'test7', 'test8&#039;');
INSERT INTO `characters` VALUES (2, 'Character 2', 13, 21, 19, 8, 20, 10, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (3, 'Character 3', 13, 21, 19, 8, 20, 10, 0, 12, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (4, 'Character 4', 13, 5, 19, 8, 20, 10, 0, 13, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (5, 'Alexea', 3, 5, 8, 8, 17, 1, 6500, 16, 8, 16, 8, 8, 17, '+3', 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Languages:Orc, Common, Elvish, Draconic, \r\n\r\nProficiencies:Athletics, Charisma Saving Throws, Deception, Dice Set, Heavy Armor, History, Insight, Intimidation, Light Armor, Martial Weapons, Medium Armor, Persuasion, Shields, Simple Weapons, Wisdom Saving Throws, ', 19, -1, '30', 49, 49, 0, '5', '5', 0, 0, 0, 0, 0, 0, 'Dagger', '+6', '1d4+3', 'Flail', '+6', '1d8+3 Bludgeoning', 'Javalin', '+6', '1d6+3 Piercing', 'Longsword | +6 | 1d8+3 Slashing\r\nMorningstar | +6 | 1d8+3 Piercing', 2, 2, 0, 5, 12, '- Shield\r\n- Chain Mail\r\n- Dagger\r\n- Longsword\r\n- Javelin (5)\r\n- Flail\r\n- Morningstar\r\n- Backpack\r\n- Bedroll\r\n- Block and Tackle\r\n- Chain (10 feet)\r\n- Climber&#039;s Kit\r\n- Clothes, Fine\r\n- Crowbar\r\n- Fishing Tackle\r\n- Grappling Hook\r\n- Hammer\r\n- Healer&#039;s Kit\r\n- Holy Water (flask)\r\n- Lantern, Bullseye\r\n- Mess Kit\r\n- Mirror, Steel\r\n- Oil (flask) (5)\r\n- Pole (10-foot)\r\n- Potion of Healing (5)\r\n- Pouch\r\n- Rations (1 day) (10)\r\n- Rope, Silk (50 feet)\r\n- Sack\r\n- Shovel\r\n- Signal Whistle\r\n- Signet Ring\r\n- Soap', 'My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.\r\nDespite my noble birth, I do not place myself above other folk. We all have the same blood.	', 'Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine. (Lawful)', 'The common folk must see me as a hero of the people.', 'I too often hear veiled insults and threats in every word addressed to me, and Iâ€™m quick to anger.', 'Paladin:\r\n- Divine Sense\r\n- Hit Points\r\n- Lay on Hands Pool\r\n- Proficiencies\r\n- Divine Smite\r\n- Fighting Style\r\n- Spellcasting\r\n- Channel Divinity\r\n- Divine Health\r\n- Oath Spells\r\n- Ability Score Improvement\r\n- Extra Attack\r\nRacial Traits:\r\n- Ability Score Increase\r\n- Darkvision\r\n- Fey Ancestry\r\n- Skill Versatility\r\n- Languages\r\n');
INSERT INTO `characters` VALUES (6, 'Character 6', 13, 21, 19, 8, 20, 10, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (7, 'Character 1', 5, 1, 19, 9, 11, 2, 0, 18, 16, 14, 16, 16, 12, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (8, 'Character 7', 13, 21, 19, 8, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (9, 'Character 8', 13, 21, 19, 8, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (10, 'Character 9', 13, 21, 19, 8, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'test3', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (11, 'Character 10', 13, 21, 19, 8, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (12, 'Character 11', 1, 5, 19, 8, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (13, 'Alexea', 7, 5, 8, 11, 17, 1, 6500, 16, 8, 16, 8, 8, 17, '', 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Languages:Orc, Common, Elvish, Draconic, \r\n\r\nProficiencies:Athletics, Charisma Saving Throws, Deception, Dice Set, Heavy Armor, History, Insight, Intimidation, Light Armor, Martial Weapons, Medium Armor, Persuasion, Shields, Simple Weapons, Wisdom Saving Throws', 19, -1, '30', 49, 49, 0, '5d10', '5d10', 0, 0, 0, 0, 0, 0, 'Dagger', '+6', '1d4+3', 'Flail', '+6', '1d8+3 Bludgeoning', 'Javalin', '+6', '1d6+3 Piercing', 'Longsword | +6 | 1d8+3 Slashing\r\nMorningstar | +6 | 1d8+3 Piercing\r\n', 2, 2, 0, 5, 12, '- Shield\r\n- Chain Mail\r\n- Dagger\r\n- Longsword\r\n- Javelin (5)\r\n- Flail\r\n- Morningstar\r\n- Backpack\r\n- Bedroll\r\n- Block and Tackle\r\n- Chain (10 feet)\r\n- Climber&#039;s Kit\r\n- Clothes, Fine\r\n- Crowbar\r\n- Fishing Tackle\r\n- Grappling Hook\r\n- Hammer\r\n- Healer&#039;s Kit\r\n- Holy Water (flask)\r\n- Lantern, Bullseye\r\n- Mess Kit\r\n- Mirror, Steel\r\n- Oil (flask) (5)\r\n- Pole (10-foot)\r\n- Potion of Healing (5)\r\n- Pouch\r\n- Rations (1 day) (10)\r\n- Rope, Silk (50 feet)\r\n- Sack\r\n- Shovel\r\n- Signal Whistle\r\n- Signet Ring\r\n- Soap\r\n- Spikes, Iron (10)\r\n- Tinderbox\r\n- Torch (11)\r\n- Waterskin\r\n- Whetstone\r\n- Emblem\r\n- String\r\n- Stake (Wooden) (3)\r\n- Small Knife\r\n- Potion of Climbing (5)\r\n', 'My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.\r\nDespite my noble birth, I do not place myself above other folk. We all have the same blood.	', 'Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine. (Lawful)', 'The common folk must see me as a hero of the people.', 'I too often hear veiled insults and threats in every word addressed to me, and Iâ€™m quick to anger.', 'Paladin:\r\n- Divine Sense\r\n- Hit Points\r\n- Lay on Hands Pool\r\n- Proficiencies\r\n- Divine Smite\r\n- Fighting Style\r\n- Spellcasting\r\n- Channel Divinity\r\n- Divine Health\r\n- Oath Spells\r\n- Ability Score Improvement\r\n- Extra Attack\r\nRacial Traits:\r\n- Ability Score Increase\r\n- Darkvision\r\n- Fey Ancestry\r\n- Skill Versatility\r\n- Languages\r\n');
INSERT INTO `characters` VALUES (14, 'Character 1', 1, 20, 4, 23, 13, 9, 2222, 10, 10, 10, 10, 10, 10, '5', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 'sadf', 'asdf', '', '', 'adsf', '', 'asdf', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (15, 'Test character', 10, 21, 13, 24, 9, 3, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (16, 'Testy Too', 5, 21, 3, 24, 1, 7, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (17, 'Character 1', 13, 21, 19, 10, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');
INSERT INTO `characters` VALUES (18, 'Character 2', 13, 21, 19, 10, 20, 10, 0, 10, 10, 10, 10, 10, 10, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `classes`
-- 

CREATE TABLE `classes` (
  `classID` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `className` varchar(50) NOT NULL,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `classes`
-- 

INSERT INTO `classes` VALUES (1, 'Barbarian');
INSERT INTO `classes` VALUES (2, 'Bard');
INSERT INTO `classes` VALUES (3, 'Cleric');
INSERT INTO `classes` VALUES (4, 'Druid');
INSERT INTO `classes` VALUES (5, 'Fighter');
INSERT INTO `classes` VALUES (6, 'Monk');
INSERT INTO `classes` VALUES (7, 'Paladin');
INSERT INTO `classes` VALUES (8, 'Ranger');
INSERT INTO `classes` VALUES (9, 'Rogue');
INSERT INTO `classes` VALUES (10, 'Sorcerer');
INSERT INTO `classes` VALUES (11, 'Warlock');
INSERT INTO `classes` VALUES (12, 'Wizard');
INSERT INTO `classes` VALUES (13, 'Class');

-- --------------------------------------------------------

-- 
-- Table structure for table `levels`
-- 

CREATE TABLE `levels` (
  `levelID` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `levelNumber` varchar(3) NOT NULL,
  PRIMARY KEY (`levelID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `levels`
-- 

INSERT INTO `levels` VALUES (1, '1');
INSERT INTO `levels` VALUES (2, '2');
INSERT INTO `levels` VALUES (3, '3');
INSERT INTO `levels` VALUES (4, '4');
INSERT INTO `levels` VALUES (5, '5');
INSERT INTO `levels` VALUES (6, '6');
INSERT INTO `levels` VALUES (7, '7');
INSERT INTO `levels` VALUES (8, '8');
INSERT INTO `levels` VALUES (9, '9');
INSERT INTO `levels` VALUES (10, '10');
INSERT INTO `levels` VALUES (11, '11');
INSERT INTO `levels` VALUES (12, '12');
INSERT INTO `levels` VALUES (13, '13');
INSERT INTO `levels` VALUES (14, '14');
INSERT INTO `levels` VALUES (15, '15');
INSERT INTO `levels` VALUES (16, '16');
INSERT INTO `levels` VALUES (17, '17');
INSERT INTO `levels` VALUES (18, '18');
INSERT INTO `levels` VALUES (19, '19');
INSERT INTO `levels` VALUES (20, '20');
INSERT INTO `levels` VALUES (21, 'Lvl');

-- --------------------------------------------------------

-- 
-- Table structure for table `races`
-- 

CREATE TABLE `races` (
  `raceID` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `raceName` varchar(50) NOT NULL,
  PRIMARY KEY (`raceID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `races`
-- 

INSERT INTO `races` VALUES (1, 'Dwarf, Standard');
INSERT INTO `races` VALUES (2, 'Dwarf, Hill');
INSERT INTO `races` VALUES (3, 'Dwarf, Mountain');
INSERT INTO `races` VALUES (4, 'Elf, Standard');
INSERT INTO `races` VALUES (5, 'Elf, High');
INSERT INTO `races` VALUES (6, 'Elf, Wood');
INSERT INTO `races` VALUES (7, 'Elf, Dark (Drow)');
INSERT INTO `races` VALUES (8, 'Halfling, Standard');
INSERT INTO `races` VALUES (9, 'Halfling, Lightfoot');
INSERT INTO `races` VALUES (10, 'Halfling, Stout');
INSERT INTO `races` VALUES (11, 'Human, Standard');
INSERT INTO `races` VALUES (12, 'Human, Variant');
INSERT INTO `races` VALUES (13, 'Dragonborn');
INSERT INTO `races` VALUES (14, 'Gnome, Standard');
INSERT INTO `races` VALUES (15, 'Gnome, Forest');
INSERT INTO `races` VALUES (16, 'Gnome, Rock');
INSERT INTO `races` VALUES (17, 'Half-Elf, Standard');
INSERT INTO `races` VALUES (18, 'Half-Orc');
INSERT INTO `races` VALUES (19, 'Tiefling, Standard');
INSERT INTO `races` VALUES (20, 'Race');

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `userID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userFirstName` varchar(25) NOT NULL,
  `userLastName` varchar(25) NOT NULL,
  `userEmailAddress` varchar(50) NOT NULL,
  `userUsername` varchar(25) NOT NULL,
  `userHashedPassword` varchar(32) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (8, 'Julie', 'Jamison', 'jmjamison.jj@gmail.com', 'butterfly1', '680f89b70f74e1380486bc3230f70b96');
INSERT INTO `users` VALUES (9, 'Brandon', 'Jamison', 'brandonjamison77@yahoo.com', 'LoneWolfC6', '3969525a080216b32cc196ae613145d0');
INSERT INTO `users` VALUES (10, 'Frank', 'Jamison', 'frank@frankjamison.com', 'frankjamison', '1de17b7d1028523eb98187bff6d1f6fd');
INSERT INTO `users` VALUES (11, 'Frank', 'Jamison', 'frankjamison@gmail.com', 'frankjamisongmail', '1de17b7d1028523eb98187bff6d1f6fd');
INSERT INTO `users` VALUES (12, 'robert', 'rotsolk', 'socalterrain01@gmail.com', 'enygma023', '24bc2869e015d9458e6c14e6f7f06276');
INSERT INTO `users` VALUES (14, 'User', 'Test', 'user1@test.com', 'usertest1', '49de0b99449a968e114c7d0b20cf94d8');
INSERT INTO `users` VALUES (15, 'User', 'Test', 'user2@test.com', 'usertest2', '5bc3f442e2128b2fffd90dfb9d59d701');
INSERT INTO `users` VALUES (16, 'User', 'Test', 'user3@test.com', 'usertest3', 'bf71396be5d50ba5c6996dca55e70db9');
INSERT INTO `users` VALUES (17, 'User', 'Test', 'user4@test.com', 'usertest4', 'f80c73d2f647c83bbadc7a19cdde6d33');
INSERT INTO `users` VALUES (18, 'User', 'Test', 'user5@test.com', 'usertest5', '92431fc148cf9e9aee2fe3b34bf21844');
INSERT INTO `users` VALUES (19, 'user', 'test', 'user7@test.com', 'usertest7', '5d1a30e13e0a06264e7f07e77eb9a5a8');
INSERT INTO `users` VALUES (20, 'user', 'test', 'user8@test.com', 'usertest8', '1390833e3fa217bf1bbfd28501883e10');
INSERT INTO `users` VALUES (21, 'user', 'test', 'user9@test.com', 'usertest9', 'cc903a089cb8c819ebef636c4635d126');
INSERT INTO `users` VALUES (22, 'user', 'test', 'user10@test.com', 'usertest10', 'b4abe66b81bb4e1e33045e75f17a0979');
INSERT INTO `users` VALUES (23, 'jack', 'smith', 'jack@smith.com', 'jackolantern', '0e1c364353e4c8fa6bdb3705d1ac064d');
INSERT INTO `users` VALUES (24, 'Bepo', 'Jopehu', 'bepojopehu@xgmailoo.com', 'bepobepo', '25f9e794323b453885f5181f1b624d0b');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `characters`
-- 
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `classes` (`classID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`levelID`) REFERENCES `levels` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `characters_ibfk_3` FOREIGN KEY (`backgroundID`) REFERENCES `backgrounds` (`backgroundID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `characters_ibfk_4` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `characters_ibfk_5` FOREIGN KEY (`raceID`) REFERENCES `races` (`raceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `characters_ibfk_6` FOREIGN KEY (`alignmentID`) REFERENCES `alignments` (`alignmentID`) ON DELETE CASCADE ON UPDATE CASCADE;
