show tables;

create table product(
	idx int not null auto_increment,	/* 상품 고유번호 */
	pro1 varchar(20) not null,				/* 1차상품명 */
	pro2 varchar(20) not null,				/* 2차상품명 */
	price int not null,								/* 가격 */
	
	primary key(idx)
);

select * from product;

desc product;

drop table product;

insert into product values (default,'속눈썹','벨벳모',30000);
insert into product values (default,'속눈썹','러시안볼륨(3D)',50000);
insert into product values (default,'속눈썹','포인트래쉬',50000);
insert into product values (default,'속눈썹','퓨어펌',30000);
insert into product values (default,'속눈썹','모이스처퓨어펌',50000);