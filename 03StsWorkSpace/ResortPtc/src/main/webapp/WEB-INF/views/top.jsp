<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 테스트</title>
<style>
#bodiv {
	background-color : lightyellow;
	width : 100%;
	height : 20%;
}
td { 
	font-size:12; 
	text-align:center; 
}
a:link {text-decoration:none; color:black;}
a:visited {text-decoration:none;}
a:hover {text-decoration:none;}
a:active {text-decoration:none;}
</style>
<script>
var muCnt = 5;

function fncShow( pos ) {
	var i = 0;
	for(i; i < muCnt; i++) {
		var obj = document.getElementById("menu" + i);
		var obj2 = document.getElementById("m" + i);
		if(i == pos) {
			obj.style.display = '';
			obj2.style.color = "#ff0000";
		} else {
			obj.style.display = 'none';
			obj2.style.color = "#000000";
		}
	}
}

function fncHide( pos ) {
	var obj = document.getElementById("menu" + pos);
	obj.style.display = 'none';
}
</script>
</head>
<body>
<div id="bodiv">
<table style="width : 750px; margin : auto;">
<td width='150'><a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}/resources/img/logo.jpg" width='140' height='50' border='0'></a>
</td>
<td>
<table cellpadding='0' cellspacing='1' border='0' width='600' height='60'>
	<tr style="height:30px; margin-top:80px;">
		<td width='100' onmouseover='fncShow(0);' id='m0' style="cursor:pointer"><b>리조트소개</b></td>
		<td width='100' onmouseover='fncShow(1);' id='m1' style="cursor:pointer"><b>찾아오기</b></td>
		<td width='100' onmouseover='fncShow(2);' id='m2' style="cursor:pointer"><b>주변여행지</b></td>
		<td width='100' onmouseover='fncShow(3);' id='m3' style="cursor:pointer"><b>예약하기</b></td>
		<td width='100' onmouseover='fncShow(4);' id='m4' style="cursor:pointer"><b>리조트소식</b></td>
		<td width='100'></td>
	</tr>
	<tr height='30'>
		<td colspan='6'>
			<table id='menu0' style="display:none; border:0px; width:600px; height:30px;">
				<tr>
					<td width='0'></td>
					<td width='600' style='text-align:left;'>
						<a href='${pageContext.request.contextPath}/main'>
						<span onmouseover=this.style.color='#ff0000'; onmouseout=this.style.color='#000000';>| 조아 리조트 </span>
						</a>
						<a href='${pageContext.request.contextPath}/a_01'>
						<span onmouseover=this.style.color='#ff0000'; onmouseout=this.style.color='#000000';>| VIP 룸 </span>
						</a>
						<a href='${pageContext.request.contextPath}/a_02'>
						<span onmouseover=this.style.color='#ff0000'; onmouseout=this.style.color='#000000';>| 비즈니스 룸 </span>
						</a>
						<a href='${pageContext.request.contextPath}/a_03'>
						<span onmouseover=this.style.color='#ff0000'; onmouseout=this.style.color='#000000';>| 스탠다드 룸 |</span>
						</a>
					</td>
				</tr>
			</table>
			<table id='menu1' style="display:none; border:0px; width:600px; height:30px;">
				<tr>
					<td width='100'></td>
					<td width='500' style="text-align:left;">
						<a href='${pageContext.request.contextPath}/b_01'>
						<span onmouseover=this.style.color="#ff0000"; onmouseout=this.style.color='#000000'>| 찾아오는길 </span>
						</a>
						<a href='${pageContext.request.contextPath}/b_02'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 대중교통이용 </span>
						</a>
						<a href='${pageContext.request.contextPath}/b_03' >
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 자가용이용 |</span>
						</a>
					</td>
				</tr>
			</table>
			<table id='menu2' style="display:none; border:0px; width:600px; height:30px;">
				<tr>
					<td width='200'></td>
					<td width='400' style='text-align:left;'>
						<a href='${pageContext.request.contextPath}/c_01'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 높아산 </span>
						</a>
						<a href='${pageContext.request.contextPath}/c_02'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 조아해수욕장 </span>
						</a>
						<a href='${pageContext.request.contextPath}/c_03'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 따끈온천 | </span>
						</a>
					</td>
				</tr>
			</table>
			<table id='menu3' style="display:none; border:0px; width:600px; height:30px;">
				<tr>
					<td width='140'></td>
					<td width='600' style='text-align:left;'>
						<a href='${pageContext.request.contextPath}/d_01' >
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 예약상황 </span>
						</a>
						<a href='${pageContext.request.contextPath}/d_02'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 예약하기 </span>
						</a>
						<a href='${pageContext.request.contextPath}/d_03'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 예약변경 </span>
						</a>
						<a href='${pageContext.request.contextPath}/adm_allview'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 관리자페이지 </span>
						</a>
						<a href='${pageContext.request.contextPath}/adm_logout'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 관리자로그아웃 | </span>
						</a>
					</td>
				</tr>
			</table>
			<table id='menu4' style="display:none; border:0px; width:600px; height:30px;">
				<tr>
					<td width='350'></td>
					<td width='250' style='text-align:left;'>
						<a href='${pageContext.request.contextPath}/e_01'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 리조트 소식 </span>
						</a>
						<a href='${pageContext.request.contextPath}/e_02'>
						<span onmouseover=this.style.color='#ff0000' onmouseout=this.style.color='#000000'>| 이용후기 | </span>
						</a>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</td>
</table>
</div>
</body>
</html>