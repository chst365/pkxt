--------------------------------------
--2、学生表t_student

CREATE TABLE t_student (
  uuid varchar(50) NOT NULL,
  name varchar(30) NOT NULL,
  studentID varchar(30) DEFAULT NULL,
  school varchar(30) DEFAULT NULL,
  grade varchar(30) DEFAULT NULL,
  phone varchar(30) DEFAULT NULL,
  date varchar(30) DEFAULT NULL,
  parentName varchar(30) DEFAULT NULL,
  parentPhone varchar(30) DEFAULT NULL,
  address varchar(30) DEFAULT NULL,
  remark varchar(30) DEFAULT NULL,
  
  parentName2 varchar(30) DEFAULT NULL,
  parentPhone2 varchar(30) DEFAULT NULL,
  parentRela2 varchar(30) DEFAULT NULL,
  
  openAndclose varchar(10) DEFAULT NULL,
  
  sex varchar(30) DEFAULT NULL,
  org varchar(30) DEFAULT NULL,
  parentRela varchar(30) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  parentName2 varchar(50) DEFAULT NULL,//家长姓名 
  parentPhone2 varchar(50)DEFAULT NULL,//家长电话
  address2 varchar(50)DEFAULT NULL,//家庭住址
  
  PRIMARY KEY (uuid)
);
--------------------------------------
--3、员工表t_employee

