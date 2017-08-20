-- Table structure for table `students`
--

CREATE TABLE `students` (
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uvaid` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`fname`, `lname`, `uvaid`, `email`) VALUES
('Andrew Courtland', NULL, 'ach2wd', NULL),
('Abhijith', NULL, 'am6ku', NULL),
('Abhimanyu', NULL, 'ar3dd', NULL),
('Ashish', NULL, 'as9tq', NULL),
('Abney', NULL, 'asb4rf', NULL),
('Adrian Travis', NULL, 'atm4rf', NULL),
('Ailun', NULL, 'az8ec', NULL),
('Benjamin Hagar', NULL, 'bhg5yd', NULL),
('Bochao', NULL, 'bl2fh', NULL),
('Boh Young', NULL, 'bs6ea', NULL),
('Caitlin', NULL, 'cnd2y', NULL),
('Elizabeth Ivy', NULL, 'eih2nn', NULL),
('Gregory Allan', NULL, 'gaw8pa', NULL),
('Huitong', NULL, 'hp4zw', NULL),
('Jennifer', NULL, 'jc4pg', NULL),
('John Martin', NULL, 'jmp3mk', NULL),
('Jung Bok', NULL, 'jp2kq', NULL),
('Jingyi', NULL, 'js6sm', NULL),
('James', NULL, 'jx4cc', NULL),
('Kennen Hunter', NULL, 'khg3je', NULL),
('Leelakrishna Sai Prasant', NULL, 'lbs7aa', NULL),
('Ming-Un Myron', NULL, 'mc7bk', NULL),
('Marcelo Costa', NULL, 'mc9bx', NULL),
('Michael John', NULL, 'mjc7nz', NULL),
('Morgan Kathleen', NULL, 'mkw5ck', NULL),
('Neal', NULL, 'nem2p', NULL),
('Nitesh', NULL, 'np2hf', NULL),
('Ni', NULL, 'nz4gg', NULL),
('Pragati Vasant', NULL, 'pvs3vf', NULL),
('Rohan', NULL, 'rb2te', NULL),
('Robert Lawrence', NULL, 'rlm4bj', NULL),
('Stephen Andrew', NULL, 'sam8sp', NULL),
('Syed-Ali Asghar', NULL, 'saz8zj', NULL),
('Sally Shi Mei', NULL, 'sg2zv', NULL),
('Tyler Alexander', NULL, 'tal3fj', NULL),
('Wanyi', NULL, 'wd3fg', NULL),
('William Duncan', NULL, 'wdr5ft', NULL),
('Xinyang', NULL, 'xl9qw', NULL),
('Yi', NULL, 'yh8a', NULL),
('Yinghue', NULL, 'yl9qr', NULL);

-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`uvaid`);
