-- address 원자화
INSERT INTO address_code
(ADDRESS,ADDERSS_CODE)
VALUES
('서울시','A_01'),
('부산시','A_02'),
('경기도','A_03'),
('대전시','A_04'),
('인천시','A_05');

-- gender_code 원자화
INSERT INTO gender_code
(GENDER,GENDER_CODE)
VALUE
('남','G_01'),
('여','G_04');

-- hobby_code 원자화
INSERT INTO hobby_code
(HOBBY,HOBBY_CODE_ID)
VALUES
('요리', 'H_01'),
('독서', 'H_02'),
('영화감상', 'H_03'),
('음악감상', 'H_04'),
('요가', 'H_05'),
('여행', 'H_06'),
('사진촬영','H_07'),
('등산', 'H_08'),
('수영', 'H_09');

-- members 유니크 값 연결
INSERT INTO members
(NAME,AGE,TELEPHONE,MEMBERS_ID,GENDER_CODE,ADDERSS_CODE)
VALUES
('홍길동',30,	'010-1234-5678','m-01','G_01','A_01'),
('박영희',25,'010-9876-5432','m-02','G_04','A_02'),
('김철수',35,'010-1111-2222','m-03','G_01','A_03'),
('이영미',28,'010-3333-4444','m-04','G_04','A_04'),
('정민호',32,'010-5555-6666','m-05','G_01','A_05');

-- members_hobby 유니크 값 끼리 연결 
INSERT INTO members_hobby
(HOBBY_CODE_ID, MEMBERS_ID)
VALUES
('m-01',	'H_01'),
('m-01',	'H_08'),
('m-02',	'H_02'),
('m-02',	'H_03'),
('m-03',	'H_04'),
('m-03',	'H_05'),
('m-04',	'H_06'),
('m-04',	'H_07'),
('m-05',	'H_08'),
('m-05',	'H_09');

-- members 유니크 값과 email 연결
INSERT INTO members_login
(EMAIL, MEMBERS_ID)
VALUES
('hong@gmail.com','m-01'),
('park.younghee@naver.com','m-02'),
('kimchulsu@gmail.com','m-03'),
('leeyoungmi@naver.com','m-04'),
('jmh123@gmail.com','m-05');
