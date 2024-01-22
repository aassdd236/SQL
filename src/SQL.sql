use hrdb;
select * from employees;
select * from departments;
select * from locations;
select * from countries; -- select 문
#select from 절
select * from jobs;

select first_name, phone_number, hire_date, salary*12 from employees;
select first_name, last_name, salary, phone_number, email, hire_date from employees;

select employee_id as empNo,
      first_name 'f-name',
       salary as '월 급'
from employees;

select first_name 이름, phone_number 전화번호, hire_date 입사일,
      salary 월급
from employees;

select employee_id '사 번', first_name 이름, last_name 성, salary 월급,
      phone_number 전화번호, email 이메일, hire_date 입사일
from employees;

select    first_name,
       salary 월급,
       salary-100 '월급-식대',
       salary*12 연봉,
       salary*12+5000 보너스포함,
       salary/30 일급,
       employee_id%3 '워크샵 팀'
from employees;

select job_id*12
from employees;

-- 입력 합치기
select concat(first_name, ' ',last_name, ' hire date is ', hire_date) name
from employees;

-- 현재 시간
select now();

select    first_name, salary, '(주)개발자' as company, 3
from employees;

-- 월급 15000 이상 사원 이름 월급 출력
select first_name,
      salary
from employees
where salary>=15000;

-- 07/01/01 이후에 입사한 사람의 이름과 입사일 출려
select first_name, hire_date
from employees
where hire_date >= '2007-01-01';

-- 이름이 Lex인 사람의 이름과 월급 출력
select first_name,
      salary
from employees
where first_name = 'Lex';

-- 월급이 14000 이하이거나 17000 이상인 사람의 이름과 월급
select first_name,
      salary
from employees
where salary <=14000 or salary >= 17000;

#입사일이 04/01/01에서 05/12/31 사이인 사원의 이름과 입사일
select first_name,
      hire_date
from employees
where hire_date >= '2004-01-01' and hire_date <= '2005/12/31';
-- between a and b 사용 가능 (a<b로 작은 값이 무조건 앞에, 경계값은 포함 x)

#Neena, Lex, John의 이름 성 월급 구하기
select first_name, last_name, salary
from employees
where first_name in ('neena', 'lex', 'john');
#or 세 번 쓴 것과 같은 효과임

#월급이 2100, 3100, 4100, 5100 인 사원의 이름과 월급
select first_name, salary
from employees
where salary in(2100, 3100, 4100, 5100);

