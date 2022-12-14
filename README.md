# TeachMe (입시전문학원 서비스)
## 프로젝트 소개
단순히 강의를 구매하고 시청하는 것에서 벗어나서 듣고싶은 강의와 시간표를 직접 선택하여 자율적인 학습을 지향하는 입시전문사이트입니다.
<br/>

## 주요 기능

강의 구매 : 강좌내용 및 강사 정보를 확인하고 강의 구매 및 수강후기를 남길 수 있습니다.

커뮤니티 : 회원들끼리 자유롭게 질문을 주고받고 소통할 수 있습니다.

QnA : 관리자에게 1:1 문의를 남기고 답변을 받을 수 있으며 학원 공지사항을 확인할 수 있습니다.

마이페이지 : 본인이 작성한 게시물 또는 구매내역을 확인 할 수 있습니다.

관리자페이지 : 강의, 유저, 게시물, 매출 관리를 할 수 있습니다.

## 기여한 파트
* 프로젝트명, 로고 디자인, 키 컬러, 와이어프레임 설계
* 메인페이지
  - 레이아웃 및 사이트 전체 디자인 통일
  - 랜덤 문자 타이핑효과
  - 실시간 수능일 D-day (현재는 내년 특정 날짜로 변경 - 처리 되지 않도록 수정됨)
  - 퀵메뉴 및 Top버튼
  - 동영상 삽입 및 강의수강 평점 출력
  - 그 외 메인페이지 기능 및 디자인 기여도 100%
* QnA페이지
  - 게시판 CRUD 구현
  - 내가 쓴 글 모아보기
  - 페이징처리
  - 답글기능 구현
  - 관리자 계정으로만 공지사항 작성가능 // 공지사항은 항상 최상단에 고정
  - 비밀글 작성가능
  - 비밀글 작성 후 관리자가 답글 작성 시 원글 작성자 비밀번호를 답글에 자동으로 입력되게 처리
  - 답글 확인 시 원글 패스워드 입력 후 확인가능
  - 로그인 비로그인에 따른 노출정보 구분
  - 작성자 ** 개인정보 숨김 처리 // 로그인한 유저가 쓴 본인 글은 작성자 풀네임 타인의 글은 ** 처리
    <img width="1829" alt="스크린샷 2022-12-13 오후 8 41 57" src="https://user-images.githubusercontent.com/90983846/207308773-7bf9b795-d590-410a-a1e2-dbe84dab60e0.png">
    <img width="1589" alt="스크린샷 2022-12-13 오후 8 42 18" src="https://user-images.githubusercontent.com/90983846/207308859-72916470-f52f-4969-9d85-6c5c247fa635.png">
    <img width="1348" alt="스크린샷 2022-12-13 오후 8 42 33" src="https://user-images.githubusercontent.com/90983846/207308899-8192330b-999f-42f0-ae25-b8f209e9ad05.png">
    <img width="1168" alt="스크린샷 2022-12-13 오후 8 42 50" src="https://user-images.githubusercontent.com/90983846/207308964-b7ef75c8-7752-43cd-8d2c-753fce33befc.png">
    <img width="1484" alt="스크린샷 2022-12-13 오후 8 43 08" src="https://user-images.githubusercontent.com/90983846/207309035-059b418c-1e03-4fbb-aa2f-4cef0dc8c0a9.png">
    <img width="1246" alt="스크린샷 2022-12-13 오후 8 43 41" src="https://user-images.githubusercontent.com/90983846/207309124-14d095ce-e30f-427c-804a-5c4137d6ed10.png">
## 프로젝트 일정 및 규모
* 개발 기간 : 2022.09.29 ~ 22.10.16
* 인원 : 6명 (FullStack)
  <br/>
## 팀원
| **이름** | **역할** | **담당 기능**           |**Git URL**                     |
|--------|-------|---------------------|--------------------------------|
| 김태민    | 풀스택   | 메인페이지, QnA게시판, 디자인담당 | https://github.com/commitonly  |
| 이동형    | 풀스택   | 강의목록 페이지, 결제API     | https://github.com/myucel8108 |
| 이준민    | 풀스택   | 관리자페이지, 강좌 및 회원 관리  | https://github.com/Jxnmin      |
| 유희준    | 풀스택   | 로그인 및 회원가입 관리자페이지   | https://github.com/J-LOOK-J    |
| 최진아    | 풀스택   | 시간표, 학생 마이페이지       | https://github.com/j-a-27 |
| 정우진    | 풀스택   | 자유게시판, 마이 커뮤니티      | https://github.com/jwjmuse1028 |
<br/>
## ERD
<img width="707" alt="티치미 ERD" src="https://user-images.githubusercontent.com/90983846/207294196-cc1379e5-9762-4c01-a1c7-6f8fffa38f5d.png">
