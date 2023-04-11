CREATE DATABASE  IF NOT EXISTS `songsdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `songsdb`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: songsdb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('1998265ea176');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(150) NOT NULL,
  `album` varchar(150) NOT NULL,
  `release_date` date NOT NULL,
  `genre` varchar(100) NOT NULL,
  `likes` int DEFAULT NULL,
  `running_time` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=789 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (628,'10/10','Rex Orange County','Pony','2019-10-25','pop',0,146),(629,'1234','Feist','The Reminder','2007-01-01','female vocalists',0,183),(630,'1901','Phoenix','Wolfgang Amadeus Phoenix','2009-01-01','indie',0,193),(631,'19-2000 - Soulchild Remix','Gorillaz','G-Sides','2002-02-01','electronic',0,209),(632,'Acoustic #3','The Goo Goo Dolls','Dizzy up the Girl','1998-09-11','acoustic',0,116),(633,'Ain\'t No Rest for the Wicked','Cage The Elephant','Cage The Elephant','2009-03-24','rock',0,175),(634,'Angela','The Lumineers','Cleopatra','2016-04-08','indie',0,201),(635,'Apologize','OneRepublic','Dreaming Out Loud','2007-01-01','alternative',0,208),(636,'Bang!','AJR','Bang!','2020-02-12','indie pop',0,170),(637,'Beautiful Girls','Sean Kingston','Beautiful Girls','2007-07-23','rnb',0,225),(638,'Believe','The Bravery','The Sun And The Moon','2007-01-01','indie rock',0,226),(639,'Best Day Of My Life','American Authors','Oh, What A Life','2014-01-01','indie',0,194),(640,'Best of You','Foo Fighters','In Your Honor','2005-06-14','rock',0,255),(641,'Bitter Sweet Symphony','The Verve','Urban Hymns','1997-09-29','britpop',0,357),(642,'Black & Blue','Miike Snow','Miike Snow','2009-01-01','poptron',0,219),(643,'Black Madonna','Cage The Elephant','Social Cues','2019-04-19','indie',0,226),(644,'Blinding Lights','The Weeknd','After Hours','2020-03-20','synthpop',0,200),(645,'Boulevard of Broken Dreams','Green Day','Greatest Hits: God\'s Favorite Band','2017-11-17','rock',0,262),(646,'Breathe (2 AM)','Anna Nalick','Wreck of the Day','2005-01-01','female vocalists',0,279),(647,'Breathe Me','Sia','Colour The Small One','2004-01-01','female vocalists',0,272),(648,'broken','lovelytheband','finding it hard to smile','2018-08-03','pop',0,204),(649,'Cecilia And The Satellite','Andrew McMahon in the Wilderness','Andrew McMahon In The Wilderness','2014-10-14','alternative',0,223),(650,'Chelsea Dagger','The Fratellis','Costello Music','2007-01-01','indie',0,215),(651,'Cigarette Daydreams','Cage The Elephant','Melophobia','2013-10-08','alternative rock',0,208),(652,'Circles','Post Malone','Hollywood\'s Bleeding','2019-09-06','pop',0,215),(653,'Cold Cold Cold','Cage The Elephant','Tell Me I\'m Pretty','2015-12-18','indie',0,214),(654,'Come a Little Closer','Cage The Elephant','Melophobia','2013-10-08','alternative rock',0,229),(655,'Cool Kids','Echosmith','Talking Dreams','2013-10-04','indie pop',0,237),(656,'Crazy','Gnarls Barkley','St. Elsewhere','2006-05-02','soul',0,182),(657,'Creep','Radiohead','Pablo Honey','1993-02-22','alternative',0,238),(658,'Dear Winter','AJR','Neotheater','2019-04-26','indie',0,168),(659,'Dog Days Are Over','Florence + The Machine','Lungs','2009-01-01','indie',0,251),(660,'Don\'t Let Me Be Misunderstood','Santa Esmeralda','Kill Bill Vol. 1 Original Soundtrack','2003-09-23','disco',0,628),(661,'Don\'t You Evah','Spoon','Ga Ga Ga Ga Ga','2007-07-10','indie',0,216),(662,'Electric Feel','MGMT','Oracular Spectacular','2007-12-14','electronic',0,229),(663,'Feel Good Inc.','Gorillaz','Demon Days','2005-05-23','alternative',0,222),(664,'Fell in Love with a Girl','The White Stripes','White Blood Cells','2001-07-03','rock',0,110),(665,'Fever','The Black Keys','Turn Blue','2014-05-09','rock',0,246),(666,'Fire for You','Cannons','Shadows','2019-07-12','indie',0,231),(667,'First','Cold War Kids','Hold My Home','2014-10-31','alternative',0,200),(668,'Float On','Modest Mouse','Good News For People Who Love Bad News','2004-04-05','indie',0,208),(669,'Fort Knox','GoldFish','Goldfish Perceptions of Pacha','2009-03-26','electronic',0,197),(670,'Genghis Khan','Miike Snow','iii','2016-03-04','electropop',0,212),(671,'Geronimo','Sheppard','Bombs Away','2015-03-10','indie',0,218),(672,'Good Riddance (Time of Your Life)','Green Day','Nimrod','1997-10-14','rock',0,153),(673,'HandClap','Fitz and The Tantrums','Fitz and The Tantrums','2017-07-24','electronic',0,193),(674,'Harlem','New Politics','A Bad Girl In Harlem','2013-05-17','rock',0,163),(675,'Hate To Say I Told You So','The Hives','Veni Vidi Vicious','2000-01-01','rock',0,199),(676,'High','Sir Sly','Don\'t You Worry, Honey','2017-06-30','indie',0,231),(677,'High And Low','Empire of the Sun','Two Vines','2016-10-28','electronic',0,224),(678,'Ho Hey','The Lumineers','The Lumineers','2012-04-03','indie',0,163),(679,'Howlin\' for You','The Black Keys','Brothers','2010-05-18','blues rock',0,191),(680,'How to Save a Life','The Fray','How To Save A Life','2005-09-13','alternative',0,262),(681,'How You Like Me Now','The Heavy','The House That Dirt Built','2009-10-05','rock',0,217),(682,'I Believe in a Thing Called Love','The Darkness','Permission to Land','2003-07-07','rock',0,217),(683,'In My Place','Coldplay','A Rush of Blood to the Head','2002-08-08','rock',0,226),(684,'Island In The Sun','Weezer','Weezer','2001-05-15','rock',0,200),(685,'I Turn My Camera On','Spoon','Gimme Fiction','2005-01-01','indie',0,212),(686,'I Wanna Get Better','Bleachers','Strange Desire','2014-07-14','pop',0,204),(687,'I Will Follow You into the Dark','Death Cab for Cutie','Plans','2005-08-29','indie',0,189),(688,'I Will Wait','Mumford & Sons','Babel','2012-09-25','2010s folk rock',0,276),(689,'Kids','MGMT','Oracular Spectacular','2007-12-14','electronic',0,302),(690,'Lampshades on Fire','Modest Mouse','Strangers to Ourselves','2015-03-13','indie rock',0,187),(691,'Landslide','Fleetwood Mac','Fleetwood Mac','1975-07-11','classic rock',0,199),(692,'Lazy Eye','Silversun Pickups','Carnavas','2006-07-26','indie rock',0,354),(693,'Learn to Fly','Foo Fighters','There Is Nothing Left To Lose','1999-11-02','rock',0,235),(694,'Little Lion Man','Mumford & Sons','Sigh No More','2009-01-01','folk',0,245),(695,'Little Talks','Of Monsters and Men','My Head Is An Animal','2012-01-01','indie',0,266),(696,'Live in the Moment','Portugal. The Man','Woodstock','2017-06-16','indie',0,246),(697,'Lonely Boy','The Black Keys','El Camino','2011-12-06','blues rock',0,193),(698,'Mess Around','Cage The Elephant','Tell Me I\'m Pretty','2015-12-18','indie rock',0,173),(699,'The Middle','Jimmy Eat World','Bleed American','2001-07-17','rock',0,165),(700,'Midnight City','M83','Hurry Up, We\'re Dreaming','2011-01-01','electronic',0,241),(701,'Moneygrabber','Fitz and The Tantrums','Pickin\' up the Pieces','2010-08-24','soul',0,189),(702,'Mountain Sound','Of Monsters and Men','My Head Is An Animal','2012-01-01','indie',0,211),(703,'Move','Saint Motel','saintmotelevision','2016-10-21','indie',0,187),(704,'Move Your Feet','Junior Senior','d-d-don\'t don\'t stop the beat','2003-07-25','dance',0,181),(705,'Mr. Brightside','The Killers','Hot Fuss','2004-01-01','rock',0,222),(706,'My Type','Saint Motel','My Type EP','2014-08-16','indie',0,204),(707,'Name','The Goo Goo Dolls','A Boy Named Goo','1995-03-10','rock',0,270),(708,'No One Knows','Queens of the Stone Age','Songs For The Deaf','2002-01-01','rock',0,278),(709,'Not Your Fault','AWOLNATION','Megalithic Symphony','2011-03-15','electronic',0,242),(710,'Ophelia','The Lumineers','Cleopatra','2016-04-08','indie folk',0,160),(711,'Out of My League','Fitz and The Tantrums','More Than Just a Dream','2013-05-07','indie',0,209),(712,'Paradise','Coldplay','Mylo Xyloto','2011-10-24','rock',0,278),(713,'Pumped Up Kicks','Foster The People','Torches','2011-05-23','indie',0,239),(714,'Ready To Let Go','Cage The Elephant','Social Cues','2019-04-19','indie rock',0,187),(715,'Rehab','Amy Winehouse','Back To Black','2006-01-01','soul',0,214),(716,'Renegades','X Ambassadors','VHS','2015-06-30','alternative',0,195),(717,'Ride','Twenty One Pilots','Blurryface','2015-05-15','indie pop',0,214),(718,'Riptide','Vance Joy','Dream Your Life Away','2014-09-09','indie',0,204),(719,'Rollercoaster','Bleachers','Strange Desire','2014-07-14','alternative',0,188),(720,'&Run','Sir Sly','Don\'t You Worry, Honey','2017-06-30','indie',0,226),(721,'Run (I\'m a Natural Disaster)','Gnarls Barkley','The Odd Couple','2008-03-18','funk',0,164),(722,'Sail','AWOLNATION','Megalithic Symphony','2011-03-15','electronic',0,259),(723,'Satellite','Guster','Ganging up on the Sun','2006-06-20','indie',0,273),(724,'Save Me','Aimee Mann','Magnolia (Music from the Motion Picture)','1999-12-07','female vocalists',0,274),(725,'Say It, Just Say It','The Mowgli\'s','Waiting For The Dawn','2013-01-01','indie',0,200),(726,'The Scientist','Coldplay','A Rush of Blood to the Head','2002-08-08','alternative',0,309),(727,'THE SHADE','Rex Orange County','WHO CARES?','2022-03-11','pop',0,181),(728,'Ship To Wreck','Florence + The Machine','How Big, How Blue, How Beautiful','2015-06-01','alternative',0,234),(729,'Sit Next to Me','Foster The People','Sacred Hearts Club','2017-07-21','rock',0,243),(730,'Sit Next to Me - Stereotypes Remix','Foster The People','Sit Next to Me (Stereotypes Remix)','2018-02-23','indie',0,190),(731,'Skin and Bones','Cage The Elephant','Social Cues','2019-04-19','rock',0,196),(732,'Sober Up (feat. Rivers Cuomo)','AJR','The Click','2017-06-09','indie',0,218),(733,'Social Cues','Cage The Elephant','Social Cues','2019-04-19','rock',0,219),(734,'Somebody Told Me','The Killers','Hot Fuss','2004-01-01','rock',0,197),(735,'Something Just Like This','The Chainsmokers','Memories...Do Not Open','2017-04-07','pop',0,247),(736,'Somewhere Only We Know','Keane','Hopes And Fears','2004-01-01','britpop',0,236),(737,'Stacy\'s Mom','Fountains Of Wayne','Welcome Interstate Managers','2003-01-01','rock',0,197),(738,'Stay','Rihanna','Unapologetic','2012-01-01','pop',0,240),(739,'Stay With Me','Sam Smith','In The Lonely Hour','2014-05-26','soul',0,172),(740,'Stolen Dance','Milky Chance','Sadnecessary','2014-06-20','indie',0,313),(741,'Stressed Out','Twenty One Pilots','Blurryface','2015-05-15','indie pop',0,202),(742,'Such Great Heights','The Postal Service','Give Up','2003-02-19','electronic',0,266),(743,'Sunflower - Spider-Man: Into the Spider-Verse','Post Malone','Hollywood\'s Bleeding','2019-09-06','Hip-Hop',0,157),(744,'Sweet Disposition','The Temper Trap','Conditions','2009-10-01','indie',0,234),(745,'Sweet Dreams (Are Made of This)','Eurythmics','Sweet Dreams (Are Made Of This)','1983-01-04','pop',0,216),(746,'Take a Walk','Passion Pit','Gossamer','2012-07-23','indie',0,264),(747,'Take Me Out','Franz Ferdinand','Franz Ferdinand','2004-02-16','indie',0,237),(748,'Take Me to Church','Hozier','Hozier','2014-09-19','indie',0,241),(749,'Tear in My Heart','Twenty One Pilots','Blurryface','2015-05-15','indie pop',0,188),(750,'That\'s All','Genesis','Turn It on Again: The Hits','1999-10-25','80s',0,264),(751,'Tighten Up','The Black Keys','Brothers','2010-05-18','blues rock',0,211),(752,'Tongue Tied','GROUPLOVE','Never Trust a Happy Song','2011-09-02','indie',0,218),(753,'Trojans','Atlas Genius','When It Was Now','2013-02-18','indie',0,217),(754,'Trouble','Coldplay','Parachutes','2000-07-10','alternative',0,273),(755,'Trouble','Cage The Elephant','Tell Me I\'m Pretty','2015-12-18','rock',0,225),(756,'Unbelievers','Vampire Weekend','Modern Vampires of the City','2013-05-13','indie rock',0,202),(757,'The Underdog','Spoon','Ga Ga Ga Ga Ga','2007-07-10','indie',0,222),(758,'Unsteady','X Ambassadors','VHS','2015-06-30','indie',0,193),(759,'Up All Night','Beck','Colors','2017-10-13','pop',0,190),(760,'Viva La Vida','Coldplay','Viva La Vida or Death and All His Friends','2008-05-26','alternative',0,242),(761,'Wake Me up When September Ends','Green Day','American Idiot','2004-09-21','rock',0,285),(762,'The Walker','Fitz and The Tantrums','More Than Just a Dream','2013-05-07','indie pop',0,233),(763,'Walking On A Dream','Empire of the Sun','Walking On A Dream','2008-10-03','electronic',0,198),(764,'Walking with a Ghost','Tegan and Sara','So Jealous','2004-09-14','indie',0,150),(765,'We come together (feat. Sakhile Moleshe)','GoldFish','We Come Together (Remix) - Single','2011-03-15','indie',0,218),(766,'We Don\'t Have To Take Our Clothes Off','Ella Eyre','Ella Eyre','2015-01-12','chill',0,230),(767,'What You Know','Two Door Cinema Club','Tourist History','2010-02-07','indie',0,191),(768,'When You Were Young','The Killers','Sam\'s Town','2006-09-27','rock',0,220),(769,'Wish I Knew You','The Revivalists','Men Amongst Mountains','2015-07-15','Blue-Eyed Soul',0,274),(770,'You Got Yr. Cherry Bomb','Spoon','Ga Ga Ga Ga Ga','2007-07-10','indie rock',0,189),(771,'Young Folks','Peter Bjorn and John','Writer\'s Block','2006-01-01','indie',0,276),(772,'You\'re Somebody Else','flora cash','You\'re Somebody Else','2018-06-19','chill',0,218),(773,'Your Song','Elton John','Elton John','1970-04-06','pop',0,241);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 18:45:31
