show tables;

create table booking (
	idx 		 			 int not null auto_increment,		/* 회원 고유번호 */
	mid 		 			 varchar(20) not null,					/* 회원 아이디  */
	customerCheck  varchar(20),										/* 체크사항 */
	bookingDate 	 datetime not null,						  /* 예약날짜/시간 */
	orderDate 		 datetime default now(),				/* 예약 주문 넣은 날짜 */
	pIdx 			     int not null,									/* 상품명 */
	bookingStatus  int default 1,									/* 예약상태 (1:신청 2:예약완료 3:시술완료 4:취소)*/
	
	primary key(idx),
	foreign key(mid) references member(mid), 
	foreign key(pIdx) references product(idx)
);

insert into booking values (default,'yyy111','고혈압','2022-12-16 10:00:00',default,1,default);
insert into booking values (default,'yyy111','고혈압','2022-12-21 10:00:00',default,1,default);
insert into booking values (default,'yyy111','당뇨','2022-12-22 15:00:00',default,2,default);
insert into booking values (default,'bbb111','피부질환','2022-12-22 10:00:00',default,3,default);

desc booking;

select * from booking;

select * from booking where bookingDate = '2022-12-22';