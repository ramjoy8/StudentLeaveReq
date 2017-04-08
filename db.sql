-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 06:14 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`loginid`, `pass`) VALUES
('mca', 'mca');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2),
(17, 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3),
(18, 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1),
(19, 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4),
(20, 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4),
(22, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(23, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(24, 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will receive the focus', 'It determines if the access key swquence can be used', 1),
(25, 10, 'You application creates an instance of a form. What is the first event that will be triggered in the from?', 'Load', 'GotFocus', 'Instance', 'Initialize', 4),
(26, 10, 'Which of the following is Hungarian notation for a menu?', 'Menu', 'Men', 'mnu', 'MN', 3),
(27, 10, 'You are ready to run your program to see if it works.Which key on your keyboard will start the program?', 'F2', 'F3', 'F4', 'F5', 4),
(28, 10, 'Which of the following snippets of code will unload a form named frmFo0rm from memory?', 'Unload Form', 'Unload This', 'Unload Me', 'Unload', 3),
(29, 10, 'You want the text in text box named txtMyText to read My Text.In which property will you place this string?', 'Caption', 'Text', 'String', 'None of the above', 2),
(30, 11, 'How many data types are there in c ?', '8', '7', '6', '5', 3),
(31, 11, 'Range of integer type of data ?', '-32768 to 32767', '123-133', '152 to 258', '-78954 to 32564', 1),
(32, 11, 'getchar() is used to get ?', 'integer', 'string', 'character', 'print', 3),
(33, 11, 'gets() is used to get???', 'number', 'character', 'string', 'integer', 3),
(34, 11, 'short cut key to save is _', 'f4', 'f9', 'f2', 'f1', 3),
(35, 11, 'short cut key to close the program?.?', 'f7', 'f3', 'f8', 'f9', 2),
(36, 11, 'who invented c language ?', 'Denis Ritchie', 'Pascal Blaise', 'Denis reddy', 'Bill gets', 1),
(37, 11, 'To come out of c __shortcut key is used?', 'alt+b', 'alt+k', 'alt+m', 'alt+x', 4),
(38, 11, 'strlen() return _____ types of data ?', 'integer', 'character', 'string', 'void', 1),
(40, 11, 'how many keyword are there in c?', '56', '54', '64', '32', 4),
(49, 11, 'for multiline comment ___ is used', '//', '??', '/*', '\\*', 3),
(50, 11, '"default: " statement is a part of ___', 'switch case', 'If else', 'if', 'loop', 1),
(53, 11, 'or operator in c is ________type of operator ?', 'arethametic', 'logical', 'bitwise', 'conditional', 2),
(54, 11, '___is assignment operator in c ?', '*', '++', '=', '--', 3),
(55, 11, 'Every function returns___type of value ?', 'int', 'char', 'float', 'none of these', 4),
(56, 11, 'what is the answer of 8%5', '4.5', '3', '1', '1.3', 2),
(57, 11, 'gets() is defined in ?', 'stdio.h', 'conio.h', 'string.h', 'dos.h', 1),
(58, 11, '__key is used to zoom the screen', 'f5', 'f6', 'f9', 'alt+f9', 1),
(59, 11, '____decision making control', 'for loop', 'do while', 'function', 'switch case', 4),
(60, 12, 'RAM Stands for', 'Random Access Memory', 'Random accelerated Memory', 'Random Access Machenism', 'Random Accurace Mantan', 1),
(61, 12, 'PC Stands for', 'pocket computer', 'personal computer', 'phisycal computer', 'personal card', 2),
(62, 12, 'Personal Computer are the type of computer', 'super computer', 'mini computer', 'micro computer', 'mainframe computer', 3),
(63, 12, 'floppy disk is the type of memory', 'magnatic & secondarymain memory', 'main memory', 'o primary', 'none of the above', 1),
(64, 12, 'keybord is the type of device', 'input', 'pointing', 'output', 'sound', 1),
(65, 12, 'mouse is the type of device', 'input', 'pointing', 'scanning', 'none of the above', 2),
(66, 12, 'which of the following is input device', 'speaker', 'printer', 'plotter', 'scanner', 4),
(67, 12, '________is colled the brain of computer', 'mouse', 'keyboard', 'cpu', 'memory', 3),
(68, 12, 'the development of first generation computer is', '1955-1965', '1965-1975', '1945-1954', 'none', 3),
(69, 12, 'all arithmetic and logical processing is done in', 'ALU', 'CU', 'CPU', 'none of the above', 3),
(70, 12, 'the delete the character right side of the cursor which key is used', 'inst', 'del', 'backspace', 'home', 2),
(71, 12, 'to deleter the character towards left side is', 'backspace', 'del', 'inst', 'home', 1),
(72, 12, 'in keyboard the function of which type keys change according the software', 'alphanumeric key', 'numeric key pad', 'function key', 'none of the above', 2),
(73, 12, 'to enter the number a special key slot is given on the keyboard which is', 'alphanumeric number', 'numeric key pad', 'function key', 'none of the above', 2),
(74, 12, 'on numeric key pad the keyu present are', '0 to 9 numbers', '+/*characters', 'arrow key', 'all of the above', 4),
(75, 12, 'to move the cursor beginning of the which key is used', 'end', 'home', 'pgup', 'pgdn', 2),
(76, 12, 'to move the cursor end of the which key is used', 'end', 'home', 'pgup', 'pgdn', 1),
(77, 12, 'the touchable part of computer is called as', 'hardware', 'software', 'programe', 'none', 1),
(78, 12, 'if caps lock key is on then', 'small letters are printed', 'the lowercase letter are printed', 'capital letters print', 'none of the above', 3),
(79, 12, '________are equivalent to 1 mb', '1022 kb', '1024 kb', '1024 byte', '1000 gb', 2),
(80, 13, 'the combination key for command in ms-word is', 'ctrl+f', 'ctrl+f3', 'ctrl+s', 'none', 1),
(81, 13, 'while editing document in ms-word the colour of the selected text can be changed by', 'format font', 'format text', 'format paragraph', 'none of the above', 1),
(82, 13, 'which keystroke is used to move end of document quickly', 'end', 'pgdn', 'ctrl+pgdn', 'ctrl+end', 4),
(83, 13, 'from the following option does not present in the picture option of insert menu', 'auto shpe', 'clip art', 'from file', 'object', 4),
(84, 13, 'in ms-word to appear full form abberiatin automatically we can use', 'autotext', 'auto correct', 'comments', 'drop cap', 1),
(85, 13, 'to appear the same information at the top or bottom of each page we use', 'headers & footer', 'hyperlink', 'field', 'none', 1),
(86, 13, 'which option is not present under tool menu', 'mail merge', 'auto text', 'language', 'drop cap', 4),
(87, 13, 'to convert "the computer" in to "THE COMPUTER" which option is used', 'title case', 'toggle case', 'upper case', 'all caps', 3),
(88, 13, 'which is the shortcut key to replace the text', 'ctrl+r', 'ctrl+h', 'ctrl+d', 'ctrl+e', 2),
(89, 13, 'which sortcut key is used to redo action?', 'ctrl+r', 'ctrl+y', 'ctrl+e', 'ctrl+u', 2),
(90, 13, 'to change the size of document page using', 'file properties', 'file page setup', 'tools option', 'format paragraph', 2),
(91, 13, 'to set the shading for the paragrph in ms-word chose', 'insert shading', 'format border & shading', 'view shading', 'all the above', 2),
(92, 13, 'bold,italic,underline are the part of_________toolbar', 'formating', 'standerd', 'drawing', 'central', 1),
(93, 13, 'the list in bottom of the file menu', 'display last foure file you use', 'display all opened files', 'allow to close file', 'none of the above', 1),
(94, 13, 'the date and time command', 'inaert the date & time you specify', 'insert current system date & time', 'inmsert last updated date & time', 'none of the above', 2),
(95, 13, 'if you want to copy a selection of text,which button do you click?', 'move', 'copy', 'duplicate', 'cut', 2),
(96, 13, 'which of the follwing is not option of edit menu', 'cut', 'copy', 'page setup', 'paste', 3),
(97, 13, 'alignment buttons are available on______________', 'ststus bar', 'for mating toolbar', 'standerd toolbar', 'none of these', 2),
(98, 13, 'when microsoft word gets loaded the opening screen display a document named', 'document1', 'document', 'doc1', 'no document name', 1),
(99, 13, 'the document can be zoomed maximum up to', '100%', '150%', '200%', '500%', 4),
(100, 13, 'to delete the selected sentence we can press the following press', 'del', 'backspace', 'both a&b', 'none of the above', 3),
(101, 13, 'to start a new line', 'enter', 'shift+enter', 'ctrl+enter', 'none of these', 1),
(102, 13, 'Spelling check is not possible in ___________________', 'Normal View', 'Out Line View', 'Print Lay Out View', 'None of these', 4),
(103, 13, 'Word Text can be made italic by____________________', 'Ctrl+I', 'Ctrl+B', 'Ctrl+U', 'None of the above', 1),
(104, 13, 'By Default Word Format your text as', '14 Point Times New Roman', '12 Point Times New Roman', '11 point Times New Roman', 'None of the above', 2),
(105, 14, 'Which city is known as The City of Palaces?', 'Kolkatta', 'Jerusalem', 'Mumbai', 'Udaipur', 1),
(106, 14, 'The Gateway of India is ?', 'Delhi', 'Kolkatta', 'Mumbai', 'Jammu', 3),
(107, 14, 'Which city is known as Pink City?', 'Hyderabad', 'Jaipur', 'Bangalore', 'Patna', 2),
(108, 14, 'Which is the city of Golden Temple?', 'Amritsar', 'Banaras', 'Chennai', 'Delhi', 1),
(109, 14, 'The Land of Lilies ?', 'Finland', 'Japan', 'USA', 'Canada', 4),
(110, 14, 'The symbol dove signifies ?', 'Strength', 'Dignity', 'Peace', 'Distress', 3),
(113, 14, 'How many players are there on each side in a baseball match', '7', '9', '5', '11', 2),
(114, 14, 'Which one of seven wonders of the world is in India', 'Leaning Tower', 'Eiffel Tower', 'TajMahal', 'Colosseum', 3),
(115, 14, 'Who started the ancient Olympic Games', 'the Greeks', 'the Egyptians', 'the Romans', 'the Aryans', 1),
(116, 14, 'The first Indian in Space was?', 'Vishnu Bhagvat', 'Rakesh Sharma', 'Kalpana Chawla', 'Juhi Chawla', 2),
(117, 14, 'After how many years gap is the Cricket World Cup held?', '3', '4', '5', '6', 2),
(119, 14, 'The slogan Piyo Sar Utha ke is associated with which company?', 'Pepsi', 'Mirinda', 'Thums Up', 'Coca-Cola', 4),
(120, 14, 'Which of these is a renewable source of energy?', 'sunlight', 'petrol', 'coal', 'diesel', 1),
(121, 14, 'Biogas consists mainly of ?', 'carbon monoxide', 'methane', 'chlorine', 'nitrogen', 2),
(122, 14, 'Deafness can be caused by ?', 'water pollution', 'air pollution', 'noise pollution', 'soil pollution', 3),
(123, 14, 'Which animal is the logo of WWF?', 'bear', 'giant panda', 'eagle', 'tiger', 2),
(124, 14, 'Acoustics deals with ?', 'sound', 'light', 'insects', 'air', 1),
(125, 14, 'Fatehpur Sikri was built by ?', 'Aurungzeb', 'Akbar', 'Shah Jahan', 'Jahengir', 2),
(126, 14, 'Which is the largest ocean in the world?', 'Atlantic', 'Pacific', 'Indian', 'Arctic', 2),
(127, 14, 'The sea-route to India was discovered in?', '1598', '1558', '1498', '1458', 3),
(128, 14, 'When is U.N. Day celebrated?', '24 Oct', '23 Oct', '24 Sep', '23 Nov', 1),
(129, 14, 'Which of the following countries celebrates Christmas festival in the summer season?', 'Canada', 'Britian', 'Australia', 'Zimbabwe', 3),
(131, 15, 'How do u write "Hello world" in PHP?', 'echo "Hello world";', 'document.write("Hello world");', '"Hello world";', 'printf("Hello world");', 1),
(130, 15, 'what does PHP stand for?', 'personal hypertext  processor', 'private home page', 'personal home page', 'PHP:Hypertext preprocessor', 4),
(1, 15, 'All variable in PHP start with which symbol?', '!', '$', '&', '#', 2),
(2, 15, 'what is the correct way to end a PHP  statement?', '</php>', '.', ';', 'new line', 3),
(3, 15, 'The PHP syntax is most similar to?', 'VB script', 'Java script', 'Perl ', 'c#', 2),
(4, 15, 'how do u get information from a form that is submitted using the "get" method?', 'Request.Form;', '$_GET[ ];', 'Request.QueryString;', '$_POST[ ];', 2),
(8, 16, 'What does SQL stand for?', 'Structured Question Language', 'Strong Question Language', 'Structured Query Language', 'String Query Language', 3),
(5, 15, 'What is the correct way to create a function in PHP?', 'create myFunction()', 'function myFunction()', 'new_function myFunction()', 'load_function myFunction()', 2),
(6, 15, 'What is the correct way to add 1 to the $count variable?', 'count++;', '$count =+1', '++count', '$count++;', 4),
(7, 15, 'Which one of these variables has an illegal name?', '$my_Var', '$my-Var', '$myVar', '$my&Var', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('raj', 9, '0000-00-00', 1),
('raj', 11, '0000-00-00', 5),
('raj', 11, '0000-00-00', 6),
('ashish', 11, '0000-00-00', 12),
('raj', 12, '0000-00-00', 13),
('raj', 14, '0000-00-00', 8),
('raj', 8, '0000-00-00', 1),
('raj', 12, '0000-00-00', 7),
('amit', 8, '0000-00-00', 1),
('amit', 8, '0000-00-00', 1),
('amit', 8, '0000-00-00', 2),
('amit', 8, '0000-00-00', 3),
('amit', 15, '0000-00-00', 0),
('amit', 15, '0000-00-00', 1),
('amit', 15, '0000-00-00', 0),
('amit', 15, '0000-00-00', 1),
('amit', 15, '0000-00-00', 3),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 11),
('amit', 15, '0000-00-00', 10),
('amit', 15, '0000-00-00', 9),
('amit', 15, '0000-00-00', 8),
('', 16, '0000-00-00', 0),
('amit', 16, '0000-00-00', 1),
('amit', 12, '0000-00-00', 9),
('', 12, '0000-00-00', 2),
('amit', 16, '0000-00-00', 1),
('amit', 8, '0000-00-00', 3),
('amit', 8, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB'),
(5, 'Computer Fundamental'),
(7, 'C Language'),
(8, 'Ms Office'),
(9, 'General Knowledge'),
(10, 'php'),
(11, 'SQL'),
(12, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(11, 7, 'Objactive Test', '20'),
(12, 5, 'General Question', '20'),
(13, 8, 'Ms Office Question', '25'),
(14, 9, 'Knowledge Question', '22'),
(15, 10, 'php basic', '20'),
(16, 11, 'basic SQL', '10'),
(17, 12, 'basic java', '10');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S''nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com'),
(15, 'amit', 'a123456', 'amit', 'xyz', 'snagar', 2147483647, 'amitrojasara@gmail.com'),
(16, 'sachin', 'welcome', 'sachin', 'kjjskjsdjsdjsdjakskjdskdjskjd', 'mumbai', 2147483647, 'sachin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which city is known as The City of Palaces?', 'Kolkatta', 'Jerusalem', 'Mumbai', 'Udaipur', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The Gateway of India is ?', 'Delhi', 'Kolkatta', 'Mumbai', 'Jammu', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which city is known as Pink City?', 'Hyderabad', 'Jaipur', 'Bangalore', 'Patna', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which is the city of Golden Temple?', 'Amritsar', 'Banaras', 'Chennai', 'Delhi', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The Land of Lilies ?', 'Finland', 'Japan', 'USA', 'Canada', 4, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The symbol dove signifies ?', 'Strength', 'Dignity', 'Peace', 'Distress', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'How many players are there on each side in a baseball match', '7', '9', '5', '11', 2, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which one of seven wonders of the world is in India', 'Leaning Tower', 'Eiffel Tower', 'TajMahal', 'Colosseum', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Who started the ancient Olympic Games', 'the Greeks', 'the Egyptians', 'the Romans', 'the Aryans', 1, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The first Indian in Space was?', 'Vishnu Bhagvat', 'Rakesh Sharma', 'Kalpana Chawla', 'Juhi Chawla', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'After how many years gap is the Cricket World Cup held?', '3', '4', '5', '6', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The slogan Piyo Sar Utha ke is associated with which company?', 'Pepsi', 'Mirinda', 'Thums Up', 'Coca-Cola', 4, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which of these is a renewable source of energy?', 'sunlight', 'petrol', 'coal', 'diesel', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Biogas consists mainly of ?', 'carbon monoxide', 'methane', 'chlorine', 'nitrogen', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Deafness can be caused by ?', 'water pollution', 'air pollution', 'noise pollution', 'soil pollution', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which animal is the logo of WWF?', 'bear', 'giant panda', 'eagle', 'tiger', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Acoustics deals with ?', 'sound', 'light', 'insects', 'air', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Fatehpur Sikri was built by ?', 'Aurungzeb', 'Akbar', 'Shah Jahan', 'Jahengir', 2, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which is the largest ocean in the world?', 'Atlantic', 'Pacific', 'Indian', 'Arctic', 2, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The sea-route to India was discovered in?', '1598', '1558', '1498', '1458', 3, 3),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'When is U.N. Day celebrated?', '24 Oct', '23 Oct', '24 Sep', '23 Nov', 1, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which of the following countries celebrates Christmas festival in the summer season?', 'Canada', 'Britian', 'Australia', 'Zimbabwe', 3, 1),
('2ef2bbec5a7a11bd9f39428d51474cae', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 3),
('2ef2bbec5a7a11bd9f39428d51474cae', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'Which city is known as The City of Palaces?', 'Kolkatta', 'Jerusalem', 'Mumbai', 'Udaipur', 1, 2),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'The Gateway of India is ?', 'Delhi', 'Kolkatta', 'Mumbai', 'Jammu', 3, 2),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'Which city is known as Pink City?', 'Hyderabad', 'Jaipur', 'Bangalore', 'Patna', 2, 1),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'Which is the city of Golden Temple?', 'Amritsar', 'Banaras', 'Chennai', 'Delhi', 1, 3),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'The Land of Lilies ?', 'Finland', 'Japan', 'USA', 'Canada', 4, 3),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'The symbol dove signifies ?', 'Strength', 'Dignity', 'Peace', 'Distress', 3, 1),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'How many players are there on each side in a baseball match', '7', '9', '5', '11', 2, 3),
('a5fb8d913086cc708d27f5c6fe77685a', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2),
('a5fb8d913086cc708d27f5c6fe77685a', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 4),
('a5fb8d913086cc708d27f5c6fe77685a', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2),
('d9b2f430a181d2f8f84528adbbfe6da7', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2),
('d9b2f430a181d2f8f84528adbbfe6da7', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2),
('d9b2f430a181d2f8f84528adbbfe6da7', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'if caps lock key is on then', 'small letters are printed', 'the lowercase letter are printed', 'capital letters print', 'none of the above', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, '________are equivalent to 1 mb', '1022 kb', '1024 kb', '1024 byte', '1000 gb', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to move the cursor beginning of the which key is used', 'end', 'home', 'pgup', 'pgdn', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to move the cursor end of the which key is used', 'end', 'home', 'pgup', 'pgdn', 1, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'the touchable part of computer is called as', 'hardware', 'software', 'programe', 'none', 1, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to enter the number a special key slot is given on the keyboard which is', 'alphanumeric number', 'numeric key pad', 'function key', 'none of the above', 2, 1),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'on numeric key pad the keyu present are', '0 to 9 numbers', '+/*characters', 'arrow key', 'all of the above', 4, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'the delete the character right side of the cursor which key is used', 'inst', 'del', 'backspace', 'home', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to deleter the character towards left side is', 'backspace', 'del', 'inst', 'home', 1, 4),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'in keyboard the function of which type keys change according the software', 'alphanumeric key', 'numeric key pad', 'function key', 'none of the above', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'all arithmetic and logical processing is done in', 'ALU', 'CU', 'CPU', 'none of the above', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'which of the following is input device', 'speaker', 'printer', 'plotter', 'scanner', 4, 4),
('0f38cfc0215a52cb3897e828dc3f450d', 12, '________is colled the brain of computer', 'mouse', 'keyboard', 'cpu', 'memory', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'the development of first generation computer is', '1955-1965', '1965-1975', '1945-1954', 'none', 3, 1),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'mouse is the type of device', 'input', 'pointing', 'scanning', 'none of the above', 2, 1),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'keybord is the type of device', 'input', 'pointing', 'output', 'sound', 1, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'floppy disk is the type of memory', 'magnatic & secondarymain memory', 'main memory', 'o primary', 'none of the above', 1, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'Personal Computer are the type of computer', 'super computer', 'mini computer', 'micro computer', 'mainframe computer', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'RAM Stands for', 'Random Access Memory', 'Random accelerated Memory', 'Random Access Machenism', 'Random Accurace Mantan', 1, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'PC Stands for', 'pocket computer', 'personal computer', 'phisycal computer', 'personal card', 2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;--
-- Database: `gradingonline`
--
CREATE DATABASE IF NOT EXISTS `gradingonline` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gradingonline`;
--
-- Database: `leave`
--
CREATE DATABASE IF NOT EXISTS `leave` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `leave`;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `empid` int(7) NOT NULL,
  `name` text NOT NULL,
  `mobile` float NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`empid`, `name`, `mobile`, `email`, `password`) VALUES
(123, 'senthur pandi', 7894560000, 'dd@dd.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `leavereq`
--

CREATE TABLE `leavereq` (
  `id` int(255) NOT NULL,
  `studentid` varchar(20) NOT NULL,
  `studentname` varchar(30) NOT NULL,
  `leavetype` varchar(20) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `reason` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `leavestatus` varchar(20) NOT NULL,
  `parentstatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavereq`
--

INSERT INTO `leavereq` (`id`, `studentid`, `studentname`, `leavetype`, `fromdate`, `todate`, `reason`, `address`, `leavestatus`, `parentstatus`) VALUES
(1, '14bce0160', 'ramkumar', 'Hometown', '2017-03-31', '2017-04-06', 'aa	', '\r\naa', 'Declined', 'Applied'),
(2, '14bce0160', 'ramkumar', 'Emergency', '2017-03-09', '2017-03-24', 'dd	', '\r\ndd', 'Approved', 'Applied'),
(3, '14bce0160', 'ramkumar', 'Examinations(like.Ga', '2017-02-28', '2017-03-16', '	dd', '\r\ndd', 'Approved', 'Ack'),
(4, '14bce0160', 'ramkumar', 'Off camp interview', '2017-03-08', '2017-03-01', '	aa', '\r\nss', 'Approved', 'Applied'),
(5, '14bce0160', 'ramkumar', 'Off camp interview', '2017-03-16', '2017-03-31', '	qq', '\r\naa', 'Applied', 'Denied'),
(6, '14bce0160', 'ramkumar', 'Hometown', '2017-03-14', '2017-03-21', '	ss', '\r\naa', 'Declined', 'Applied'),
(7, '14bce0160', 'ramkumar', 'Sem Vacation', '2017-03-21', '2017-03-30', 'ww	', 'ww\r\n', 'Approved', 'Ack');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `studentid` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`studentid`, `parentname`, `mobile`, `email`, `password`) VALUES
('14bce0160', 'mayil', '9848527385', 'zz', 'zz');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regno` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `age` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regno`, `name`, `password`, `age`) VALUES
('143', 'rachel', '143', 20),
('14bce0160', 'ramkumar', 'yoyo', 20),
('156', 'phani', '156', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `leavereq`
--
ALTER TABLE `leavereq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leavereq`
--
ALTER TABLE `leavereq`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `netbanking`
--
CREATE DATABASE IF NOT EXISTS `netbanking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `netbanking`;

-- --------------------------------------------------------

--
-- Table structure for table `accountmaster`
--

CREATE TABLE `accountmaster` (
  `accounttype` varchar(25) NOT NULL,
  `prefix` varchar(11) NOT NULL,
  `minbalance` double(12,2) NOT NULL,
  `interest` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountmaster`
--

INSERT INTO `accountmaster` (`accounttype`, `prefix`, `minbalance`, `interest`) VALUES
('current', 'fd', 6000.00, 600.00),
('dfd', 'gdf', 45.00, 7546.00),
('salary account', 'SAL', 0.00, 10.00),
('saving', 'sb', 4000.00, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accno` varchar(25) NOT NULL,
  `customerid` int(10) NOT NULL,
  `accstatus` varchar(25) NOT NULL,
  `primaryacc` varchar(10) NOT NULL,
  `accopendate` date NOT NULL,
  `accounttype` varchar(25) NOT NULL,
  `accountbalance` double(10,2) NOT NULL,
  `unclearbalance` double(10,2) NOT NULL,
  `accuredinterest` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accno`, `customerid`, `accstatus`, `primaryacc`, `accopendate`, `accounttype`, `accountbalance`, `unclearbalance`, `accuredinterest`) VALUES
('4666', 98683, 'active', '40000', '2013-02-11', 'sv', 100000.00, 100.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `ifsccode` varchar(25) NOT NULL,
  `branchname` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `branchaddress` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ifsccode`, `branchname`, `city`, `branchaddress`, `state`, `country`) VALUES
('5249898', 'Mangalore', 'gfhdh', 'hdjjj', 'PAKISTAN', 'MAHARASTRA'),
('KARB0000404', 'karkala', 'karkala', 'NEAR BUS STAND,KARLA COMPLEX,1ST FLOOR,PB 19,KARKALA 574104,UDUPI DIST', 'KARNATAKA', 'india'),
('tyg', 'yfy', 'fy', 'yfg', 'PAKISTAN', 'MAHARASTRA');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) NOT NULL,
  `ifsccode` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `accpassword` varchar(50) NOT NULL,
  `transpasword` varchar(50) NOT NULL,
  `accstatus` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `accopendate` date NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `ifsccode`, `firstname`, `lastname`, `loginid`, `accpassword`, `transpasword`, `accstatus`, `city`, `state`, `country`, `accopendate`, `lastlogin`) VALUES
(98680, 'KARB0000404', 'sadf', 'werwe', '23432', 'fgdfg', 'werwe', 'ACTIVE', '23423', 'KARNATAKA', 'INDIA', '2013-02-02', '2017-01-16 07:48:15'),
(98682, '5249898', 'Raj', 'kiran', '123456', '987654', '123456', 'ACTIVE', 'mangaloree', 'KARNATAKA', 'INDIA', '2013-02-02', '0000-00-00 00:00:00'),
(98683, '5249898', 'john', 'mark', 'cust', 'cust', 'cust', 'ACTIVE', 'mangalore', 'KARNATAKA', 'INDIA', '2013-02-09', '2017-01-16 08:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` int(10) NOT NULL,
  `employee_name` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contactno` varchar(30) NOT NULL,
  `createdat` date NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `employee_name`, `loginid`, `password`, `emailid`, `contactno`, `createdat`, `last_login`) VALUES
(313786, 'soudhabanu', '445545', '125487', 'soudha_ban@52yahoo.com', '9535543313', '2012-12-15', '2012-12-03 11:27:00'),
(313787, 'mahesh', 'mahesh', 'qwert', 'mahesh@gmail.com', '98478872783', '0000-00-00', '0000-00-00 00:00:00'),
(313788, 'jyothi', '3535355', '3636', 'jyothi@yahoo.com', '95425422424', '2013-01-02', '0000-00-00 00:00:00'),
(313791, 'admin', 'admin', 'admin', 'admin', 'admin', '2013-01-12', '2013-01-12 00:00:00'),
(313798, 'raj', 'rajkiran', '123456', 'abc@gmail.com', '9874563210', '2013-02-02', '0000-00-00 00:00:00'),
(313799, 'peter king', 'emp', 'emp', 'emp@gmail.com', '987456321', '2013-02-09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loanid` int(10) NOT NULL,
  `loantype` varchar(25) NOT NULL,
  `loanamt` varchar(25) NOT NULL,
  `period` varchar(25) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `startdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loanid`, `loantype`, `loanamt`, `period`, `interest`, `startdate`) VALUES
(2147483647, 'homeloan', '300000', 'monthly', 63.09, '2012-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `loanpayment`
--

CREATE TABLE `loanpayment` (
  `paymentid` int(10) NOT NULL,
  `date` date NOT NULL,
  `paidamt` float(10,2) NOT NULL,
  `principleamt` float(10,2) NOT NULL,
  `interestamt` float(10,2) NOT NULL,
  `balance` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanpayment`
--

INSERT INTO `loanpayment` (`paymentid`, `date`, `paidamt`, `principleamt`, `interestamt`, `balance`) VALUES
(2147483647, '2012-01-03', 50000.00, 25000.00, 2500.50, 250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `loantype`
--

CREATE TABLE `loantype` (
  `loantype` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `maximumamt` float(10,2) NOT NULL,
  `minimumamt` float(10,2) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loantype`
--

INSERT INTO `loantype` (`loantype`, `prefix`, `maximumamt`, `minimumamt`, `interest`, `status`) VALUES
('current', 'sb', 70000.00, 50000.00, 3000.00, 'active'),
('homeloan', 'hl', 1000000.00, 50000.00, 65.09, 'active'),
('sb', 'fd', 7000.00, 5000.00, 400.00, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `mailid` int(10) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `mdatetime` datetime NOT NULL,
  `senderid` varchar(25) NOT NULL,
  `reciverid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mailid`, `subject`, `message`, `mdatetime`, `senderid`, `reciverid`) VALUES
(10, 'sdfgfdg', 'dfgfdg', '2013-01-19 05:05:58', '0', 'admin'),
(12, 'fdgdfsgsd', 'fgdsfgdsfg', '2013-02-02 05:32:29', 'admin', '98682'),
(13, 'hello this is test pag', 'this is test page to all emp', '2013-02-02 05:33:00', 'admin', '98682'),
(14, 'good morning raj kiran', 'this is welcome page', '2013-02-02 05:36:16', 'admin', '98682');

-- --------------------------------------------------------

--
-- Table structure for table `registerdpayee`
--

CREATE TABLE `registerdpayee` (
  `slno` int(11) NOT NULL,
  `payeename` varchar(25) NOT NULL,
  `accountnumber` varchar(25) NOT NULL,
  `accounttype` varchar(25) NOT NULL,
  `bankname` varchar(25) NOT NULL,
  `ifsccode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerdpayee`
--

INSERT INTO `registerdpayee` (`slno`, `payeename`, `accountnumber`, `accounttype`, `bankname`, `ifsccode`) VALUES
(101, 'arpitha', '26548', 'saving', 'canarabank', 'KARB0000404');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionid` int(10) NOT NULL,
  `transactiondate` date NOT NULL,
  `paymentdate` datetime NOT NULL,
  `payeeid` int(25) NOT NULL,
  `receiveid` int(10) NOT NULL,
  `debitac` varchar(25) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `paymentstat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionid`, `transactiondate`, `paymentdate`, `payeeid`, `receiveid`, `debitac`, `amount`, `paymentstat`) VALUES
(2147483647, '2012-12-13', '2012-12-03 04:21:10', 111232154, 0, '150000', 100000.00, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountmaster`
--
ALTER TABLE `accountmaster`
  ADD PRIMARY KEY (`accounttype`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accno`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ifsccode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loanid`);

--
-- Indexes for table `loanpayment`
--
ALTER TABLE `loanpayment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `loantype`
--
ALTER TABLE `loantype`
  ADD UNIQUE KEY `loantype` (`loantype`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mailid`);

--
-- Indexes for table `registerdpayee`
--
ALTER TABLE `registerdpayee`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98684;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313800;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loanid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `loanpayment`
--
ALTER TABLE `loanpayment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `mailid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `registerdpayee`
--
ALTER TABLE `registerdpayee`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;--
-- Database: `pay`
--
CREATE DATABASE IF NOT EXISTS `pay` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pay`;
--
-- Database: `photoupload`
--
CREATE DATABASE IF NOT EXISTS `photoupload` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `photoupload`;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `location`, `caption`) VALUES
(4, 'photos/220px-Dark_Knight.jpg', 'batman'),
(3, 'photos/the_joker_cartoon.jpg', 'caption'),
(5, 'photos/kajol-1366x768.jpg', 'kajal'),
(6, 'photos/ayesha-1024x768.jpg', 'mm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'student', '{"quick_or_custom":"quick","what":"sql","db_select[]":["exam","gradingonline","leave","netbanking","pay","photoupload","phpmyadmin","quiz","student","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"leave","table":"leavereq"},{"db":"leave","table":"faculty"},{"db":"leave","table":"parent"},{"db":"quiz","table":"mst_user"},{"db":"leave","table":"student"},{"db":"student","table":"student"},{"db":"student","table":"Student"},{"db":"quiz","table":"mst_admin"},{"db":"mysql","table":"gtid_slave_pos"},{"db":"photoupload","table":"photos"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-01-15 17:43:30', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`loginid`, `pass`) VALUES
('pgdca', 'pgdca');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2),
(17, 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3),
(18, 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1),
(19, 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4),
(20, 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4),
(22, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(23, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(24, 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will receive the focus', 'It determines if the access key swquence can be used', 1),
(25, 10, 'You application creates an instance of a form. What is the first event that will be triggered in the from?', 'Load', 'GotFocus', 'Instance', 'Initialize', 4),
(26, 10, 'Which of the following is Hungarian notation for a menu?', 'Menu', 'Men', 'mnu', 'MN', 3),
(27, 10, 'You are ready to run your program to see if it works.Which key on your keyboard will start the program?', 'F2', 'F3', 'F4', 'F5', 4),
(28, 10, 'Which of the following snippets of code will unload a form named frmFo0rm from memory?', 'Unload Form', 'Unload This', 'Unload Me', 'Unload', 3),
(29, 10, 'You want the text in text box named txtMyText to read My Text.In which property will you place this string?', 'Caption', 'Text', 'String', 'None of the above', 2),
(30, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0),
(31, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0),
('dd', 11, '0000-00-00', 0),
('dd', 11, '0000-00-00', 0),
('dd', 9, '0000-00-00', 2),
('dd', 8, '0000-00-00', 0),
('ff', 8, '0000-00-00', 2),
('raj', 8, '0000-00-00', 1),
('', 8, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB'),
(2, 'Oracle'),
(3, 'Java'),
(4, 'PHP'),
(5, 'Computer Fundamental'),
(6, 'Networking'),
(7, 'mysql');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(11, 7, 'function', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S''nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com'),
(15, 'dd', 'dd', 'dd', 'dd', 'dd', 77, 'dd@gmail.com'),
(16, 'ff', 'ff', 'ss', 'ss', 'ss', 464, 'ss@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('rfgdk8622lsbtvr2q00d5hoc54', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 3),
('rfgdk8622lsbtvr2q00d5hoc54', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 4),
('rfgdk8622lsbtvr2q00d5hoc54', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('rfgdk8622lsbtvr2q00d5hoc54', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 2),
('rfgdk8622lsbtvr2q00d5hoc54', 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will r', 'It determines if the access key swquence can be us', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
