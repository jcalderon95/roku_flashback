-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2020 at 12:48 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `ID` int(10) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Score` varchar(50) NOT NULL,
  `Rating` varchar(10) NOT NULL,
  `Image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`ID`, `Title`, `Description`, `Year`, `Type`, `Genre`, `Score`, `Rating`, `Image`) VALUES
(1, 'Sunset Boulevard', 'Norma Desmond, an ageing silent-screen actor, gets a second shot at fame when a screenwriter agrees to write a script for her.', '1950', 'Movie', 'Drama', '', 'R', 'sunset-boulevard.jpg'),
(2, 'Singin\' in the Rain', 'Don and Lina have been cast repeatedly as a romantic couple, but when their latest film is remade, only Don has the singing part.', '1952', 'Movie', 'Romance', '', 'R', 'singin-in-the-rain.jpg'),
(3, 'Rebel Without a Cause', 'After moving to a new town, troublemaking teen Jim Stark (James Dean) is supposed to have a clean slate, although being the new kid in town brings its own problems.', '1955', 'Movie', 'Drama', '', 'R', 'rebel-without-a-cause.jpg'),
(4, 'The Graduate', 'After moving to a new town, troublemaking teen Jim Stark (James Dean) is supposed to have a clean slate, although being the new kid in town brings its own problems.', '1967', 'Movie', 'Drama', '', 'R', 'the-graduate.jpg'),
(5, 'Pulp Fiction', 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\\\'s wife, a boxer and two small-time criminals.', '1994', 'Movie', 'Drama', '', 'R', 'pulp-fiction.jpg'),
(6, 'The Matrix', 'Thomas Anderson, a computer programmer, is led to fight an underground war against powerful computers who have constructed his entire reality with a system called the Matrix.', '1999', 'Movie', 'Sci-Fi', '', 'R', 'the-matrix.jpg'),
(7, 'The Godfather', 'Don Vito Corleone, head of a mafia family, decides to handover his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.', '1972', 'Movie', 'Drama', '', 'R', 'the-godfather.jpg'),
(8, 'Dog Day Afternoon', 'A man decides to rob a local Brooklyn bank to pay for his lover\\\'s operation, but he is forced to take hostages after the heist does not go as planned.', '1975', 'Movie', 'Drama', '', 'R', 'dog-day-afternoon.jpg'),
(9, 'Lock, Stock and Two Smoking Barrels', 'Eddy persuades his three pals to pool money for a vital poker game against a powerful local mobster, Hatchet Harry. Eddy loses, after which Harry gives him a week to pay back 500,000 pounds.', '1998', 'Movie', 'Thriller', '', 'R', 'lock-stock-and-two-smoking-barrels.jpg'),
(10, 'The Good, the Bad and the Ugly', 'During the Civil War, two men, Blondie and Tuco, form an uncomfortable alliance while looking for treasure. They must also outwit Angel Eyes, an outlaw who wants to plunder the riches for himself.', '1966', 'Movie', 'Action', '', 'R', 'the-good-the-bad-and-the-ugly.jpg'),
(11, 'Some Like It Hot', 'When two musicians witness a mob hit, they flee the state disguised as women in an all female band, but further complications set in.', '1959', 'Movie', 'Romance', '', 'R', 'some-like-it-hot.jpg'),
(12, 'The Odd Couple', 'When Felix and Frances have a divorce, Oscar, a divorcee himself, suggests that he move in with him. However, their housekeeping styles and individual lifestyles drive both of them up the wall.', '1968', 'Movie', 'Romance', '', 'R', 'the-odd-couple.jpg'),
(13, 'Kiss Me, Stupid', 'When Orville, a pianist, meets Dino, a singer, at the gas station, he invites him to his house in the hopes to impress the artist.', '1964', 'Movie', 'Comedy', '', 'R', 'kiss-me-stupid.jpg'),
(14, 'Stand By Me', 'Gordie, Chris, Teddy and Vern are four friends who decide to hike to find the corpse of Ray Brower, a local teenager, who was hit by a train while plucking blueberries in the wild.', '1986', 'Movie', 'Adventure', '', 'R', 'stand-by-me.jpg'),
(15, 'The Shining', 'Jack and his family move into an isolated hotel with a violent past. Living in isolation, Jack begins to lose his sanity, which affects his family members.', '1980', 'Movie', 'Thriller', '', 'R', 'the-shining.jpg'),
(16, 'Top Gun', 'After losing his friend, top pilot Maverick is given a second chance to redeem himself. He struggles to be at his best and also gets romantically involved with his civilian instructor Charlie.', '1986', 'Movie', 'Action', '', 'R', 'top-gun.jpg'),
(17, 'From Dusk till Dawn', 'On the run from a bank robbery that left several police officers dead, Seth Gecko and his paranoid, loose-cannon brother, Richard, hightail it to the Mexican border.', '1996', 'Movie', 'Drama', '', 'R', 'from-dusk-till-dawn.jpg'),
(18, 'Scarface', 'Tony Montana and his close friend Manny, build a strong drug empire in Miami. However as his power begins to grow, so does his ego and his enemies, and his own paranoia begins to plague his empire.', '1983', 'Movie', 'Drama', '', 'R', 'scarface.jpg'),
(19, 'Carlito\'s Way', 'Carlito Brigante chooses to lead a quiet life after being released from prison. But when he reluctantly becomes a part of a drugs deal, he realises that there is no escape.', '1993', 'Movie', 'Drama', '', 'R', 'carlitos-way.jpg'),
(20, 'Tequila Sunrise', 'Mac is an unlikely drug dealer who wants to go straight. His best friend Nick is now a cop who is assigned to investigate and bring him to justice. Both fall for Jo Ann, the owner of a restaurant.', '1988', 'Movie', 'Thriller', '', 'R', 'tequila-sunsrise.jpg'),
(21, 'The Golden Girls', 'Girls from different parts of the country participate in a series of contests and demonstrate their unique skills and talent to win the coveted title.', '1985', 'Series', 'Comedy', '', 'R', 'the-golden-girls.jpg'),
(22, 'M*A*S*H', 'The series is centered upon the interrelationships, stress and trauma involved in being a part of Mobile Army Surgical Hospital. They survive insuperable odds with the help of practical jokes and fun.', '1972', 'Series', 'Comedy', '', 'R', 'mash.jpg'),
(23, 'Sherlock Holmes', 'Sherlock Holmes uses his abilities to take on cases by private clients and those that the Scotland Yard are unable to solve, along with his flatmate Dr. Watson.', '1984', 'Series', 'Drama', '', 'R', 'sherlock-holmes.jpg'),
(24, 'Star Trek', 'James T Kirk, who is the captain of the Starship Enterprise, explores the whole galaxy with his crew and goes on several adventures as they fight evil forces together.', '1966', 'Series', 'Sci-Fi', '', 'R', 'star-trek.jpg'),
(25, 'Gunsmoke', 'Marshal Matt Dillon lives in a Wild West town and protects it from troublemakers. He restores peace and tries to win over the love of a woman.', '1955', 'Series', 'Drama', '', 'R', 'gunsmoke.jpg'),
(26, 'The Twilight Zone', 'A comprehensive collection of mystical tales where people try to solve their problems using their own unique ideas.', '1959', 'Series', 'Thriller', '', 'R', 'the-twilight-zone.jpg'),
(27, 'Maverick', 'Two brothers, Bret and Bart Maverick, gamble their way across the Wild West and make money while avoiding as much unnecessary trouble as possible.', '1957', 'Series', 'Comedy', '', 'R', 'maverick.jpg'),
(28, 'Zorro', 'The masked swordsman swashes a mean buckle as the dashing alter ego of 19th century Spanish California aristocrat Don Diego de la Vega.', '1957', 'Series', 'Comedy', '', 'R', 'zorro.jpg'),
(29, 'The Addams Family', 'Morticia and Gomez Addams head a macabre family - a giant named Lurch, who acts as doorman, a disembodied hand named Thing, not-quite-right son Pugsley and morose daughter Wednesday.', '1964', 'Series', 'Comedy', '', 'R', 'the-addams-family.jpg'),
(30, 'The Dick Van Dyke Show', 'Rob Petrie, the head writer of a comedy show, tends to get into farcical situations with his fellow writers and his family.', '1961', 'Series', 'Comedy', '', 'R', 'the-dick-van-dyke-show.jpg'),
(31, 'The Six Million Dollar Man', 'Steve Austin is an astronaut who is seriously injured when his spaceship crashes. Austin undergoes surgery, which rebuilds several of Steve\'s body parts with machine parts, making him cyborglike.', '1973', 'Series', 'Sci-Fi', '', 'R', 'the-six-million-dollar-man.jpg'),
(32, 'Alias Smith and Jones', 'This Western features outlaws Hannibal Heyes and `Kid\' Curry trying to go straight, but there\'s a price for freedom.', '1971', 'Series', 'Western', '', 'R', 'alias-smith-and-hones.jpg'),
(33, 'The Wanton Song', 'Artist: Led Zeppelin\r\nAlbum: Physical Graffiti', '1975', 'Music', 'Rock', '', 'R', 'the-wanton-song.jpg'),
(34, 'I Can\'t Quit You Baby', 'Artist: Led Zeppelin\r\nAlbum: Led Zeppelin', '1969', 'Music', 'Rock', '', 'R', 'i-cant-quit-you-baby.jpg'),
(35, 'When the Levee Breaks', 'Artist: Led Zeppelin\r\nAlbum: Coda', '1982', 'Music', 'Rock', '', 'R', 'when-the-levee-breaks.jpg'),
(36, 'All Shook Up', 'Artist: Elvis Presley\r\nMovie: Loving You', '1975', 'Music', 'Rock', '', 'R', 'all-shook-up.jpg'),
(37, 'Love is Strange', 'Artists: Sylvia, Mickey\r\nAlbum: Love Is Strange (From \'Dirty Dancing\')', '1956', 'Music', 'Pop', '', 'R', 'love-is-strange.jpg'),
(38, 'Great Balls of Fire', 'Artist: Jerry Lee Lewis\r\nAlbum: Vintage Rock Nº4 - EPs Collectors', '1958', 'Music', 'Pop', '', 'R', 'great-balls-of-fire.jpg'),
(39, 'Can\'t Take My Eyes off You', 'Artist: The 4 Seasons\r\nAlbum: Solo', '1967', 'Music', 'Pop', '', 'R', 'cant-take-my-eyes-off-you.jpg'),
(40, 'Hungry like the Wolf', 'Artist: Duran Duran\r\nAlbum: Hungry Like the Wolf', '1982', 'Music', 'Rock', '', 'R', 'hungry-like-the-wolf.jpg'),
(41, 'Out of Touch', 'Artist: Hall & Oates\r\nAlbum: Big Bam Boom', '1984', 'Music', 'Pop', '', 'R', 'out-of-touch.jpg'),
(42, 'Bad Medicine', 'Artist: Bon Jovi\r\nAlbum: New Jersey', '1982', 'Music', 'Rock', '', 'R', 'bad-medicine.jpg'),
(43, 'Old Yeller', 'Travis finds and tries to drive away Old Yeller, a stray dog, while working on the cornfields. But when he saves Arliss, Travis\'s young brother, from a wild bear, he decides to adopt him.', '1957', 'Movie', 'Adventure', '', 'G', 'old-yeller.jpg'),
(44, '20,000 Leagues Under the Sea', 'A ship despatched to investigate a series of mystifying sinkings has to deal with the state-of-the-art submarine, the Nautilus, commanded by Captain Nemo.', '1954', 'Movie', 'Drama', '', 'G', '20000-leagues-under-the-sea.jpg'),
(45, 'Johnny Tremain', 'An apprentice silversmith (Hal Stalmaster) is there at the Boston Tea Party and other highpoints of the Revolution.', '1957', 'Movie', 'Drama', '', 'G', 'johnny-tremain.jpg'),
(46, 'Blackbeard\'s Ghost', 'After accidentally reciting some magic words, track coach Steve Walker (Dean Jones) summons the ghost of the dreaded pirate Blackbeard (Peter Ustinov). ', '1968', 'Movie', 'Drama', '', 'G', 'blackbeards-ghost.jpg'),
(47, 'The Computer Wore Tennis Shows', 'Students convince businessman A.J. Arno to donate one. When it needs to be repaired, student Dexter Reilly fixes it during an electrical storm and receives a shock.', '1969', 'Movie', 'Sci-Fi', '', 'G', 'the-computer-wore-tennis-shows.jpg'),
(48, 'Chitty Chitty Bang Bang', 'Inventor Caractacus Potts transforms an old Grand Prix car into a magical flying vehicle that teleports him and his family to a kingdom ruled by the evil Baron Bomburst.', '1968', 'Movie', 'Adventure', '', 'G', 'chitty-chitty-bang-bang.jpg'),
(49, 'The Cat from Outer Space', 'A UFO captained by a cat-like extraterrestrial (Ronnie Schell) is intercepted by the U.S. Military.', '1978', 'Movie', 'Comedy', '', 'G', 'the-cat-from-outer-space.jpg'),
(50, 'Hot Lead and Cold Feet', 'A sturdy cowman Jasper Bloodshy fakes the death of one of his twin sons and writes the fortune will for the other. Soon, both the sons come upon each other and scramble around for the inheritance.', '1978', 'Movie', 'Adventure', '', 'G', 'hot-lead-and-cold-feet'),
(51, 'The Princess Bride', 'A fairy tale adventure about a beautiful young woman and her one true love. He must find her after a long separation and save her.', '1987', 'Movie', 'Romance', '', 'G', 'the-princess-bride.jpg'),
(52, 'Mrs. Doubtfire', 'Daniel, a divorced actor, disguises himself as Mrs Doubtfire, an ageing female Scottish housekeeper, in order to work in his ex-wife\'s house and spend more time with his children.', '1993', 'Movie', 'Comedy', '', 'G', 'mrs-doubtfire.jpg'),
(73, 'Scooby Doo', 'Brainy Velma, jock Fred, fashionista Daphne, hippie Shaggy, and Shaggy\'s highstrung, talking Great Dane, Scooby-Doo, hit the road on the Mystery Machine in search of weird mysteries to solve.', '1969', 'Series', 'Adventure', '', 'G', 'scooby-doo.jpg'),
(74, 'The Bugs Bunny Mystery Special', 'The Bugs Bunny Mystery Special is an animated television special is presented as an Alfred Hitchcock-style whodunit, the plot is modeled after those of North by Northwest and The Fugitive.', '1980', 'Series', 'Drama', '', 'G', 'the-bugs-bunny-mystery-special.jpg'),
(75, 'Felix the Cat', 'The adventures of Felix the Ca, a funny-animal cartoon character created in the silent film era.', '1959', 'Series', 'Adventure', '', 'G', 'felix-the-cat.jpg'),
(76, 'The Ruff and Reddy Show', 'The series follows the adventures of Ruff, a smart and steadfast cat and Reddy, a good-natured and brave dog', '1957', 'Series', 'Comedy', '', 'G', 'the-ruff-and-reddy-show.jpg'),
(77, 'ThunderCats', 'The adventures of a group of catlike humanoid aliens from the planet Thundera. When the dying planet meets its end, the group, known as the ThunderCats, is forced to flee its homeland.', '1985', 'Series', 'Action', '', 'G', 'thundercats.jpg'),
(88, 'Inspector Gadget', 'Inspector Gadgets, now takes route to solve the mystery rooting in America.', '1983', 'Series', 'Comedy', '', 'G', 'inspector-gadget.jpg'),
(89, 'The Joy of Painting', 'The Joy of Painting. The Joy of Painting is an instructional hosted by Bob Ross in each episode, Ross taught techniques for landscape oil painting, completing a painting in each session.', '1983', 'Series', 'Educational', '', 'G', 'the-joy-of-painting.jpg'),
(90, 'Mister Rogers\' Neighborhood', 'red Rogers hosts this gentle, thoughtful children\'s show, and he treats kids like intelligent people who deserve programming just as good as that for adults.', '1968', 'Series', 'Educational', '', 'G', 'mister-rogers-neighborhood.jpg'),
(91, 'Bill Nye the Science Guy', 'Bill Nye, a scientist, explains the basic concepts of science in a humorous manner to help young children understand them better.', '1993', 'Series', 'Educational', '', 'G', 'bill-bye-the-science-guy.jpg'),
(92, 'Jeopardy!', '\"Jeopardy!\" is a classic game show -- with a twist. The answers are given first, and the contestants supply the questions.', '1964', 'Series', 'Educational', '', 'G', 'jeopardy.jpg'),
(93, 'Sesame Street', 'A longtime favorite of children and adults, and a staple of PBS, \"Sesame Street\" bridges many cultural and educational gaps with a fun program.', '1969', 'Series', 'Educational', '', 'G', 'sesame-street.jpg'),
(94, 'Reading Rainbow', 'Hosted by LeVar Burton for more than 20 years, \"Reading Rainbow\" teaches reading skills, habits, and attitudes.', '1983', 'Series', 'Educational', '', 'G', 'reading-rainbow.jpg'),
(95, 'Art Attack', 'From balloons to paper stencils, children learn how to make art with Neil who teaches them easy ways of learning new things.', '1990', 'Series', 'Educational', '', 'G', 'art-attack.jpg'),
(96, 'Johnny B. Goode', 'Artist: Chuck Berry\r\nMovie: Back to the Future', '1958', 'Music', 'Rock', '', 'G', 'johnny-b-goode.jpg'),
(97, 'Free Fallin\'', 'Artist: Tom Petty\r\nAlbum: Full Moon Fever', '1989', 'Music', 'Rock', '', 'G', 'free-fallin.jpg'),
(98, 'Happy Together', 'Artist: The Turtles\r\nAlbum: Summer to Fall in Love', '1982', 'Music', 'Pop', '', 'G', 'happy-together.jpg'),
(99, 'Spirit in the Sky', 'Artist: Norman Greenbaum\r\nAlbum: Spirit in the Sky', '1969', 'Music', 'Rock', '', 'G', 'spirit-in-the-sky.jpg'),
(100, 'Brown Eyed Girl', 'Artist: Van Morrison\r\nAlbum: Blowin\' Your Mind!', '1967', 'Music', 'Rock', '', 'G', 'brown-eyed-girl.jpg'),
(101, 'Hakuna Matata', 'Artists: Nathan Lane, Jason Weaver, Ernie Sabella, Joseph A. Williams\r\nMovie: The Lion King', '1994', 'Music', 'Pop', '', 'G', 'hakuna-matata.jpg'),
(102, 'Only Solutions', 'Artist: Journey\r\nAlbum: Tron', '1982', 'Music', 'Pop', '', 'G', 'only-solutions.jpg'),
(103, 'A Star is Born', 'Artist: Alan Menken\r\nMovie: Hercules', '1997', 'Music', 'Pop', '', 'G', 'a-star-i-born.jpg'),
(104, 'Strangers Like Me', 'Artist: Phil Collins\r\nMovie: Tarzan', '1999', 'Music', 'Rock', '', 'G', 'strangers-like-me.jpg'),
(105, 'Let\'s Go Fly a Kite', 'Artists: Dick Van Dyke, David Tomlinson\r\nMovie: Mary Poppins', '1964', 'Music', 'Pop', '', 'G', 'lets-go-fly-a-kite.jpg'),
(106, 'Dancing Queen', 'Artist: ABBA\r\nAlbum: Dancing Queen & That\'s Me', '1976', 'Music', 'Pop', '', 'G', 'dancing-queen.jpg'),
(107, 'Should I Stay or Should I Go', 'Artist: The Clash\r\nAlbum: Combat Rock', '1982', 'Music', 'Rock', '', 'G', 'should-i-stay-or-should-i-go.jpg'),
(108, 'Never Gonna Give you Up', 'Artist: Rick Astley\r\nAlbum: Never Gonna Give You Up (Pianoforte)', '1987', 'Music', 'Pop', '', 'G', 'never-gonna-give-you-up.jpg'),
(109, 'I Want it That Way', 'Artist: Backstreet Boys\r\nAlbum: Millennium', '1999', 'Music', 'Pop', '', 'G', 'i-want-it-that-way.jpg'),
(110, 'Barbie Girl', 'Artist: Aqua\r\nAlbum: Barbie Girl', '1997', 'Music', 'Pop', '', 'G', 'barbie-girl.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
