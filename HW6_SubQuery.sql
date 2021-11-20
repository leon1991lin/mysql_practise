# SubQuery 子查詢

-- 1.
select ename, hiredate
from emp
where DEPTNO = (select DEPTNO from emp where ENAME = "Blake");

-- 2.
select  ename, hiredate
from emp
where hiredate > (select hiredate from emp where ENAME = "Blake")
order by hiredate;

-- 3.
select empno, ename, sal
from emp
where sal > (select avg(sal) 
			 from emp
             )
order by sal;

-- 4.
select empno, ename
from emp
where DEPTNO in (select DEPTNO from emp where ENAME like "%T%");

-- 5.
select e.ename, d.deptno, e.job
from emp e join dept d on (e.DEPTNO = d.DEPTNO)
where d.loc = "Dallas";

-- 6.
select ename, sal,mgr
from emp
where Mgr = (select EMPNO from emp where ENAME = "King");

-- 7.


