create table employee_table(
employee_id int(11) not null auto_increment,
email  varchar(225) default null,
employee_name varchar(225) default null,
salary double default null,
primarykey(employee_id),
key email_index (email)

);