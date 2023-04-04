- 프로젝트 일정
    
    ![일정.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c1695e53-4b64-4597-8693-aa13a47348f8/%EC%9D%BC%EC%A0%95.png)
    
- 유즈케이스 다이어그램
    
    ![호텔 유즈케이스.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e209738a-72d4-4b11-8560-986564f8f06b/%ED%98%B8%ED%85%94_%EC%9C%A0%EC%A6%88%EC%BC%80%EC%9D%B4%EC%8A%A4.png)
    
- 테이블 명세서
    - 회원 테이블
        
        ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6bf93d21-d279-4e19-9487-a14a6cafe4e5/Untitled.png)
        
    - 관리자 테이블
        
        ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/95ef819a-9e7c-4880-b911-660c541db463/Untitled.png)
        
    - 예약 테이블
        
        ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/949eaf27-6e45-40cc-935e-cc6a41b8bb37/Untitled.png)
        
    - 문의 테이블
        
        ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/eb3e0727-c355-4a3d-b2f8-c6f52500e5d1/Untitled.png)
        
    - 문의 답변 테이블
        
        ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/79671cd4-3bf1-4718-99c8-2cf8186bb98b/Untitled.png)
        
- 메뉴 구조
    - 회원 메뉴
        
        ![회원메뉴.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c691fbf9-e2e2-47d0-a64e-d249deb6e7a8/%ED%9A%8C%EC%9B%90%EB%A9%94%EB%89%B4.png)
        
    - 관리자 메뉴
        
        ![관리자메뉴.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7c3fd19f-adac-495d-98c9-6612ef1aa264/%EA%B4%80%EB%A6%AC%EC%9E%90%EB%A9%94%EB%89%B4.png)
        
- 프로그램 시연 사진 및 설명
    
    
    - 메인페이지
    
           —  깔끔하고 편하게 쉴 수 있는 느낌을 주고 싶어 서 아래와 같이 구성해보았습니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2dc0e23d-7e20-4172-8b26-6e905e52948d/Untitled.png)
    
    - 메뉴
    
           — 마우스호버를 사용하여 무엇을 선택하는지 반응형 메뉴 구성하였습니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4e0a5e1e-b4a4-4be4-9723-58cb71e2c539/Untitled.png)
    
    - 회원가입
    
           — 각 항목별로 유효성 검사를 실시하였으며, 중복 확인 또한 가능합니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/442ef797-6290-4877-a95d-df0e60a24427/Untitled.png)
    
    - 로그인
    
           — 로그인 또한 유효성 검사를 실시하였으며, 로그인 성공 시 session에 값을 저장하여     
    
               메뉴가 변경됩니다
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/820393b6-adf2-4696-b21a-9f93a86c3446/Untitled.png)
    
    - 예약 페이지
    
          — 예약은 로그인 시 가능하며, 체크인 날짜와 체크아웃 날짜를 선택하여 확인을 누르면
    
              날짜의 기본값이 1박이였던 것이 체크인과 체크아웃의 날짜를 계산하여 몇 박인지 
    
              나오게 됩니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fcb27a54-37be-47f9-8a9a-8a5f51dd5bec/Untitled.png)
    
     
    
    - 예약 진행
    
           — 예약 진행 버튼을 누르면  hidden으로 숨겨진 div박스가 나오며, 
    
               각 항목별로 유효성 검사와 해당 날짜와 방번호를 비교하여 DB에 예약 데이터가 있다면 
    
          예약 일정을 변경해달라고 합니다.
    
     
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5b4cdb61-cf85-43b8-9404-cdf594b32735/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/081b1151-eb05-41b5-9ab4-125b1fe3542d/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ae0c3385-8605-4c58-8922-154cd36024e2/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2deb581a-b893-48cb-ba72-86104319e46c/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/52c84c11-bf67-4040-a5c4-a40800ad80e6/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b13c74d2-2a51-43d0-b411-2bf2d5dc6b15/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0c7704b2-1aba-4fe2-b001-9716f0a17075/Untitled.png)
    
    - 고객 문의
    
           — 사용자의 편의성을 위해 회원 문의 폼 밑에 사용자가 문의한 내용도 보이게 
    
               구현하였습니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5107b74f-ec0a-4242-85b8-f18d43fd8771/Untitled.png)
    
    - 찾아오시는 길
    
          — kakao map API를 사용하여 호텔 위치를 마커로 표시하였습니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/17d001ab-bc1b-4d67-aec1-ec85980df915/Untitled.png)
    
    - 관리자 예약 관리
    
           — 필요한 간단한 정보들을 출력해보았습니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1bb41ff6-d5e3-463f-8c13-9a9c9ec1cb5b/Untitled.png)
    
    - 회원 관리
    
          — Ajax를 활용하여 비동기 방식을 통해 회원 목록을 출력하였습니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8b0c9e21-056c-47cb-9cbc-16fd409f1adf/Untitled.png)
    
    - 문의 답변
    
           — 문의에 대한 내용이 출력되며 답변을 누르면 답변 폼에 자동으로 
    
               문의글 번호와 작성한 ID가 들어가며, 제목과 내용을 입력하면 등록됩니다.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8c3b39e4-0486-438f-8ce5-cc5b75739271/Untitled.png)
    

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
