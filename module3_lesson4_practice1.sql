use test;
select *
from student;
select address, count(address)
from student
group by address;
select s.studentid, s.studentname, avg(m.mark) "Diem TB"
from student s join mark m
where s.studentid = m.studentid
group by s.studentid
having avg(m.mark) >= all (select avg(mark) from mark group by mark.studentid);

