<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>연관키워드 관리</title>
  <!-- Bootstrap core CSS-->
  <link href="./Resouces/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="./Resouces/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="./Resouces/css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
   <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="00_Home.jsp">메타소프트</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">스케줄러 관리</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="01_S_Add.jsp">스케줄러 추가</a>
            </li>
            <li>
                <a href="02_S_List.jsp">스케줄러 목록</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="03_Linkage.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">연관키워드 관리</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="04_Chart.jsp">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">분석데이터 차트</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
       
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">연관키워드 관리</a>
        </li>
      </ol>
      
      
      
      
      <!-- 내용 -->
      
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<tr>
									<td> <select name="interest">
									<%
										for (int i = 1; i <= 24; i++) {
									%>
									<option value="<%=i%>">스케줄러 <%=i%></option>
									<%
										}
									%>

							</select></td>
									<td> <input type="radio"
								name="optionsRadios1" /> 주제</td>
									<td> <input type="radio"
								name="optionsRadios2" /> 의미</td>
									<td>
				<button class="btn btn-info">확인</button>
			</td>
								</tr>
								<tr>
								<td colspan=3> </td>
																		<td ><button class="btn btn-info">추가 <button class="btn btn-info">삭제 <button class="btn btn-info">설정?</td>
									
								</tr>
</table>
      
      
      
      
      
      
      
      
      
      
      
      
      
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>R&D 학생연구원</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Bootstrap core JavaScript-->
    <script src="./Resouces/vendor/jquery/jquery.min.js"></script>
    <script src="./Resouces/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="./Resouces/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="./Resouces/vendor/chart.js/Chart.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="./Resouces/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="./Resouces/js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
