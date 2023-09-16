<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<!-- Bootstrap CSS -->
<!-- Style -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> --%>
<title>Login #3</title>
</head>
<body>
<%@ include file="../top.jsp" %>
  <div class="half">
    <div class="bg order-1 order-md-2" style="background-image: url('${pageContext.request.contextPath}/resources/img/banner/banner-2.jpg');"></div>
    <div class="contents order-2 order-md-1">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5">
              <h3><strong>Login</strong></h3>
              <c:if test="${param.fail ne null}">
			  		<p style="color:red;"><c:out value="아이디 혹은 비밀번호가 틀렸습니다. 다시 시도해주세요."/></p>
			  </c:if>
              </div>
              <form method="post">
                <div class="form-group first">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" placeholder="your-email@gmail.com" id="username" name="username">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" placeholder="Your Password" id="password" name="password">
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0" for="remember"><span class="caption">Remember me</span>
                    <input type="checkbox" id="remember"/>
                    <div class="control__indicator"></div>
                  </label>
                </div>

                <input type="submit" value="Log In" class="genric-btn primary radius" style="cursor:pointer; width:100%;">

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
  
    
    

    <!-- <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script> -->
<%@ include file="../footer.jsp" %>
</body>
</html>