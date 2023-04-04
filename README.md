# 🏬 호텔 예약 프로그램

Back-end: Apache Tomcat, MariaDB, eclipse
Front-end: AJAX, CSS, HTML, JS
Toolkit: KakaoMap
날짜: 2023년 1월 11일 → 2023년 1월 15일
사람: 호영 이
상태: 완료

- 프로젝트 일정
    
    ![일정.png](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/%25EC%259D%25BC%25EC%25A0%2595.png)
    
- 유즈케이스 다이어그램
    
    ![호텔 유즈케이스.png](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/%25ED%2598%25B8%25ED%2585%2594_%25EC%259C%25A0%25EC%25A6%2588%25EC%25BC%2580%25EC%259D%25B4%25EC%258A%25A4.png)
    
- 테이블 명세서
    - 회원 테이블
        
        ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled.png)
        
    - 관리자 테이블
        
        ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%201.png)
        
    - 예약 테이블
        
        ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%202.png)
        
    - 문의 테이블
        
        ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%203.png)
        
    - 문의 답변 테이블
        
        ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%204.png)
        
- 메뉴 구조
    - 회원 메뉴
        
        ![회원메뉴.png](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/%25ED%259A%258C%25EC%259B%2590%25EB%25A9%2594%25EB%2589%25B4.png)
        
    - 관리자 메뉴
        
        ![관리자메뉴.png](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/%25EA%25B4%2580%25EB%25A6%25AC%25EC%259E%2590%25EB%25A9%2594%25EB%2589%25B4.png)
        
- 프로그램 시연 사진 및 설명
    
    
    - 메인페이지
    
           —  깔끔하고 편하게 쉴 수 있는 느낌을 주고 싶어 서 아래와 같이 구성해보았습니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%205.png)
    
    - 메뉴
    
           — 마우스호버를 사용하여 무엇을 선택하는지 반응형 메뉴 구성하였습니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%206.png)
    
    - 회원가입
    
           — 각 항목별로 유효성 검사를 실시하였으며, 중복 확인 또한 가능합니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%207.png)
    
    - 로그인
    
           — 로그인 또한 유효성 검사를 실시하였으며, 로그인 성공 시 session에 값을 저장하여     
    
               메뉴가 변경됩니다
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%208.png)
    
    - 예약 페이지
    
          — 예약은 로그인 시 가능하며, 체크인 날짜와 체크아웃 날짜를 선택하여 확인을 누르면
    
              날짜의 기본값이 1박이였던 것이 체크인과 체크아웃의 날짜를 계산하여 몇 박인지 
    
              나오게 됩니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%209.png)
    
     
    
    - 예약 진행
    
           — 예약 진행 버튼을 누르면  hidden으로 숨겨진 div박스가 나오며, 
    
               각 항목별로 유효성 검사와 해당 날짜와 방번호를 비교하여 DB에 예약 데이터가 있다면 
    
          예약 일정을 변경해달라고 합니다.
    
     
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2010.png)
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2011.png)
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2012.png)
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2013.png)
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2014.png)
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2015.png)
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2016.png)
    
    - 고객 문의
    
           — 사용자의 편의성을 위해 회원 문의 폼 밑에 사용자가 문의한 내용도 보이게 
    
               구현하였습니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2017.png)
    
    - 찾아오시는 길
    
          — kakao map API를 사용하여 호텔 위치를 마커로 표시하였습니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2018.png)
    
    - 관리자 예약 관리
    
           — 필요한 간단한 정보들을 출력해보았습니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2019.png)
    
    - 회원 관리
    
          — Ajax를 활용하여 비동기 방식을 통해 회원 목록을 출력하였습니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2020.png)
    
    - 문의 답변
    
           — 문의에 대한 내용이 출력되며 답변을 누르면 답변 폼에 자동으로 
    
               문의글 번호와 작성한 ID가 들어가며, 제목과 내용을 입력하면 등록됩니다.
    
    ![Untitled](%F0%9F%8F%AC%20%E1%84%92%E1%85%A9%E1%84%90%E1%85%A6%E1%86%AF%20%E1%84%8B%E1%85%A8%E1%84%8B%E1%85%A3%E1%86%A8%20%E1%84%91%E1%85%B3%E1%84%85%E1%85%A9%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%B7%2072347fe6f4944804b6e54d6e720bbc8c/Untitled%2021.png)
    

<aside>
💡 예약 기능에 필요한 날짜 중복 확인 쿼리문

String query = 

“SELECT COUNT(*) FROM hotelreservation WHERE roomnumber = ”  + roomnumber          

 + “’AND (checkin BETWEEN’” + checkin  “’AND’” + checkout +”’” + 

 + “OR checkout BETWEEN '" + checkin + "' AND '" + checkout + "'“

 + "OR '" + checkin +"' BETWEEN checkin AND checkout “

 + "OR '" + checkout + "' BETWEEN checkin AND checkout)";

AND ( DB에 있는 데이터의 시작 시각 BETWEEN 신규 예약 시작 시각 AND 신규 예약 종료 시각)

OR ( DB에 있는 데이터의 종료 시각 BETWEEN 신규 예약 시작 시각 AND 신규 예약 종료 시각)

OR ( 신규 예약 시작 시각 BETWEEN DB에 있는 데이터의 시작 시각 AND DB에 있는 데이터의 종료 시각 )

OR ( 신규 예약 종료 시각 BETWEEN DB에 있는 데이터의 시작 시각 AND DB에 있는 데이터의 종료 시각 )

컬럼명 BETWEEN 시작 시각 AND 종료 시각 = 컬럼명 >= 시작 시각 AND 컬럼명 <= 종료시각

</aside>

## 😃소감

- 호텔 사이트에 들어갔을 때 편안하게 쉴 수 있다는 느낌을 주기 위해서는 사용자의 경험(UX)가 중요하다는 것을 알았습니다. 사용자들이 한 눈에 보기 쉽고 편하게 예약하기 위해 필요한 요소를 계속하여 찾으며 진짜 필요한지 고민하면서 줄여나가야 했습니다.

      앞으로도 더 나은 사용자 경험을 제공하기 위해 많은 노력해야겠는 것을 알았습니다.
