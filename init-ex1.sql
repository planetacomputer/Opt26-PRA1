drop database if exists academy cascade;
create database academy;

alter database academy SET primary region "eu-central";
alter database academy add region "eu-west";
use academy;

create table academy.courses
(
  id int primary key default unique_rowid(),
  title string,
  description string
);

insert into academy.courses (title, description) values 
('Introduction to Databases', 'Fundamentals of relational and distributed database systems');

insert into academy.courses (title, description) values 
('Cloud Computing Basics', 'Overview of cloud service models and deployment strategies');

insert into academy.courses (title, description) values 
('Network Security', 'Principles of securing computer networks and data transmission');

insert into academy.courses (title, description) values 
('Desarrollo Web', 'Conceptos esenciales para crear aplicaciones web modernas');

-- alter table academy.courses set locality global;

-- alter table academy.courses set locality regional by row;

insert into academy.courses (title, description) values 
('Data Structures', 'Study of common data structures and their performance trade-offs');

insert into academy.courses (title, description) values 
('Operating Systems', 'Understanding processes, memory management, and file systems');


drop database if exists media cascade;
create database media;
