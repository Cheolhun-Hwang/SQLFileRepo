
/*여행 장소 정보 테이블*/
select *
  from TRIPTHEME;  
select *
  from CITYLIST;
select *
  from TRIPCITY;
  
  
DROP TABLE TRIPTHEME;
DROP TABLE CITYLIST;
DROP TABLE TRIPCITY;

/*필요 없는 데이터베이스 제거 완료*/

/*여행 기본 정보 테이블*/
  select *
  from TRIP;
  
/*여행 장소 정보 테이블*/
select *
  from TRIPPLACE;
  
/*여행 기본정보 테이블 수정
* 추가 : tripThema varchar, tripBorder varchar
*/
alter table TRIP add tripThema varchar(50) not null;
alter table TRIP add tripBorder varchar(30) not null;

/*여행장소 정보 테이블 수정
* 삭제 : trPlaceLo, trPlaceDate, trPlaceBud
* 추가 : trPlaceLat, trPlaceLng,trPlaceStartDay, trPlaceEndDay
*/
alter table TRIPPLACE drop trPlaceLo;
alter table TRIPPLACE drop trPlaceDate;
alter table TRIPPLACE drop trPlaceBud;

alter table TRIPPLACE add trPlaceLat float not null;
alter table TRIPPLACE add trPlaceLng float not null;
alter table TRIPPLACE add trPlaceStartDay datetime not null;
alter table TRIPPLACE add trPlaceEndDay datetime not null;

/*쿼리문 삽입 입력 조회 생성*/