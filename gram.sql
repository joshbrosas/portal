-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2014 at 01:11 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADMIN_ID` varchar(35) NOT NULL,
  `LASTNAME` varchar(35) NOT NULL,
  `FIRSTNAME` varchar(35) NOT NULL,
  `MIDDLE_INITIAL` varchar(35) NOT NULL,
  `EMAIL` varchar(35) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`ID`, `ADMIN_ID`, `LASTNAME`, `FIRSTNAME`, `MIDDLE_INITIAL`, `EMAIL`, `PASSWORD`) VALUES
(1, 'STI140', 'Brosas', 'Joshua', 'R', 'jb@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE IF NOT EXISTS `course_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) NOT NULL,
  `course` varchar(80) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`ID`, `course_id`, `course`, `title`) VALUES
(1, 120, 'BSIT', 'Bachelor of Science in Information Technology'),
(3, 22, 'BSHRM', 'Bachelor of Science in Hotel Restaurant Management'),
(4, 23, 'BSCOE', 'Bachelor of Science in Computer Engineer'),
(5, 25, 'CCE', 'Computer & Consumer Electronics'),
(6, 122, 'ITP', 'Diploma in Information Technology'),
(7, 121, 'BSCS', 'Bachelor of Science in Computer Science'),
(8, 150, 'BSTM', 'Bachelor of Science in Tourism Management'),
(9, 151, 'TEM', 'Tourism & Event Management');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE IF NOT EXISTS `faculty_details` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FACULTY_ID` varchar(40) NOT NULL,
  `LASTNAME` varchar(40) NOT NULL,
  `FIRSTNAME` varchar(40) NOT NULL,
  `MIDDLEINITIAL` varchar(3) NOT NULL,
  `EMAIL` varchar(35) NOT NULL,
  `DEPARTMENT` varchar(35) NOT NULL,
  `PASSWORD` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`ID`, `FACULTY_ID`, `LASTNAME`, `FIRSTNAME`, `MIDDLEINITIAL`, `EMAIL`, `DEPARTMENT`, `PASSWORD`) VALUES
(9, 'STI122', 'Brosas', 'Joshua', 'R', 'joshbrrossas@gmail.com', 'ICT Department', '123'),
(10, 'STI121', 'Gecko', 'Becko', 'S', 'becko@gmail.com', 'TH Department', '123');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject`
--

CREATE TABLE IF NOT EXISTS `faculty_subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FACULTY_ID` varchar(35) NOT NULL,
  `SUBJECT_ID` varchar(35) NOT NULL,
  `SUBJECT_CODE` varchar(35) NOT NULL,
  `SUBJECT_TITLE` varchar(35) NOT NULL,
  `YEAR_LEVEL` varchar(35) NOT NULL,
  `UNIT` varchar(35) NOT NULL,
  `DEPARTMENT` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `faculty_subject`
--

INSERT INTO `faculty_subject` (`ID`, `FACULTY_ID`, `SUBJECT_ID`, `SUBJECT_CODE`, `SUBJECT_TITLE`, `YEAR_LEVEL`, `UNIT`, `DEPARTMENT`) VALUES
(3, 'STI122', 'STISUBJ0015', 'COMPFUND', 'Computer Fundamentals ', '1st', '3', 'ICT Department'),
(4, 'STI122', 'STISUBJ0016', 'COPRO1', 'Computer Programming 1', '1st', '4', 'ICT Department'),
(5, 'STI121', 'STISUBJ00103', 'BANCATE', 'Banquet, Function And Catering Proc', '2nd', '3', 'TH Department'),
(6, 'STI121', 'STISUBJ00101', 'HRMELE2', 'Hrm Elective 2', '2nd', '3', 'TH Department');

-- --------------------------------------------------------

--
-- Table structure for table `grades_details`
--

