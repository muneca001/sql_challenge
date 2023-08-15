create table titles (
    title_id varchar(6)   not null,
    title varchar(30)   not null,
    primary key (title_id)
);

create table employees (
    emp_no int   not null,
    emp_title_id varchar(6) not null,
    birth_date date   not null,
    first_name varchar(15)   not null,
    last_name varchar(30)   not null,
    sex varchar(1)   not null,
    hire_date date   not null,
    foreign key (emp_title_id) references titles (title_id),
    primary key (emp_no)
);


create table departments (
    dept_no varchar(5)   not null,
    dept_name varchar(30)   not null,
    primary key (dept_no)
);

create table dept_manager (
    dept_no varchar(5)   not null,
    emp_no int   not null,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no),
    primary key (dept_no, emp_no)
);

create table dept_emp (
    emp_no int   not null,
    dept_no varchar(5)   not null,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no),
    primary key (emp_no, dept_no)
);

create table salaries (
    emp_no int   NOT null,
    salary int   NOT null,
    foreign key (emp_no) references employees (emp_no),
    primary key (emp_no)
);