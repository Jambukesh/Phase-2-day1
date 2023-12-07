create database OurExerciseDb
on primary (Name='Customer-db',fileName='E:\mphasis\problem statement\PHASE 2\day 1\OurExercise_Db.mdf',
size=24MB,maxsize=48MB,filegrowth=8MB)
log on(name='Customer_db_log',fileName='E:\mphasis\problem statement\PHASE 2\day 1\OurExercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS
drop database OurExerciseDb

use OurExerciseDb
create table Product(
PId int primary key,
PName nvarchar(20) not null,
PPrice float check(PPrice>=50 and PPrice<=100000),
PCompany nvarchar(50) check(PCompany in ('Samsung','apple','Redmi','HTC')),
PQty int DEFAULT 1 check(PQty>=1)
)

insert into Product	Values(1 ,'jk',5000,'Samsumg',2);

insert into Product Values(2 ,'jambu',6000,'apple',4);
insert into Product Values(6 ,'rocky',8000,'Redmi',8);
select * from Product