CREATE TABLE IF NOT EXISTS `grades_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` varchar(35) NOT NULL,
  `SUBJECT` varchar(35) NOT NULL,
  `EXAM_PERIOD` varchar(35) NOT NULL,
  `GRADE` varchar(35) NOT NULL,
  `GEN_AVE` varchar(35) NOT NULL,
  `REMARKS` varchar(35) NOT NULL,
  `COMMENTS` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` varchar(35) NOT NULL,
  `LASTNAME` varchar(35) NOT NULL,
  `FIRSTNAME` varchar(35) NOT NULL,
  `MIDDLEINITIAL` varchar(35) NOT NULL,
  `COURSE` varchar(35) NOT NULL,
  `YEAR` varchar(35) NOT NULL,
  `SECTION` varchar(100) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `EMAIL` varchar(35) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL,
  `Status` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`ID`, `STUDENT_ID`, `LASTNAME`, `FIRSTNAME`, `MIDDLEINITIAL`, `COURSE`, `YEAR`, `SECTION`, `Department`, `EMAIL`, `PASSWORD`, `Status`) VALUES
(1, 'STI001', 'Brosas', 'Joshua', 'R', 'TEM', '1st', 'BSIT1A', 'ICT Department', 'joshbrosas@gmail.com', '123', 'Regular'),
(2, 'STI002', 'Faired', 'Kenneth', 'S', 'BSCOE', '3rd', 'BSIT3', 'ENG Department', 'kennethfaried@gmail.com', '123', 'Irregular'),
(3, 'STI003', 'Paz', 'Ash Norman', 'Q', 'TEM', '2nd', 'TEM2A', 'TH Department', 'ash@gmail.com', '123', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE IF NOT EXISTS `student_subject` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` varchar(35) NOT NULL,
  `LASTNAME` varchar(35) NOT NULL,
  `FIRSTNAME` varchar(35) NOT NULL,
  `MIDDLEINITIAL` varchar(5) NOT NULL,
  `COURSE` varchar(30) NOT NULL,
  `YEAR` varchar(30) NOT NULL,
  `SECTION` varchar(30) NOT NULL,
  `STATUS` varchar(35) NOT NULL,
  `SUBJECT` varchar(30) NOT NULL,
  `FACULTY` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject_details`
--

CREATE TABLE IF NOT EXISTS `subject_details` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `SUBJECT_ID` varchar(35) NOT NULL,
  `SUBJECT_CODE` varchar(50) NOT NULL,
  `SUBJECT_TITLE` varchar(80) NOT NULL,
  `YEAR_LEVEL` varchar(35) NOT NULL,
  `UNIT` bigint(20) NOT NULL,
  `TERM` varchar(35) NOT NULL,
  `DEPARTMENT` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `subject_details`
--

INSERT INTO `subject_details` (`ID`, `SUBJECT_ID`, `SUBJECT_CODE`, `SUBJECT_TITLE`, `YEAR_LEVEL`, `UNIT`, `TERM`, `DEPARTMENT`) VALUES
(1, 'STISUBJ001', 'COMART1', 'Communication Arts 1', '1st', 3, '1st Semester', 'GE Department'),
(2, 'STISUBJ002', 'COMART2', 'Communication Arts 2', '1st', 3, '2nd Semester', 'GE Department'),
(3, 'STISUBJ003', 'COMART3', 'Communication Arts 3', '2nd', 3, '1st Semester', 'GE Department'),
(4, 'STISUBJ004', 'COMART4', 'Communication Arts 4', '2nd', 3, '2nd Semester', 'GE Department'),
(5, 'STISUBJ005', 'NSTP1', 'National Service Training Program 1', '1st', 3, '1st Semester', 'GE Department'),
(6, 'STISUBJ006', 'NSTP2', 'National Service Training Program 2', '1st', 3, '2nd Semester', 'GE Department'),
(7, 'STISUBJ007', 'PHYEDU1', 'Physical Education 1', '1st', 2, '1st Semester', 'GE Department'),
(8, 'STISUBJ008', 'PHYEDU2', 'Physical Education 2', '1st', 2, '2nd Semester', 'GE Department'),
(9, 'STISUBJ009', 'COLALGE', 'College Algebra', '1st', 3, '1st Semester', 'GE Department'),
(10, 'STISUBJ009', 'PHYEDU3', 'Physical Education 3', '2nd', 2, '1st Semester', 'GE Department'),
(11, 'STISUBJ0010', 'FILIP01', 'Komunikasyon Sa Akademikong Filipino ', '1st', 3, '1st Semester', 'GE Department'),
(12, 'STISUBJ0011', 'PHYEDU4', 'Physical Education 4', '2nd', 2, '2nd Semester', 'GE Department'),
(13, 'STISUBJ0012', 'FILIP02', 'Pagbasa At Pagsulat Tungo Sa Pananaliksik ', '1st', 3, '2nd Semester', 'GE Department'),
(14, 'STISUBJ0013', 'ALGEBRA', 'Algebra', '1st', 3, '1st Semester', 'GE Department'),
(15, 'STISUBJ0015', 'COMPFUND', 'Computer Fundamentals ', '1st', 3, '1st Semester', 'GE Department'),
(16, 'STISUBJ0016', 'COPRO1', 'Computer Programming 1', '1st', 4, '1st Semester', 'ICT Department'),
(17, 'STISUBJ0017', 'MATPLUS', 'Math Plus', '1st', 1, '1st Semester', 'GE Department'),
(18, 'STISUBJ0018', 'PROFETH', 'Professional Ethics With Values Formation', '1st', 3, '1st Semester', 'GE Department'),
(19, 'STISUBJ0019', 'COPRO2', 'Computer Programming 2', '1st', 4, '2nd Semester', 'ICT Department'),
(20, 'STISUBJ0020', 'DATSTRUC', 'Data Structures', '1st', 4, '2nd Semester', 'ICT Department'),
(21, 'STISUBJ0021', 'DISTRUC', 'Discrete Structures', '1st', 3, '2nd Semester', 'ICT Department'),
(22, 'STISUBJ0022', 'NTROART', 'Introduction Arts', '1st', 3, '2nd Semester', 'GE Department'),
(23, 'STISUBJ0023', 'TRIGONO', 'Trigonometry', '1st', 3, '2nd Semester', 'ICT Department'),
(24, 'STISUBJ0024', 'COPRO3', 'Computer Programming 3', '2nd', 4, '2nd Semester', 'ICT Department'),
(25, 'STISUBJ0025', 'LOGSIGN', 'Logic Design And Switching ', '2nd', 3, '1st Semester', 'ICT Department'),
(26, 'STISUBJ0026', 'PHILGOV ', 'Philippine History,governtment And Constitution', '2nd', 3, '1st Semester', 'GE Department'),
(27, 'STISUBJ0027', 'PHYSIC1', 'Physics 1', '2nd', 4, '1st Semester', 'GE Department'),
(28, 'STISUBJ0028', 'PROSTAT', 'Probability And Statistics ', '2nd', 3, '1st Semester', 'GE Department'),
(29, 'STISUBJ0029', 'SOCULITA', 'Social, Culture And Information Technology With Family Planning', '2nd', 3, '1st Semester', 'GE Department'),
(30, 'STISUBJ0030', 'CORLANG ', 'Computer Organization And Assembly Language', '2nd', 4, '2nd Semester', 'ICT Department'),
(31, 'STISUBJ0031', 'PHILMAN', 'Philosophy Of Man ', '2nd', 3, '2nd Semester', 'GE Department'),
(32, 'STISUBJ0032', 'PHYSIC2', 'Physics 2', '2nd', 4, '2nd Semester', 'GE Department'),
(33, 'STISUBJ0033', 'SADSIGN ', 'Systems Analysis And Design', '2nd', 3, '2nd Semester', 'ICT Department'),
(34, 'STISUBJ0034', 'THEODBS', 'Theory Of Database System', '2nd', 4, '2nd Semester', 'ICT Department'),
(35, 'STISUBJ0035', 'CSFELE1', 'Cs Free Elective 1', '3rd', 3, '1st Semester', 'ICT Department'),
(36, 'STISUBJ0036', 'CSFELE2', 'Cs Free Elective 2', '3rd', 3, '1st Semester', 'ICT Department'),
(37, 'STISUBJ0037', 'DESALGO', 'Design And Analysis Of Algorithms', '3rd', 3, '1st Semester', 'ICT Department'),
(38, 'STISUBJ0038', 'OPERSYSB', 'Operating Systems', '3rd', 4, '1st Semester', 'ICT Department'),
(39, 'STISUBJ0039', 'SOFTWEN', 'Software Engineering', '3rd', 4, '1st Semester', 'ICT Department'),
(40, 'STISUBJ0040', 'THECOMP', 'Theory Of Computation With Automata Theory', '3rd', 3, '2nd Semester', 'ICT Department'),
(41, 'STISUBJ0041', 'CALCLUS', 'Calculus', '3rd', 3, '2nd Semester', 'ICT Department'),
(42, 'STISUBJ0042', 'COMNETS', 'Computer Networks', '3rd', 4, '2nd Semester', 'ICT Department'),
(43, 'STISUBJ0043', 'CSTHES0B', 'Cs Thesis Proposal ', '3rd', 3, '2nd Semester', 'ICT Department'),
(44, 'STISUBJ0044', 'MODESIM', 'Modeling And Simulation', '3rd', 3, '2nd Semester', 'ICT Department'),
(45, 'STISUBJ0045', 'WEBPROG', 'Web Programming', '3rd', 3, '2nd Semester', 'ICT Department'),
(46, 'STISUBJ0046', 'CS-ELE1', 'Cs Elective 1', '4th', 3, '1st Semester', 'ICT Department'),
(47, 'STISUBJ0047', 'CSFELE3', 'Cs Free Elective 3', '4th', 3, '1st Semester', 'ICT Department'),
(48, 'STISUBJ0048', 'CSTHES1B', 'Cs Thesis 1', '4th', 3, '1st Semester', 'ICT Department'),
(49, 'STISUBJ0049', 'GENPSYCA', 'Psychology With Drugs,hiv/aids, And Sars Education', '4th', 3, '1st Semester', 'GE Department'),
(50, 'STISUBJ0050', 'PHILLITA', 'Philippine Literature', '4th', 3, '1st Semester', 'GE Department'),
(51, 'STISUBJ0051', 'PROLANS', 'Programming Languages ', '4th', 3, '1st Semester', 'ICT Department'),
(52, 'STISUBJ0052', 'CS-ELEC2', 'Cs Elective 2 ', '4th', 3, '2nd Semester', 'ICT Department'),
(53, 'STISUBJ0053', 'CSTHES2B', 'Cs Thesis 2', '4th', 3, '2nd Semester', 'ICT Department'),
(54, 'STISUBJ0054', 'ECOTAXA ', 'Economics With Taxation And Agrarian Reform', '4th', 3, '2nd Semester', 'GE Department'),
(55, 'STISUBJ0055', 'JPRIZAL', 'Life And Works Of Rizal', '4th', 3, '2nd Semester', 'GE Department'),
(56, 'STISUBJ0056', 'WORLLIT', 'World Literature', '4th', 3, '2nd Semester', 'GE Department'),
(57, 'STISUBJ0057', 'BASALGEB', 'Basic Algebra', '1st', 2, '1st Semester', 'GE Department'),
(58, 'STISUBJ0058', 'CONPROD', 'Computer Concepts And Productivity Tools', '1st', 3, '1st Semester', 'ICT Department'),
(59, 'STISUBJ0059', 'FUNDJAVA', 'Fundamentals Of Java', '1st', 4, '1st Semester', 'ICT Department'),
(60, 'STISUBJ0060', 'SYANADT', 'System Analysis And Design', '1st', 3, '1st Semester', 'ICT Department'),
(61, 'STISUBJ0061', 'COMSKIL1', 'Communication Skills 1', '1st', 2, '2nd Semester', 'GE Department'),
(62, 'STISUBJ0062', 'JSP-PHP', 'Javascript And Php Programming', '1st', 4, '2nd Semester', 'ICT Department'),
(63, 'STISUBJ0063', 'OOD-JAVA', 'Object-oriented Design In Java', '1st', 4, '2nd Semester', 'ICT Department'),
(64, 'STISUBJ0064', 'PROFVETH', 'Professional Values And Ethics', '1st', 2, '2nd Semester', 'GE Department'),
(65, 'STISUBJ0065', 'COMSKIL2', 'Communication Skills 2', '2nd', 2, '1st Semester', 'GE Department'),
(66, 'STISUBJ0066', 'CUSTSVC1', 'Customer Service 1', '2nd', 3, '2nd Semester', 'ICT Department'),
(67, 'STISUBJ0067', 'FUND-VB', 'Fundamentals Of Visual Basic ', '2nd', 4, '1st Semester', 'ICT Department'),
(68, 'STISUBJ0068', 'MOBIAPPS', 'Mobile Applications Development', '2nd', 4, '1st Semester', 'ICT Department'),
(69, 'STISUBJ0069', 'CUSTSVC2', 'Customer Service 2', '2nd', 3, '2nd Semester', 'ICT Department'),
(70, 'STISUBJ0070', 'INTERN1', 'Internship Program', '2nd', 3, '2nd Semester', 'GE Department'),
(71, 'STISUBJ0071', 'OODVBNET', 'Object-oriented Design In Vb.net', '2nd', 4, '2nd Semester', 'ICT Department'),
(72, 'STISUBJ0072', 'PROJECT', 'Project', '2nd', 3, '2nd Semester', 'ICT Department'),
(73, 'STISUBJ0073', 'BUSIMATH', 'Business Matn', '1st', 3, '1st Semester', 'TH Department'),
(74, 'STISUBJ0074', 'GENPSYB', 'Psychology With Drugs, Hiv/aids, And Sars Education', '1st', 3, '1st Semester', 'TH Department'),
(75, 'STISUBJ0075', 'PRITUR1B', 'Principles Of Tourism 1', '1st', 3, '1st Semester', 'TH Department'),
(76, 'STISUBJ0076', 'SANIGENB', 'Principles Of Food Safety,hygiene, And Sanitaion', '1st', 3, '1st Semester', 'TH Department'),
(77, 'STISUBJ0077', 'BUSCOMA', 'Business Communication', '1st', 3, '2nd Semester', 'TH Department'),
(78, 'STISUBJ0078', 'COMPFUNB', 'Computer Fundamentals', '1st', 5, '2nd Semester', 'TH Department'),
(79, 'STISUBJ0079', 'PRINMGB', 'Principles Of Management', '1st', 3, '2nd Semester', 'TH Department'),
(80, 'STISUBJ0080', 'PRITUR2B', 'Principles Of Tourism 2', '1st', 3, '2nd Semester', 'TH Department'),
(81, 'STISUBJ0081', 'TOURESB', 'Tour Guiding And Escorting', '1st', 3, '2nd Semester', 'TH Department'),
(82, 'STISUBJ0082', 'BACCTNT', 'Basic Accounting For The Service Industry', '2nd', 3, '1st Semester', 'TH Department'),
(83, 'STISUBJ0083', 'CRTPOPS', 'Club,resort,and Theme Park Operations', '2nd', 5, '1st Semester', 'TH Department'),
(84, 'STISUBJ0084', 'ECOMDGB', 'E-commerce, Internet And Global Distribution Systems ', '2nd', 5, '1st Semester', 'TH Department'),
(85, 'STISUBJ0085', 'INDTOURT', 'International And Domestic Tour Planning, Packaging, And Pricing', '2nd', 3, '1st Semester', 'TH Department'),
(86, 'STISUBJ0086', 'PRINMKB', 'Principles Of Marketing For The Service Industry', '2nd', 3, '1st Semester', 'TH Department'),
(87, 'STISUBJ0087', 'FRMHRMT', 'Front Office Management', '2nd', 5, '2nd Semester', 'TH Department'),
(88, 'STISUBJ0088', 'PROFDEVB', 'Professional And Leadership Development', '2nd', 3, '2nd Semester', 'TH Department'),
(89, 'STISUBJ0089', 'THTRENDB', 'Industry Trends In Tourism And Hospitality', '2nd', 3, '2nd Semester', 'TH Department'),
(90, 'STISUBJ0090', 'TSEVEMGT', 'Events Management', '2nd', 4, '2nd Semester', 'TH Department'),
(91, 'STISUBJ0091', 'BUSIMAT', 'Business Math', '1st', 3, '1st Semester', 'TH Department'),
(92, 'STISUBJ0092', 'CULARTS', 'Basic Culinary Arts ', '1st', 3, '1st Semester', 'TH Department'),
(93, 'STISUBJ0093', 'PRITUR1 ', 'Principles Of Tourism 1', '1st', 3, '1st Semester', 'TH Department'),
(94, 'STISUBJ0094', 'SANIGEN ', 'Principles Of Food Safety,hygiene, And Sanitation ', '1st', 3, '1st Semester', 'TH Department'),
(95, 'STISUBJ0095', 'HRMELE1', 'Hrm Elective 1', '1st', 3, '2nd Semester', 'TH Department'),
(96, 'STISUBJ0096', 'LOGIC', 'Logic', '1st', 3, '2nd Semester', 'TH Department'),
(97, 'STISUBJ0097', 'PRITUR2', 'Principles Of Tourism 2', '1st', 3, '2nd Semester', 'TH Department'),
(98, 'STISUBJ0098', 'FBSPROC', 'Food And Beverage Service Procedures', '2nd', 3, '1st Semester', 'TH Department'),
(99, 'STISUBJ0099', 'GENSPYCA', 'Psychology With Drugs, Hiv/aids, And Sars Education', '2nd', 3, '1st Semester', 'TH Department'),
(100, 'STISUBJ00100', 'HASTOPS', 'Housekeeping And Stewardship Operations', '2nd', 3, '1st Semester', 'TH Department'),
(101, 'STISUBJ00101', 'HRMELE2', 'Hrm Elective 2', '2nd', 3, '1st Semester', 'TH Department'),
(102, 'STISUBJ00102', 'PRINMGT', 'Principles Management', '2nd', 3, '1st Semester', 'TH Department'),
(103, 'STISUBJ00103', 'BANCATE', 'Banquet, Function And Catering Procedure', '2nd', 3, '2nd Semester', 'TH Department'),
(104, 'STISUBJ00104', 'HRMELE3', 'Hrm Elective 3', '2nd', 3, '2nd Semester', 'TH Department'),
(105, 'STISUBJ00105', 'HRMELE4 ', 'Hrm Elective 4', '2nd', 3, '2nd Semester', 'TH Department'),
(106, 'STISUBJ00106', 'PRINMKT', 'Principles Of Marketing For Service Industry', '2nd', 3, '2nd Semester', 'TH Department'),
(107, 'STISUBJ00107', 'PROSTATA', 'Probability And Statistics ', '2nd', 3, '2nd Semester', 'TH Department'),
(108, 'STISUBJ00108', 'TOURDEV', 'Tourism Planning And Development', '2nd', 3, '2nd Semester', 'TH Department'),
(109, 'STISUBJ00109', 'BACCTNG', 'Basic Accounting For Service Industry', '3rd', 3, '1st Semester', 'TH Department'),
(110, 'STISUBJ00110', 'BUSCOMM', 'Business Communication', '3rd', 3, '1st Semester', 'TH Department'),
(111, 'STISUBJ00111', 'FRMTHRM', 'Front Office Management', '3rd', 3, '1st Semester', 'TH Department'),
(112, 'STISUBJ00112', 'HRMBEORG', 'Human Behavior In The Organization', '3rd', 3, '1st Semester', 'TH Department'),
(113, 'STISUBJ00113', 'RDMCONS', 'Rooms Division Management And Control System', '3rd', 3, '1st Semester', 'TH Department'),
(114, 'STISUBJ00114', 'BASFINA', 'Basic Finance For The Service Industry', '3rd', 3, '2nd Semester', 'TH Department'),
(115, 'STISUBJ00115', 'ENTRPHRM', 'Entrepreneurship And Business Planning', '3rd', 3, '2nd Semester', 'TH Department'),
(116, 'STISUBJ00116', 'FOBECOM', 'Food And Beverage Control Management ', '3rd', 3, '2nd Semester', 'TH Department'),
(117, 'STISUBJ00117', 'HRMELE5', 'Hrm Elective 5', '3rd', 3, '2nd Semester', 'TH Department'),
(118, 'STISUBJ00118', 'HRMELE6', 'Hrm Elective 6', '3rd', 6, '2nd Semester', 'TH Department'),
(119, 'STISUBJ00119', 'HRMENSCI', 'Environmental Science ', '3rd', 3, '2nd Semester', 'TH Department'),
(120, 'STISUBJ00120', 'MISHOSPI', 'Management Information Systems In The Hospitality Industry', '3rd', 3, '2nd Semester', 'TH Department'),
(121, 'STISUBJ00121', 'CULTANT', 'Cultural Anthropology', '4th', 3, '1st Semester', 'TH Department'),
(122, 'STISUBJ00122', 'HRMELE7', 'Hrm Elective 7', '4th', 3, '1st Semester', 'TH Department'),
(123, 'STISUBJ00123', 'HRMELE8', 'Hrm Elective 8', '4th', 3, '1st Semester', 'TH Department'),
(124, 'STISUBJ00124', 'HRMEVMT', 'Events Management', '4th', 4, '1st Semester', 'TH Department'),
(125, 'STISUBJ00125', 'HUMANT', 'Humanities ', '4th', 3, '1st Semester', 'TH Department'),
(126, 'STISUBJ00126', 'QUALMGT', 'Total Quality Management ', '4th', 3, '1st Semester', 'TH Department'),
(127, 'STISUBJ00127', 'HRMOJT3', 'Bshrm Practicum3-400hrs. (hotel Front Office/operations Practicum)', '4th', 3, '2nd Semester', 'TH Department'),
(128, 'STISUBJ00128', 'BASMATH', 'Basic Mathematics', '1st', 2, '1st Semester', 'ENG Department'),
(129, 'STISUBJ00129', 'COMPROD', 'Computer Productivity Tools  ', '1st', 2, '1st Semester', 'ENG Department'),
(130, 'STISUBJ00130', 'COMTECH', 'Basic Computer Technology ', '1st', 6, '1st Semester', 'ENG Department'),
(131, 'STISUBJ00131', 'FUNDRAW', 'Fundamentals Of Computer Drawing', '1st', 2, '1st Semester', 'ENG Department'),
(132, 'STISUBJ00132', 'COMPNETS', 'Computer Networks ', '1st', 6, '2nd Semester', 'ENG Department'),
(133, 'STISUBJ00133', 'FUNELEC', 'Fundamentals Of Electricity And Electronics', '1st', 6, '2nd Semester', 'ENG Department'),
(134, 'STISUBJ00134', 'MOBITEC', 'Mobile Technology ', '2nd', 6, '1st Semester', 'ENG Department'),
(135, 'STISUBJ00135', 'RADELEC', 'Radio Electronics', '2nd', 5, '1st Semester', 'ENG Department'),
(136, 'STISUBJ00136', 'TVELEC', 'Tv Electronics', '2nd', 5, '1st Semester', 'ENG Department'),
(137, 'STISUBJ00137', 'BROADTEC', 'Broadband Technology', '2nd', 5, '2nd Semester', 'ENG Department'),
(138, 'STISUBJ00138', 'INTERN2', 'Internship Program 2', '2nd', 3, '2nd Semester', 'ENG Department'),
(139, 'STISUBJ00139', 'PHILTOUR', 'Philippine Tourism', '2nd', 3, '1st Semester', 'TH Department'),
(140, 'STISUBJ00140', 'TMELEC1', 'Tm Elective 1', '2nd', 3, '2nd Semester', 'TH Department'),
(141, 'STISUBJ00141', 'TOURIMP', 'Tourism Impacts And Sustainability', '2nd', 3, '2nd Semester', 'TH Department'),
(142, 'STISUBJ00142', 'WORTOUR', 'World Tourism', '2nd', 3, '2nd Semester', 'TH Department'),
(143, 'STISUBJ00143', 'ECOTOUR', 'Ecotourism', '3rd', 3, '1st Semester', 'TH Department'),
(144, 'STISUBJ00144', 'TMELEC2', 'Tm Elective 2', '3rd', 3, '1st Semester', 'TH Department'),
(145, 'STISUBJ00145', 'TOURMAR', 'Tourism Marketing', '3rd', 3, '1st Semester', 'TH Department'),
(146, 'STISUBJ00146', 'TMELEC3', 'Tm Elective 3', '3rd', 3, '2nd Semester', 'TH Department'),
(147, 'STISUBJ00147', 'TMELEC4', 'Tm Elective 4', '3rd', 3, '2nd Semester', 'TH Department'),
(148, 'STISUBJ00148', 'TMELEC5', 'Tm Elective 5', '3rd', 3, '2nd Semester', 'TH Department'),
(149, 'STISUBJ00149', 'TMELEC6', 'Tm Elective 6', '3rd', 3, '2nd Semester', 'TH Department'),
(150, 'STISUBJ00150', 'TMELEC7', 'Tm Elective 7', '4th', 3, '1st Semester', 'TH Department'),
(151, 'STISUBJ00151', 'TMELEC8', 'Tm Elective 8', '4th', 3, '1st Semester', 'TH Department'),
(152, 'STISUBJ00152', 'TOURTEC', 'Tourism Research Methods And Techniques', '4th', 3, '1st Semester', 'TH Department'),
(153, 'STISUBJ00153', 'TM-OJT2', 'Bstm Practicum 2 - 400hrs. (airline Operations Training)', '4th', 4, '2nd Semester', 'TH Department'),
(154, 'STISUBJ00154', 'ADVOPT', 'Advance Office Productivity Tools', '1st', 1, '1st Semester', 'ENG Department'),
(155, 'STISUBJ00155', 'ENGDRA1', 'Engineering Drawing 1', '1st', 1, '1st Semester', 'ENG Department'),
(156, 'STISUBJ00156', 'PERSDEVA', 'Personality Development With Values Formation', '1st', 3, '1st Semester', 'ENG Department'),
(157, 'STISUBJ00157', 'PSTRIGO', 'Plane And Spherical Trigonometry', '1st', 3, '1st Semester', 'ENG Department'),
(158, 'STISUBJ00158', 'ALGEBR2', 'Advance Algebra', '1st', 2, '2nd Semester', 'ENG Department'),
(159, 'STISUBJ00159', 'ANA-GEO', 'Analytic Geometry', '1st', 2, '2nd Semester', 'ENG Department'),
(160, 'STISUBJ00160', 'PCHWFUN', 'Computer Hardware Fundamentals', '1st', 1, '2nd Semester', 'ENG Department'),
(161, 'STISUBJ00161', 'SOLIMEN', 'Solid Mensuration', '1st', 2, '2nd Semester', 'ENG Department'),
(162, 'STISUBJ00162', 'COMPFUN', 'Computer Fundamentals And Programming', '2nd', 2, '1st Semester', 'ENG Department'),
(163, 'STISUBJ00163', 'DIFCALC', 'Differential Calculus ', '2nd', 4, '1st Semester', 'ENG Department'),
(164, 'STISUBJ00164', 'DISMATH', 'Discrete Mathematics', '2nd', 3, '1st Semester', 'ENG Department'),
(165, 'STISUBJ00165', 'SOCULIT', 'Society,culture,and Information Technology', '2nd', 3, '1st Semester', 'ENG Department'),
(166, 'STISUBJ00166', 'CHEMONE', 'Chemistry 1 ', '2nd', 4, '2nd Semester', 'ENG Department'),
(167, 'STISUBJ00167', 'DASTRAL', 'Data Structures And Algorithms Analysis', '2nd', 4, '2nd Semester', 'ENG Department'),
(168, 'STISUBJ00168', 'INTCALC', 'Integral Calculus', '2nd', 4, '2nd Semester', 'ENG Department'),
(169, 'STISUBJ00169', 'CIRCIT1 ', 'Circuits 1 ', '3rd', 4, '1st Semester', 'ENG Department'),
(170, 'STISUBJ00170', 'DIFFENQNA', 'Differential Equations ', '3rd', 3, '1st Semester', 'ENG Department'),
(171, 'STISUBJ00171', 'ELEDEVT', 'Electronic Devices And Circuits', '3rd', 4, '1st Semester', 'ENG Department'),
(172, 'STISUBJ00172', 'ENECONO', 'Engineering Economy', '3rd', 3, '1st Semester', 'ENG Department'),
(173, 'STISUBJ00173', 'ENMECH1', 'Engineering Mechanics 1 (statics Of Rigid Bodies)', '3rd', 3, '1st Semester', 'ENG Department'),
(174, 'STISUBJ00174', 'OOPROGA', 'Object-oriented Programming', '3rd', 4, '1st Semester', 'ENG Department'),
(175, 'STISUBJ00175', 'CIRCIT2', 'Circuits 2', '3rd', 4, '2nd Semester', 'ENG Department'),
(176, 'STISUBJ00176', 'COMORLA', 'Computer Systems Organization With Assembly Language', '3rd', 4, '2nd Semester', 'ENG Department'),
(177, 'STISUBJ00177', 'ELECIRC', 'Electronic Circuits Analysis And Design', '3rd', 4, '2nd Semester', 'ENG Department'),
(178, 'STISUBJ00178', 'ENMECH2', 'Engineering Mechanics 2 (dynamics Of Rigid Bodies)', '3rd', 2, '2nd Semester', 'ENG Department'),
(179, 'STISUBJ00179', 'LOGCIRC', 'Logic Circuits And Switching Theory', '3rd', 4, '2nd Semester', 'ENG Department'),
(180, 'STISUBJ00180', 'SAFEMGT', 'Safety Management', '3rd', 1, '2nd Semester', 'ENG Department'),
(181, 'STISUBJ00181', 'VBPROGA', 'Visual Basic Programming', '3rd', 4, '2nd Semester', 'ENG Department'),
(182, 'STISUBJ00182', 'ADVENMA', 'Advanced Engineering Mathematics', '4th', 3, '1st Semester', 'ENG Department'),
(183, 'STISUBJ00183', 'CADCRAFT ', 'Computer-aided Drafting', '4th', 1, '1st Semester', 'ENG Department'),
(184, 'STISUBJ00184', 'COELEC1', 'Elective 1', '4th', 3, '1st Semester', 'ENG Department'),
(185, 'STISUBJ00185', 'COMPARC', 'Compute Systems Architecture ', '4th', 4, '1st Semester', 'ENG Department'),
(186, 'STISUBJ00186', 'DATACOM', 'Data Communications', '4th', 3, '1st Semester', 'ENG Department'),
(187, 'STISUBJ00187', 'ENMECH3 ', 'Engineering Mechanics 3(mechanics Of Deformable Bodies)', '4th', 3, '1st Semester', 'ENG Department'),
(188, 'STISUBJ00188', 'MICROSY', 'Microprocessor Systems ', '4th', 4, '1st Semester', 'ENG Department'),
(189, 'STISUBJ00189', 'SYNADES', 'Systems Analysis And Design', '4th', 3, '1st Semester', 'ENG Department'),
(190, 'STISUBJ00190', 'COELEC2', 'Elective 2', '4th', 3, '2nd Semester', 'ENG Department'),
(191, 'STISUBJ00191', 'CTRLSYS', 'Control Systems', '4th', 4, '2nd Semester', 'ENG Department'),
(192, 'STISUBJ00192', 'DESPRO1', 'Design Projects 1 (methods Of Research)', '4th', 2, '2nd Semester', 'ENG Department'),
(193, 'STISUBJ00193', 'DISIPRO', 'Digital Signal Processing', '4th', 4, '2nd Semester', 'ENG Department'),
(194, 'STISUBJ00194', 'NETWORK', 'Computer Networks', '4th', 4, '2nd Semester', 'ENG Department'),
(195, 'STISUBJ00195', 'SOFENGG', 'Software Engineering', '4th', 3, '2nd Semester', 'ENG Department'),
(197, 'STISUBJ00197', 'COELEC3', 'Elective 3', '5th', 3, '1st Semester', 'ENG Department'),
(198, 'STISUBJ00198', 'COESEFT', 'Seminars And Field Trips', '5th', 1, '1st Semester', 'ENG Department'),
(199, 'STISUBJ00199', 'COETHIC', 'Engineering Ethics And Computer Laws', '5th', 2, '1st Semester', 'ENG Department'),
(200, 'STISUBJ00200', 'DESPRO2', 'Design Project 2 (project Implementation)', '5th', 2, '1st Semester', 'ENG Department'),
(201, 'STISUBJ00201', 'ENTRPRE', 'Entrepreneurship', '5th', 3, '1st Semester', 'ENG Department'),
(202, 'STISUBJ00202', 'ENVIENG', 'Environmental Engineering', '5th', 2, '1st Semester', 'ENG Department'),
(203, 'STISUBJ00203', 'COEPRAC', 'Coe On-the-job Training', '5th', 6, '2nd Semester', 'ENG Department'),
(204, 'STISUBJ00204', 'DESPRO3', 'Design Project 3(project Defense)', '5th', 2, '2nd Semester', 'ENG Department');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
