<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="">
<meta name="author" content="">
<title>스케줄러 목록</title>
<!-- Bootstrap core CSS-->
<link href="./Resouces/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="./Resouces/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="./Resouces/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="./Resouces/css/sb-admin.css" rel="stylesheet">
<script>
function move() {
    var elem = document.getElementById("myBar"); 
    var width = 10;
    var id = setInterval(frame, 10);
    function frame() {
        if (width >= 100) {
            clearInterval(id);
        } else {
            width++; 
            elem.style.width = width + '%'; 
            document.getElementById("label").innerHTML = width * 1 + '%';
        }
    }
}
</script>
<style>
#myProgress {
	position: relative;
	width: 100%;
	height: 30px;
	background-color: grey;
}

#myBar {
	position: absolute;
	width: 1%;
	height: 100%;
	background-color: green;
}
#label {
    text-align: center; /* If you want to center it */
    line-height: 30px; /* Set the line-height to the same as the height of the progress bar container, to center it vertically */
    color: white;
}
</style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="00_Home.jsp">메타소프트</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Example Pages"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseExamplePages" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-file"></i> <span class="nav-link-text">스케줄러
							관리</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseExamplePages">
						<li><a href="01_S_Add.jsp">스케줄러 추가</a></li>
						<li><a href="02_S_List.jsp">스케줄러 목록</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Dashboard"><a class="nav-link" href="03_Linkage.jsp">
						<i class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">연관키워드
							관리</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Charts"><a class="nav-link" href="04_Chart.jsp"> <i
						class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">분석데이터
							차트</span>
				</a></li>
			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>

		</div>
	</nav>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item active">스케줄러 관리</li>
				<li class="breadcrumb-item">스케줄러 목록/수정</li>
			</ol>
			<!-- Example DataTables Card-->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i>등록된 스케줄러 목록
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>현재상태</th>
									<th>즐겨찾기</th>
									<th>스케줄러 이름</th>
									<th>스케줄러 설명</th>
									<th>실행주기</th>
									<th>진행상태</th>
									<th>생성날짜</th>
									<th>수정날짜</th>
									<th>종료날짜</th>
									<th>수정</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>현재상태</th>
									<th>즐겨찾기</th>
									<th>스케줄러 이름</th>
									<th>스케줄러 설명</th>
									<th>실행주기</th>
									<th>진행상태</th>
									<th>생성날짜</th>
									<th>수정날짜</th>
									<th>종료날짜</th>
									<th>수정</th>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>
									<%String code = "";
									code="end";
									if(code.equals("ing")){%>
									<button class="btn btn-success">실행중</button>
									<%}else if(code.equals("stop")){ %>
									<button class="btn btn-danger">중지중</button>
									<%}else if(code.equals("end")){ %>
									<button class="btn btn-default" disabled="disabled">대기중</button>
									<%} %>
									</td>
									<td><button class="btn btn-info" id="btck">별</button></td>
									<td>???</td>
									<td>???</td>
									<td><select name="interest">
											<%
												for (int i = 1; i <= 31; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>

									</select>일 마다 <select name="interest">
											<%
												for (int i = 1; i <= 24; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>

									</select>시 <br>(다음 실행 : 2018/05/09)</td>
									<td>
										<!-- <div id="myProgress">
											<div id="myBar">
												<div id="label">10%</div>
											</div>
										</div> -->
										프로그레스바
									</td>
									<td>2018/04/25</td>
									<td>2018/05/24</td>
									<td>2018/12/25</td>
									<td><button class="btn btn-info" id="btck">수정</button></td>

								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<footer class="sticky-footer">
			<div class="container">
				<div class="text-center">
					<small>R&D 학생연구원</small>
				</div>
			</div>
		</footer>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>

		<!-- Bootstrap core JavaScript-->
		<script src="./Resouces/vendor/jquery/jquery.min.js"></script>
		<script src="./Resouces/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="./Resouces/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script src="./Resouces/vendor/datatables/jquery.dataTables.js"></script>
		<script src="./Resouces/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="./Resouces/js/sb-admin.min.js"></script>
		<!-- Custom scripts for this page-->
		<script src="./Resouces/js/sb-admin-datatables.min.js"></script>
	</div>
</body>

</html>
