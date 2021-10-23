<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대시보드 - 그린뷰티 어드민</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/admin/css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
    crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">

    <!-- 사이드 메뉴 시작 -->
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="admin">GreenBeauty Admin</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                    aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                        class="fas fa-search"></i></button>
            </div>
        </form>
        <!-- 네브바 시작-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="admin/login">로그인</a></li>
                    <li><hr class="dropdown-divider"/></li>
                    <li><a class="dropdown-item" href="admin/join">회원가입</a></li>
                   
                </ul>
            </li>
        </ul>
        <!-- 네브바 끝-->
    </nav>
     
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">관리자 메뉴</div>
                        <a class="nav-link" href="admin">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            대시보드
                        </a>
                        <a class="nav-link" href="admin/charts">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            사이트 통계
                        </a>
                        <a class="nav-link" href="admin/user">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            회원관리
                        </a>
                        <a class="nav-link" href="admin/board">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            리뷰관리
                        </a>
                        <a class="nav-link" href="admin/brand">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            브랜드관리
                        </a>
                        <a class="nav-link" href="admin/item">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            제품관리
                        </a>
                    </div>
                </div>
            </nav>
           <!-- 사이드 메뉴 끝-->

        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">대시보드</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">대시보드</li>
                    </ol>
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">회원 관리</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/admin/user">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">리뷰 관리</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/admin/board">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body">브랜드 관리</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/admin/brand">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">제품 관리</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="admin/item">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-area me-1"></i>
                                    월별 리뷰수
                                </div>
                                <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-bar me-1"></i>
                                    월별 회원수
                                </div>
                                <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            회원관리
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>이름</th>
                                        <th>생년월일</th>
                                        <th>성별</th>
                                        <th>아이디</th>
                                        <th>닉네임</th>
                                        <th>피부타입</th>
                                        <th>피부고민</th>
                                        <th>피부톤</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>이름</th>
                                        <th>생년월일</th>
                                        <th>성별</th>
                                        <th>아이디</th>
                                        <th>닉네임</th>
                                        <th>피부타입</th>
                                        <th>피부고민</th>
                                        <th>피부톤</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>강하늘</td>
                                        <td>1990/02/21</td>
                                        <td>남성</td>
                                        <td>31세</td>
                                        <td>기마늘</td>
                                        <td>건성</td>
                                        <td>여드름</td>
                                        <td>중간밝은(22호)</td>
                                    </tr>
                                    <tr>
                                        <td>강호동</td>
                                        <td>1970/07/14</td>
                                        <td>남성</td>
                                        <td>51세</td>
                                        <td>저팔계</td>
                                        <td>지성</td>
                                        <td>혈관</td>
                                        <td>매우차분한</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>강호동</td>
                                        <td>1970/07/14</td>
                                        <td>남성</td>
                                        <td>51세</td>
                                        <td>저팔계</td>
                                        <td>지성</td>
                                        <td>혈관</td>
                                        <td>매우차분한</td>
                                    </tr>
                                    <tr>
                                    <tr>
                                        <td>김희철</td>
                                        <td>1983/07/10</td>
                                        <td>남성</td>
                                        <td>38세</td>
                                        <td>게임오타쿠</td>
                                        <td>복합성</td>
                                        <td>민감성</td>
                                        <td>매우밝은</td>
                                    </tr>
                                    <tr>
                                        <td>강하늘</td>
                                        <td>1990/02/21</td>
                                        <td>남성</td>
                                        <td>31세</td>
                                        <td>기마늘</td>
                                        <td>건성</td>
                                        <td>여드름</td>
                                        <td>중간밝은(22호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>강호동</td>
                                        <td>1970/07/14</td>
                                        <td>남성</td>
                                        <td>51세</td>
                                        <td>저팔계</td>
                                        <td>지성</td>
                                        <td>혈관</td>
                                        <td>매우차분한</td>
                                    </tr>
                                    <tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>강하늘</td>
                                        <td>1990/02/21</td>
                                        <td>남성</td>
                                        <td>31세</td>
                                        <td>기마늘</td>
                                        <td>건성</td>
                                        <td>여드름</td>
                                        <td>중간밝은(22호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>김희철</td>
                                        <td>1983/07/10</td>
                                        <td>남성</td>
                                        <td>38세</td>
                                        <td>게임오타쿠</td>
                                        <td>복합성</td>
                                        <td>민감성</td>
                                        <td>매우밝은</td>
                                    </tr>
                                    <tr>
                                        <td>강하늘</td>
                                        <td>1990/02/21</td>
                                        <td>남성</td>
                                        <td>31세</td>
                                        <td>기마늘</td>
                                        <td>건성</td>
                                        <td>여드름</td>
                                        <td>중간밝은(22호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>김희철</td>
                                        <td>1983/07/10</td>
                                        <td>남성</td>
                                        <td>38세</td>
                                        <td>게임오타쿠</td>
                                        <td>복합성</td>
                                        <td>민감성</td>
                                        <td>매우밝은</td>
                                    </tr>
                                    <tr>
                                        <td>민경훈</td>
                                        <td>1984/10/06</td>
                                        <td>남성</td>
                                        <td>37세</td>
                                        <td>쌈자</td>
                                        <td>중성</td>
                                        <td>홍조</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>민경훈</td>
                                        <td>1984/10/06</td>
                                        <td>남성</td>
                                        <td>37세</td>
                                        <td>쌈자</td>
                                        <td>중성</td>
                                        <td>홍조</td>
                                        <td>밝은(21호)</td>
                                    </tr><tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>민경훈</td>
                                        <td>1984/10/06</td>
                                        <td>남성</td>
                                        <td>37세</td>
                                        <td>쌈자</td>
                                        <td>중성</td>
                                        <td>홍조</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>민경훈</td>
                                        <td>1984/10/06</td>
                                        <td>남성</td>
                                        <td>37세</td>
                                        <td>쌈자</td>
                                        <td>중성</td>
                                        <td>홍조</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                    <tr>
                                        <td>이준기</td>
                                        <td>1982/04/17</td>
                                        <td>남성</td>
                                        <td>39세</td>
                                        <td>뼈군인</td>
                                        <td>중성</td>
                                        <td>해당없음</td>
                                        <td>밝은(21호)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; GreenBeauty 2021</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="/admin/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="/admin/assets/demo/chart-area-demo.js"></script>
    <script src="/admin/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="/admin/js/datatables-simple-demo.js"></script>
</body>
</html>