<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao Map</title>
</head>
<body>
<%@ include file="../top.jsp"%>
	<section class="about_history_area section_gap">
         <div class="container">
            <div class="row">
                <div class="col-md-6 d_flex align-items-center">
                     <div class="about_content ">
                        <h6 class="title title_color" style="font-size:20px;">
                        	<span class="icon" style="z-index:1;"><i class="fa fa-bus" aria-hidden="true"></i> 버스</span>
                        </h6>
                        <p style="color:black;">숭례문에서 401번 탑승 후 서울 고속버스터미널로 이동 → 고속버스 탑승 후 강릉 고속버스터미널까지 이동 → 202번 버스 탑승 후 경포해변에서 하차</p>
                        
                        <h6 class="title title_color" style="font-size:20px;">
                        	<span class="icon" style="z-index:1;"><i class="fa fa-train" aria-hidden="true"></i> 기차</span>
                        </h6>
                        <p style="color:black;">서울역에서 KTX 강릉행 탑승 → 5개 역 이동 후 강릉역 하차 → 강릉역에서 202-1번 버스 탑승 후 경포해변에서 하차</p>
                        
                        <h6 class="title title_color" style="font-size:20px;">
                        	<span class="icon" style="z-index:1;"><i class="fa fa-car" aria-hidden="true"></i> 자가용</span>
                        </h6>
                        <p style="color:black;">남산 1호 터널 톨게이트 → 경북고속대로, 한남대교 방면 진입 → 강일 IC에서 서울/양양고속도로 방면으로 진입 → 남양주 톨게이트 → 동산 톨게이트 → 양양 분기점에서 북강릉 IC방면으로 빠짐 → 안현로 방면 좌회전 후 회전교차로에서 직진</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="map" style="width: 500px; height: 567px;"></div>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5e04434af5738ed8de4de34d35ce61d6"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(37.8062, 128.9046), // 지도의 중심좌표
							level : 2
						// 지도의 확대 레벨
						};

						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

						// 마커가 표시될 위치입니다 
						var markerPosition = new kakao.maps.LatLng(37.8061,
								128.9045);

						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							position : markerPosition
						});

						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);

						// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
						// marker.setMap(null);
					</script>
                </div>
            </div>
        </div>
    </section>
<%@ include file="../footer.jsp"%>
</body>
</html>