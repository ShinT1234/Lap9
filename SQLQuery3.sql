IF Exists (SELECT * FROM SYS.DATABASES WHERE NAME = 'Schools')
DROP Database Schools
GO
CREATE DATABASE Schools
GO
USE Schools
GO
CREATE TABLE Class (
	ClassCode nvarchar(40) PRIMARY KEY,
	HeadTeacher nvarchar(40),
	Rooms nvarchar(40),
	TimeSlot char,
	CloseDate datetime 
)
GO
CREATE TABLE Student(
	RollNo nvarchar(40) PRIMARY KEY ,
	ClassCode nvarchar(40) CONSTRAINT Cl FOREIGN KEY (ClassCode) REFERENCES Class(ClassCode),
	FullName nvarchar(40),
	Male bit,
	BirthDay date ,
	Address nvarchar(40),
	Province  char(2),
	Email nvarchar(40)
)
GO 
CREATE TABLE Subject(
	SubCode nvarchar(40) PRIMARY KEY,
	SubName nvarchar(40) ,
	WTest bit,
	PTest bit,
	WTest_per int,
	PTest_per int
)
GO 
CREATE TABLE Mark(
	RollNo nvarchar(40) CONSTRAINT rol FOREIGN KEY (RollNo) REFERENCES Student(RollNo),
	SubCode nvarchar(40) CONSTRAINT Sub FOREIGN KEY (SubCode) REFERENCES Subject(SubCode),
	WMark float,
	PMark float,
	Mark float,
	CONSTRAINT pk_m PRIMARY KEY (RollNo,SubCode)
)
GO
SELECT * FROM Class
GO
INSERT INTO Class(ClassCode,HeadTeacher,Rooms,TimeSlot,CloseDate) VALUES (1,'Dang Kim Thi','T2203M','A','2024')
INSERT INTO Class(ClassCode,HeadTeacher,Rooms,TimeSlot,CloseDate) VALUES (2,'Dang Kim Thi','T2203E','B','2024')
INSERT INTO Class(ClassCode,HeadTeacher,Rooms,TimeSlot,CloseDate) VALUES (3,'Dang Kim Thi','T2204M','C','2023')
INSERT INTO Class(ClassCode,HeadTeacher,Rooms,TimeSlot,CloseDate) VALUES (4,'Dang Kim Thi','T2204E','D','2024')
INSERT INTO Class(ClassCode,HeadTeacher,Rooms,TimeSlot,CloseDate) VALUES (5,'Dang Kim Thi','T2205M','E','2023')
INSERT INTO Class(ClassCode,HeadTeacher,Rooms,TimeSlot,CloseDate) VALUES (6,'Dang Kim Thii','T2205M','E','2023')

GO
INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (8,6,'Do Duc Manh','5','2001','Vinh Tuong','VP','manhddth2202027@fpt.edu.vn')
INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (9,6,'Do Duc Manh','5','2001','Vinh Tuong','VP','manhddth2202027@fpt.edu.vn')
INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (10,6,'Do Duc Manh','5','2001','Vinh Tuong','VP','manhddth2202027@fpt.edu.vn')
INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (11,6,'Do Duc Manh','5','2001','Vinh Tuong','VP','manhddth2202027@fpt.edu.vn')

INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (2,2,'Le Thanh Binh','1','1997','Ha Nam','HN','binhddth2202028@fpt.edu.vn')
INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (3,3,'Dao Trong Quyet','1','1993','Dong Hy','TN','quyetddth2202029@fpt.edu.vn')
INSERT INTO Student(RollNo,ClassCode,FullName,Male,BirthDay,Address,Province,Email) VALUES (4,4,'Chu Le Quang Huy','1','1996','Tu Son ','BN','huyddth2202026@fpt.edu.vn')

GO
INSERT INTO Subject(SubCode,SubName,WTest,PTest,WTest_per,PTest_per) VALUES (1,'C',1,1,1,1)
INSERT INTO Subject(SubCode,SubName,WTest,PTest,WTest_per,PTest_per) VALUES (2,'HTML',1,1,1,1)
INSERT INTO Subject(SubCode,SubName,WTest,PTest,WTest_per,PTest_per) VALUES (3,'CSS',1,1,1,1)
INSERT INTO Subject(SubCode,SubName,WTest,PTest,WTest_per,PTest_per) VALUES (4,'JS',1,1,1,1)
INSERT INTO Subject(SubCode,SubName,WTest,PTest,WTest_per,PTest_per) VALUES (5,'DATABASE',0,0,1,1)
GO
--Điểm của Đỗ Đức Mạnh
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (8,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (8,2,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (8,3,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (8,4,1,1,1)

INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (9,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (9,2,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (9,3,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (9,4,1,1,1)

INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (10,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (10,2,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (10,3,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (10,4,1,1,1)

INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (11,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (11,2,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (11,3,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (11,4,1,1,1)
--Điểm của Lê Thanh Bình
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (2,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (2,2,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (2,3,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (2,4,1,1,1)
--Điểm của đào trọng quyết
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (3,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (3,2,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (3,3,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (3,4,1,1,1)
--Điểm của Chu Lê Quang Huy
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (4,1,1,1,1)
INSERT INTO Mark(RollNo,SubCode,WMark,PMark,Mark) VALUES (4,2,1,1,1)

GO 
-- Tạo một khung nhìn chứa danh sách các sinh viên đã có ít nhất 2 bài thi (2 môn học khác nhau).
CREATE VIEW Student_mark AS 
	SELECT Student.FullName,COUNT(Mark.Mark) AS TotalSubject
	FROM Student JOIN Mark ON Student.RollNo=Mark.RollNo
	GROUP BY Student.FullName
	HAVING COUNT(Mark.Mark)>=2 
GO
--Tạo một khung nhìn chứa danh sách tất cả các sinh viên đã bị trượt ít nhất là một môn.
CREATE VIEW Student_miss AS
	SELECT DISTINCT Student.FullName
	FROM Student JOIN Mark ON Student.RollNo=Mark.RollNo
	AND Mark.Mark<8
--Tạo một khung nhìn chứa danh sách các sinh viên đang học ở TimeSlot G.
CREATE VIEW Student_ClassA AS
	SELECT Student.FullName
	FROM Student JOIN Class ON Student.ClassCode=Class.ClassCode
	AND Class.TimeSlot='A'
GO
--Tạo một khung nhìn chứa danh sách các giáo viên có ít nhất 3 học sinh thi trượt ở bất cứ môn nào.
CREATE VIEW Teacher_Missing AS 
	SELECT Class.HeadTeacher,COUNT ( DISTINCT mark.mark ) AS total
	FROM Class JOIN Student ON  Class.ClassCode=Student.ClassCode JOIN Mark ON Student.RollNo=Mark.RollNo AND Mark.Mark<8
	GROUP BY Class.HeadTeacher
	HAVING COUNT (DISTINCT Mark.RollNo)>=3
--Tạo một khung nhìn chứa danh sách các sinh viên thi trượt môn EPC của từng lớp. Khung nhìn này phải chứa các cột: Tên sinh viên, Tên lớp, Tên Giáo viên, Điểm thi môn EPC.
CREATE VIEW Student_missC AS 
	SElECT Student.FullName,Class.Rooms,Class.HeadTeacher,Mark.Mark
	FROM Student JOIN Mark ON Student.RollNo=Mark.RollNo JOIN Class ON Student.ClassCode=Class.ClassCode AND Mark.Mark <8
	GROUP BY Student.FullName,Class.Rooms,Class.HeadTeacher,Mark.Mark


	 










