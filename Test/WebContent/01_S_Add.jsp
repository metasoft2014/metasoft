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
  <title>스케줄러 추가</title>
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
        <li class="breadcrumb-item">
          <a href="index.html">스케줄러</a>
        </li>
        <li class="breadcrumb-item active">스케줄러 추가</li>
      </ol>
    
              <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script> 
<div class="container">
    <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-10 col-sm-offset-3 col-md-offset-4">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">
                        <div class="input-group">
                            <input type="hidden" name="search_param" value="name" id="search_param">
                            <input id="searchText"type="text" class="form-control" name="q" placeholder="Search Keyword" id="search_key" value="">
                            <span class="input-group-btn">
                                <a  id="x" class="btn btn-default hide" href="#" title="Clear"><i class="glyphicon glyphicon-remove"></i> </a>
                                <button class="btn btn-info" type="submit">  Search  </button>
                            </span>
                        </div>
                    </div>

                   
                       

                </div>
            </div>
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="">
                <ul id="autocompleteTest">

                </ul>
            </div>
        </div>
    </div>
</div>

              
              
              
              
              <div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-10 col-sm-offset-3 col-md-offset-4">
            <div class="panel panel-default">
            <div class="panel-heading">스케줄러 이름</div>
            <li class="list-group-item">                     
                            <input id="name"  type="textbox"/>                       
                    </li>
                     <div class="panel-heading">스케줄러 설명</div>
            <li class="list-group-item">                     
                            <input id="name"  type="textbox"/>
                      
                    </li>
                     <div class="panel-heading">키워드 수집 날짜</div>
            <li class="list-group-item">                     
                            <input id="term1"  type="textbox"/> ~ <input id="term2"  type="textbox"/>
                            
                      
                    </li>
                    
                <!-- Default panel contents -->
                <div class="panel-heading">수집할 채널 선택</div>
            
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">
                        페이스북
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionDefault" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionDefault" class="label-default"></label>
                        </div>
                  
                    <li class="list-group-item">
                        트위터
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionPrimary" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionPrimary" class="label-primary"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        구글뉴스
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionSuccess" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionSuccess" class="label-success"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        다음
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionInfo" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionInfo" class="label-info"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        인스타그램
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionWarning" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionWarning" class="label-warning"></label>
                        </div>
                    </li>
                   
                </ul>
                
                                     <div class="panel-heading">스케줄러 반복 설정</div>
            <li class="list-group-item">                     
                            주기 <input type="radio" name="optionsRadios1"/> 기간 <input type="radio" name="optionsRadios2"/>
                            
                      
                    </li>
                    <div class="panel-heading">스케줄러 실행 주기 설정</div>
            <li class="list-group-item">                     
                            <select name="interest">
                            <% 
                            for(int i=1; i<=30; i++){
                            	%>
                            	<option value="<%=i%>"><%=i%></option>
                            	<%
                            }
                            %>
                                
                        </select>일 마다 
                          <select name="interest">
                            <% 
                            for(int i=1; i<=24; i++){
                            	%>
                            	<option value="<%=i%>"><%=i%></option>
                            	<%
                            }
                            %>
                                
                        </select>시에
                                                   
                      
                    </li>
            </div>            
        </div>
    </div>
</div>
              
              
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>메타소프트 2018</small>
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
    <!-- Custom scripts for all pages-->
    <script src="./Resouces/js/sb-admin.min.js"></script>
    
  </div>
</body>

</html>
