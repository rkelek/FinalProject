<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>마이페이지</title>

<link href="css/7911bc0a5c62.css" rel="stylesheet">
<link href="css/7e63fa136b7d.css" rel="stylesheet">
<link href="css/facebook.css" rel="stylesheet">
<link href="css/floating.css" rel="stylesheet">
<link href="css/layout_nav.css" rel="stylesheet">
<link href="css/map.css" rel="stylesheet">

</head>
<body class="logged-in client mywishket">

	<br />
	<div id="wrap">
		<div class="page">
			<div class="content">
				<div class="content-header">
					<h3 class="header-text">
						마이페이지 <small class="small-text"></small>
					</h3>
				</div>
				<div class="content-inner">
					<div class="mywishket-project">
						<h4 class="mywishket-project-heading">내 정보</h4>
						<div class="submitted-project">
							<h5 class="submitted-project-heading">
								<a href="/pfinal/pfinal.do?command=m_career">나의 경력</a>
							</h5>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>희사명</th>
										<th>부서</th>
										<th>직위</th>
										<th>입사기간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${d_day}">
										<tr>
											<td>${i.cname}</td>
											<td>${i.part}</td>
											<td>${i.position}</td>
											<td><c:if test="${i.year != 0 }">
							${i.year}년
						</c:if> <c:if test="${i.month != 0 }">
							${i.month}월
						</c:if> <c:if test="${i.day != 0 }">
							${i.day}일
						</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<br />

						<div class="proposal-project">
							<h5 class="proposal-project-heading">
								<a href="/pfinal/pfinal.do?command=m_skill">나의 보유기술</a>
							</h5>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>기술명</th>
										<th>경험</th>
										<th>숙련도</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${skills1}">
										<tr>
											<td>${i.skill}</td>
											<c:choose>
												<c:when test="${i.exp==1}">
													<td>1년미만</td>
												</c:when>
												<c:when test="${i.exp==2}">
													<td>1년 이상 3년 미만</td>
												</c:when>
												<c:when test="${i.exp==3}">
													<td>3년 이상 5년 미만</td>
												</c:when>
												<c:when test="${i.exp==4}">
													<td>5년 이상 10년 미만</td>
												</c:when>
												<c:when test="${i.exp==5}">
													<td>10년 이상</td>
												</c:when>
											</c:choose>
											<c:choose>
												<c:when test="${i.mastery==1}">
													<td>관심있음</td>
												</c:when>
												<c:when test="${i.mastery==2}">
													<td>초급</td>
												</c:when>
												<c:when test="${i.mastery==3}">
													<td>중급</td>
												</c:when>
												<c:when test="${i.mastery==4}">
													<td>고급</td>
												</c:when>
												<c:when test="${i.mastery==5}">
													<td>특급</td>
												</c:when>
											</c:choose>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<br/>

						<div class="contract-project">
							<h5 class="contract-project-heading">
								<a href="/pfinal/pfinal.do?command=m_quali">나의 자격증</a>
							</h5>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>자격증명</th>
										<th>발행기관</th>
										<th>일련번호</th>
										<th>발행일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${qv}">
										<tr>
											<td>${i.q_name}</td>
											<td>${i.q_house}</td>
											<td>${i.q_num}</td>
											<td>${i.q_date}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<br/>

						<div class="contract-project">
							<h5 class="contract-project-heading">
								<a href="/pfinal/pfinal.do?command=myschoolchk">나의 학교</a>
							</h5>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>학교명</th>
										<th>전공</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${qv}">
										<tr>
											<td>${i.q_name}</td>
											<td>${i.q_house}</td>
											<td>${i.q_num}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<br/>

						<div class="contract-project">
							<h5 class="contract-project-heading">
								<a href="/pfinal/pfinal.do?command=project">나의 프로젝트</a>
							</h5>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>☆</th>
										<th>☆</th>
										<th>☆</th>
										<th>☆</th>
									</tr>
								</thead>
								<tbody>
										<tr>
										
										</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="sidebar">
				<div class="inner">
					<div class="user-name-tag">
						<h3 class="user-name-tag-heading"><%=session.getAttribute("id")%>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;
						<a href="/pfinal/pfinal.do?command=free_index">메인</a></h3>
						<div class="user-name-tag-body">
						<img alt="kstar9312 사진" class="img-circle user-img"
								src="/static/img/default_avatar.jpg" />
							<h4 class="username"><%=session.getAttribute("name")%>님의
								마이페이지
							</h4><br/><br/><br/>
							<form method="post" action="/pfinal/pfinal.do">
								<input type="hidden" name="command" value="mypage" /> <input
								class="btn" type="submit" value="관심기술 ">
							</form>
							<form method="post" action="/pfinal/pfinal.do">
								<input type="hidden" name="command" value="prolist" /> <input
								class="btn" type="submit" value="지원 프로젝트 목록 임시 ">
							</form>
						</div>
					</div>
					<div class="project-add-suggestion">
						<h5 class="suggestion-text">
							무료로 프로젝트를<br />등록해 보세요
						</h5>
						<a class="btn btn-client btn-lg btn-project-add"
							href="/pfinal/pfinal.do?command=project">나의 프로젝트</a>
					</div>
					
					<div class="activity">
						<h3 class="activity-heading">정보 수정</h3>
						<div id="activity-body">
							<ul class="activity-unit-list">
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=m_career">나의 경력</a></li>
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=m_skill">나의 보유기술</a></li>
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=m_quali">나의 자격증</a></li>
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=myschoolchk">나의 학교</a></li>
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=project">나의 프로젝트</a></li>
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=m_media">신문사 설정</a></li>
								<li class="empty-activity activity-unit"><a href="/pfinal/pfinal.do?command=m_menu_ui">메뉴 설정</a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


