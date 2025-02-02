# ThirdProject_End
ShoppingMall Project

# 개발환경
- FrontEnd
  - HTML 5
  - CSS 3
  - JavaScript
  - jQuery
  - Ajax
  - jsp
  - BootStrap
- BackEnd
  - java
  - Spring
  - lombok
  - Apache Tomcat
  - Mybatis
- Tool
  - eclipse
  - Oracle. Sql Developer
  - Notion
  - Erd Cloud


# 맡은 업무 

장바구니, 결제 Part BE , FE 참여 100
- 장바구니 추가 기능 개발
- 장바구니 삭제 기능 개발 
- 장바구니 조회 기능 개발
- 장바구니 내 수량 수정 기능 개발
- 상품 결제 기능 개발
   - KakaoPay API 활용 결제 기능 개발
   - TossPayments API 활용 결제 기능 개발
   - KG Inicis API 활용 결제 기능 개발
     
- 주문 취소 기능 개발 : 주문취소 시 주문내역에서 상태 변경 
- 배송지 수정(변경) 기능 개발
- 주문 완료 기능 개발 : 완료 후 주문내역 전달 및 장바구니에서 삭제
- 마이페이지 내 주문 내역 조회 기능 개발
- 위 기능 관련 모든 페이지 css 화면 구현

# 장바구니 기능 구현 
- 원하는 상품을 선택 후 수량 선택 후 장바구니 담기 가능
- 장바구니에 담은 상품들을 장바구니를 통해 조회, 수량 수정, 삭제 가능
- 장바구니를 통해 일괄주문, 선택주문 가능
- 배송을 위한 배송지 수정 가능 -> 고객당 하나의 배송지만 등록 가능하도록 구현
<img width="800" alt="스크린샷 2024-01-01 오후 8 49 46" src="https://github.com/JunyungLee/Okitchen/assets/139120379/1e13d17a-be8f-4f0c-9dc7-2f083930c7e4">
<img width="800" alt="스크린샷 2024-01-01 오후 8 51 33" src="https://github.com/JunyungLee/Okitchen/assets/139120379/17797b84-f0ee-41ed-b9e3-4d46762a41f5">

# 결제 API 사용
- 테스트 결제를 할 수 있는 결제 API 연결을 통해 파라미터에 값 전달 및 결제 될 수 있도록 기능 구현
<img width="800" alt="스크린샷 2024-01-01 오후 8 56 56" src="https://github.com/JunyungLee/Okitchen/assets/139120379/941590b7-efd5-48a6-bed1-6b14fd360df3">
<img width="800" alt="스크린샷 2024-01-01 오후 8 57 12" src="https://github.com/JunyungLee/Okitchen/assets/139120379/f165a8aa-13f6-4a5b-824c-def3bc884f3d">
<img width="800" alt="스크린샷 2024-01-01 오후 8 57 26" src="https://github.com/JunyungLee/Okitchen/assets/139120379/603f1469-7f97-4018-96a3-37760f42cc15">



# 참고한 사이트
- 마켓컬리 : https://www.kurly.com/main
- 오늘의 집 : https://ohou.se/store?utm_source=google_shop&utm_campaign=uc_web-all-all-google_shop_pmax_all_purchase&utm_term=&utm_content=ssc&affect_type=UtmUrl&gclid=CjwKCAiAg9urBhB_EiwAgw88mWXu_RVcgt4X9dCZgo0bglyoqzS-U2fQ7GZdQEPlSu7ihLV5uSehRBoC_NwQAvD_BwE
- 네이버 스마트 스토어 센터 : https://sell.smartstore.naver.com/#/home/about
- 아임포트 사용 -> 결제 api 사용 : https://admin.portone.io/
- kakaopay api 이해하기 : https://developers.kakao.com/docs/latest/ko/kakaopay/common
