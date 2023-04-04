# 🏬 호텔 예약 프로그램

날짜: 2023년 1월 11일 → 2023년 1월 15일

- 프로젝트 일정
    ![%EC%9D%BC%EC%A0%95](https://user-images.githubusercontent.com/116658760/229668366-ffb2204f-d614-47b3-9dc2-a3b43bd69431.png)
    
- 유즈케이스 다이어그램
    ![%ED%98%B8%ED%85%94_%EC%9C%A0%EC%A6%88%EC%BC%80%EC%9D%B4%EC%8A%A4](https://user-images.githubusercontent.com/116658760/229668412-b4ff74e6-d4b9-4c4f-88f4-b3e8578b618c.png)

- 테이블 명세서
![Untitled](https://user-images.githubusercontent.com/116658760/229668797-5452c3ce-7b73-4dfb-b909-660d46682e32.png)
![Untitled 1](https://user-images.githubusercontent.com/116658760/229668808-5acc3a91-dc44-4acf-8c6b-4a3869fe1094.png)
![Untitled 2](https://user-images.githubusercontent.com/116658760/229668810-a655e146-60b1-486a-b26e-aa1c332ce82b.png)
![Untitled 3](https://user-images.githubusercontent.com/116658760/229668815-de391c6b-d79d-4b2a-9db9-0dfb674ba44e.png)
![Untitled 4](https://user-images.githubusercontent.com/116658760/229668816-12ba110a-e5b8-4f34-8a85-ce75064afb70.png)

- 메뉴 구조
    - 회원 메뉴
        ![%ED%9A%8C%EC%9B%90%EB%A9%94%EB%89%B4](https://user-images.githubusercontent.com/116658760/229668871-3ac8142d-d98d-4814-8284-b7c011883458.png)


    - 관리자 메뉴
    ![%EA%B4%80%EB%A6%AC%EC%9E%90%EB%A9%94%EB%89%B4](https://user-images.githubusercontent.com/116658760/229668886-ed9dc241-b500-4fdf-9def-1b7bf11bd6a6.png)

- 프로그램 시연 사진 및 설명
    
    
    - 메인페이지
    
           —  깔끔하고 편하게 쉴 수 있는 느낌을 주고 싶어 서 아래와 같이 구성해보았습니다.
    
    ![Untitled 5](https://user-images.githubusercontent.com/116658760/229669007-5ac1ddb3-8aef-46a4-be66-96cb663b1ff8.png)

    - 메뉴
    
           — 마우스호버를 사용하여 무엇을 선택하는지 반응형 메뉴 구성하였습니다.
    
![Untitled 6](https://user-images.githubusercontent.com/116658760/229669032-6c276a14-05e1-4788-b824-b922f82b661f.png)

    
    - 회원가입
    
           — 각 항목별로 유효성 검사를 실시하였으며, 중복 확인 또한 가능합니다.
    ![Untitled 7](https://user-images.githubusercontent.com/116658760/229669040-2d40ce07-6025-4efc-8377-c26af07df450.png)

 
    - 로그인
    
           — 로그인 또한 유효성 검사를 실시하였으며, 로그인 성공 시 session에 값을 저장하여     
    
               메뉴가 변경됩니다
    ![Untitled 8](https://user-images.githubusercontent.com/116658760/229669067-a5c3223d-d1a8-4b77-94a3-32223db29649.png)

 
    
    - 예약 페이지
    
          — 예약은 로그인 시 가능하며, 체크인 날짜와 체크아웃 날짜를 선택하여 확인을 누르면
    
              날짜의 기본값이 1박이였던 것이 체크인과 체크아웃의 날짜를 계산하여 몇 박인지 
    
              나오게 됩니다.
    
    ![Untitled 9](https://user-images.githubusercontent.com/116658760/229669073-0ff15073-c308-4c99-a223-397d537cf5d8.png)

    
     
    
    - 예약 진행
    
           — 예약 진행 버튼을 누르면  hidden으로 숨겨진 div박스가 나오며, 
    
               각 항목별로 유효성 검사와 해당 날짜와 방번호를 비교하여 DB에 예약 데이터가 있다면 
    
          예약 일정을 변경해달라고 합니다.
    
     
    
   ![Untitled 10](https://user-images.githubusercontent.com/116658760/229669108-1559689d-562b-4d0b-ad71-80a19079338d.png)
![Untitled 11](https://user-images.githubusercontent.com/116658760/229669113-5c182d7d-2c8d-4e81-ad76-3c943b5dff7f.png)
![Untitled 12](https://user-images.githubusercontent.com/116658760/229669117-cf25d1b5-1ad8-4ed6-a877-b7af5d0e5186.png)
![Untitled 13](https://user-images.githubusercontent.com/116658760/229669119-c1329d4f-e769-45a1-b41b-63c76fd0da77.png)
![Untitled 14](https://user-images.githubusercontent.com/116658760/229669123-122a2b08-297b-432d-8996-35c9c75860cd.png)
![Untitled 15](https://user-images.githubusercontent.com/116658760/229669126-75c76797-9c59-4b78-879e-9fa2c35a14e9.png)
![Untitled 16](https://user-images.githubusercontent.com/116658760/229669128-e7bd0f50-5cd3-4bf1-bb62-55c4836be37d.png)

    
    - 고객 문의
    
           — 사용자의 편의성을 위해 회원 문의 폼 밑에 사용자가 문의한 내용도 보이게 
    
               구현하였습니다.
    
    ![Untitled 17](https://user-images.githubusercontent.com/116658760/229669163-a6fdf21e-1537-4296-9988-0e07219ddf2e.png)

    - 찾아오시는 길
    
          — kakao map API를 사용하여 호텔 위치를 마커로 표시하였습니다.
    
   ![Untitled 18](https://user-images.githubusercontent.com/116658760/229669184-860a84a2-f5a3-42bf-b219-7a47470767a0.png)

    
    - 관리자 예약 관리
    
           — 필요한 간단한 정보들을 출력해보았습니다.
    ![Untitled 19](https://user-images.githubusercontent.com/116658760/229669195-00508bf3-30bd-43ee-a315-3b2fb1d93768.png)

    - 회원 관리
    
          — Ajax를 활용하여 비동기 방식을 통해 회원 목록을 출력하였습니다.
    ![Untitled 20](https://user-images.githubusercontent.com/116658760/229669226-38bbc963-97ae-4ade-82be-346839121285.png)

    
    
    - 문의 답변
    
           — 문의에 대한 내용이 출력되며 답변을 누르면 답변 폼에 자동으로 
    
               문의글 번호와 작성한 ID가 들어가며, 제목과 내용을 입력하면 등록됩니다.
    ![Untitled 21](https://user-images.githubusercontent.com/116658760/229669263-6ea62dcc-c5be-450e-82d0-0cb4b9bfcaa7.png)

   
    

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
