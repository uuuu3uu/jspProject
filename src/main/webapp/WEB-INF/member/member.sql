show tables;

create table member (
	idx 		 	int not null auto_increment,	/* 회원 고유번호 */
	mid 		 	varchar(20) not null,					/* 회원 아이디 (중복 불허) */
	pwd 		 	varchar(100) not null,				/* 비밀번호(SHA암호화 처리) */
	name 		 	varchar(20) not null,					/* 회원성명 */
	gender 	 	varchar(5) default '여자',			/* 성별 */
	birthday datetime default now(),				/* 생일 */
	tel 		 	varchar(15) not null,					/* 전화번호(010-1234-5678) (중복 불허??) */
	address 	varchar(100) not null,				/* 회원주소 */
	email			varchar(50) not null,					/* 이메일(아이디/비밀번호) 분실 시 사용 - 형식체크 필수 */
	path			varchar(20),									/* 알게된 경로 */
	userDel   char(2) default 'NO',					/* 회원 탈퇴 신청 여부(OK:탈퇴신청한 회원, NO:현재 가입중인 회원) */
	point 		int default 1000, 						/* 회원 누적 적립금(가입시 기본 1000증정 )*/
	level 		int default 1,   							/* 회원 등급(1:준회원(시술이력0) 2:정회원(시술이력1이상) 3:우수회원(시술이력3이상) 4:관리자) */
	visitCnt 	int default 0, 								/* 방문 횟수 */
	startDate datetime default now(),   		/* 최초 가입일 */
	lastDate datetime  default now(), 			/* 마지막 접속일 */
	todayCnt 					 int default 0, 			/* 오늘 방문한 횟수 */
	noShow 						 int default 0,				/* 예약 불이행 */
	primary key(idx),												/* 주 키 : idx(고유번호) */
	unique key(mid)													/* 유니큐키 mid(아이디) */ 
);

select * from member;
--drop table member;
														/*번호		아이디 			비밀번호																															성명			성별 			생일	 				전화번호			회원주소 					이메일 								경로 탈퇴신청  적립금 회원등급 방문횟수 최초가입일 마지막접속일 오늘방문횟수 예약불이행 	*/
insert into member values (default,'admin','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','관리자',default,default,'010-7751-1593','충북 청주시 705','u_u2222@naver.com','기타',default,default,4,default,default,default,default,default);