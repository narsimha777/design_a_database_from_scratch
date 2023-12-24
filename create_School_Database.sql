create table teachers(
  id integer primary key,
  name varchar(20)
);

create table courses(
  id integer primary key,
  name text,
  teacher_id integer references teachers(id)
);

create table classes(
  class_section varchar(10) primary key
);

create table classes_teachers(
  classes_section varchar(10) references classes(class_section),
  teacher_id integer references teachers(id),
  courses_id integer references courses(id),
  primary key (classes_section, teacher_id)
);

create table student(
  id varchar(20) primary key,
  classes_section varchar(10) references classes(class_section),
  name varchar(20)
);

--teachers

insert into teachers values(11, 'TA');
insert into teachers values(12, 'TB');
insert into teachers values(13, 'TC');
insert into teachers values(14, 'TD');
insert into teachers values(15, 'TE');

--courses

insert into courses values(101, 'HT', 11);
insert into courses values(102, 'TD', 11);
insert into courses values(103, 'FMHM', 12);
insert into courses values(104, 'MOS', 13);
insert into courses values(105, 'DME', 14);
insert into courses values(106, 'DOM', 15);
insert into courses values(107, 'PMA', 13);

--classes

insert into classes values('MEA');
insert into classes values('MEB');

--classes_teachers

insert into classes_teachers values('MEA', 11, 102);
insert into classes_teachers values('MEA', 12, 103);
insert into classes_teachers values('MEA', 13, 104);
insert into classes_teachers values('MEA', 14, 105);
insert into classes_teachers values('MEB', 11, 101);
insert into classes_teachers values('MEB', 15, 106);
insert into classes_teachers values('MEB', 13, 107);
insert into classes_teachers values('MEB', 12, 103);

--students

insert into student values('B1', 'MEB', 'SA');
insert into student values('B2', 'MEB', 'SB');
insert into student values('B3', 'MEB', 'SC');
insert into student values('A1', 'MEA', 'SD');
insert into student values('A2', 'MEA', 'SE');
insert into student values('A3', 'MEA', 'SF');