CREATE TABLE t_employee (
  uuid varchar(50) NOT NULL,
  name varchar(30) NOT NULL,
  empNum varchar(30) DEFAULT NULL,
  phone varchar(30) DEFAULT NULL,
  depart varchar(30) DEFAULT NULL,
  job varchar(30) DEFAULT NULL,
  permissionTempl varchar(30) DEFAULT NULL,
  remark varchar(255) DEFAULT NULL,
  claTeacher varchar(30) NOT NULL,
  
  sex varchar(30) DEFAULT NULL,
  org varchar(30) DEFAULT NULL,
  workDate varchar(30) DEFAULT NULL,
  fullhalf varchar(30) DEFAULT NULL,
  jobRemark varchar(30) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--4、课程表t_course

CREATE TABLE t_course (
  uuid varchar(50) NOT NULL,
  name varchar(30) NOT NULL,
  category varchar(30) DEFAULT NULL,
  describeA varchar(255) DEFAULT NULL,
  org varchar(30) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--5、合同表t_contract

CREATE TABLE t_contract (
  uuid varchar(50) NOT NULL,
  cNum varchar(50) NOT NULL,
  stuUuid varchar(50) DEFAULT NULL,
  cDate varchar(30) DEFAULT NULL,
  org varchar(30) DEFAULT NULL,
  totalCount varchar(30) DEFAULT NULL,
  totalPrice varchar(30) DEFAULT NULL,
  
  onePriceA varchar(30) DEFAULT NULL,
  countA varchar(30) DEFAULT NULL,
  delPriceA varchar(30) DEFAULT NULL,
  countGiveA varchar(30) DEFAULT NULL,
  sumCountA varchar(30) DEFAULT NULL,
  sumPriceA varchar(30) DEFAULT NULL,
  
  onePriceB varchar(30) DEFAULT NULL,
  countB varchar(30) DEFAULT NULL,
  delPriceB varchar(30) DEFAULT NULL,
  countGiveB varchar(30) DEFAULT NULL,
  sumCountB varchar(30) DEFAULT NULL,
  sumPriceB varchar(30) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--5-1、合同表t_contrtext

CREATE TABLE t_contrtext (
  uuid varchar(50) NOT NULL,
  cNum varchar(50) NOT NULL,
  stuUuid varchar(50) DEFAULT NULL,
  cDate varchar(30) DEFAULT NULL,
  org varchar(30) DEFAULT NULL,
  totalCount varchar(30) DEFAULT NULL,
  totalPrice varchar(30) DEFAULT NULL,
  
  sumLineUpA int NOT NULL,
  sumLineDownB int NOT NULL,
  
  remark varchar(250) DEFAULT NULL,
  nameTcname varchar(250) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);


--------------------------------------
--5-2、合同价格表t_conPrice

CREATE TABLE t_conPrice (
  uuid varchar(50) NOT NULL,
  contrUuid varchar(50) NOT NULL,
  
  
  onePriceA varchar(30) DEFAULT NULL,
  countA varchar(30) DEFAULT NULL,
  delPriceA varchar(30) DEFAULT NULL,
  countGiveA varchar(30) DEFAULT NULL,
  sumCountA varchar(30) DEFAULT NULL,
  sumPriceA varchar(30) DEFAULT NULL,
  priceType varchar(30) DEFAULT NULL,
 
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--6、排课表t_paike_all

CREATE TABLE t_paike_all (
  uuid varchar(50) NOT NULL,
  claUuid varchar(50) NOT NULL,
  courseUuid varchar(50) DEFAULT NULL,
  empUuid varchar(50) DEFAULT NULL,
  classroomUuid varchar(50) DEFAULT NULL,
  keDateTime varchar(30) DEFAULT NULL,
  keStartTime varchar(30) DEFAULT NULL,
  keLongTime varchar(30) DEFAULT NULL,
  status varchar(30) DEFAULT NULL,
  weekSome varchar(30) DEFAULT NULL,
  
  pkType varchar(30) DEFAULT NULL,
  pkTypeName varchar(30) DEFAULT NULL,
  
  courseName varchar(30) DEFAULT NULL,
  empName varchar(30) DEFAULT NULL,
  croomName varchar(30) DEFAULT NULL,
  claName varchar(30) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--7、班级表t_class

CREATE TABLE t_class (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  empUuid varchar(50) DEFAULT NULL,
  classDate varchar(50) DEFAULT NULL,
  status varchar(50) DEFAULT NULL,
  remark varchar(30) DEFAULT NULL,
  claNum varchar(30) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  org varchar(50) DEFAULT NULL,
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--8、教室表t_classroom

CREATE TABLE t_classroom (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  campus varchar(50) DEFAULT NULL,
  remark varchar(250) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  org varchar(50) DEFAULT NULL,
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
-- 部门表t_department

CREATE TABLE t_department (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  remark varchar(250) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--9、角色表t_role

CREATE TABLE t_role (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  remark varchar(50)Not Null,
  PRIMARY KEY (uuid)
);

--------------------------------------
--9、资源表t_resource

CREATE TABLE t_resource (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);


--------------------------------------

--9、班级员工表t_class_emp

CREATE TABLE t_class_emp (
  uuid varchar(50) NOT NULL,
  classUuid varchar(50) NOT NULL,
  className varchar(50) DEFAULT NULL,
  empUuid varchar(50) DEFAULT NULL,
  empName varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------

--10、班级学员表t_class_stu

CREATE TABLE t_class_stu (
  uuid varchar(50) NOT NULL,
  classUuid varchar(50) NOT NULL,
  className varchar(50) DEFAULT NULL,
  stuUuid varchar(50) DEFAULT NULL,
  stuName varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------

--11、班级课程表t_class_course

CREATE TABLE t_class_course (
  uuid varchar(50) NOT NULL,
  classUuid varchar(50) NOT NULL,
  className varchar(50) DEFAULT NULL,
  courseUuid varchar(50) DEFAULT NULL,
  courseName varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------

--12、课程员工表t_course_emp

CREATE TABLE t_course_emp (
  uuid varchar(50) NOT NULL,
  courseUuid varchar(50) NOT NULL,
  courseName varchar(50) DEFAULT NULL,
  empUuid varchar(50) NOT NULL,
  empName varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--13、班级合同表t_class_contract

CREATE TABLE t_class_contract (
  uuid varchar(50) NOT NULL,
  classUuid varchar(50) NOT NULL,
  className varchar(50) DEFAULT NULL,
  contrUuid varchar(50) DEFAULT NULL,
  contrName varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--14、班级合同表t_userPK

CREATE TABLE t_userPK (
  uuid varchar(50) NOT NULL,
  uLogUser varchar(50) NOT NULL,
  uPassWord varchar(50) DEFAULT NULL,
  uName varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------

--16、用户角色表t_userPK

CREATE TABLE t_userPK_role (
  uuid varchar(50) NOT NULL,
  userPkid varchar(50) NOT NULL,
  Roleid varchar(50) NOT NULL,
  PRIMARY KEY (uuid)
);

=======

--15、角色资源表t_role_resource

CREATE TABLE t_role_resource (
  uuid varchar(50) NOT NULL,
  roleid varchar(50) NOT NULL,
  resourceid varchar(50) NOT NULL,
  
  PRIMARY KEY (uuid)
);