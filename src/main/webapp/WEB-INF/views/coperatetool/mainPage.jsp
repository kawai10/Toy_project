<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Toy Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
		<link rel="stylesheet" href="../resources/css/projectTool.css">
	
    <style type="text/css">
        html {
            height: 100vh;
        }

        body {
            margin: 0;
            padding: 0;
            height: 100%;
            background-repeat: no-repeat;
            background-size: cover;
            background-blend-mode: normal, lighten, soft-light;
            background-attachment: fixed;
        }

        #wrapper {
            position: relative;
            min-height: 100%;
        }

        header {
            background-color: #ffffff;
        }

        #container {
            padding: 20px;
            height: auto;
            margin-left: 330px;
        }

        footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 30px;
            background: #fff;
        }

        #xx {
            text-align: center;
            justify-content: center;
        }

        li ul li:hover {
            color: #00C473;
        }

        a {
            text-decoration-line: none;
            color: #000000;
        }

        .nav-link {
            color: black;
        }

        .nav-link:hover {
            color: #00C473;
        }

        .sidenav {
            background:#fff;
            background-size: contain;
            position: fixed;
            width: 290px;
            height: 100%;
        }

        .sidenavli {
            list-style-type: none;
            text-transform: uppercase;
            font-weight: bold;
            flex-grow: 1;
            color: black;
        }
 
    </style>
    <script type="text/javascript">
    function viewToDo(index) {
		
		var room_no = ${room_no};

		var number = "tdboard_no" + index;
		var tdboard_no = document.getElementById(number).value;

		var url = "./detailViewToDo.do?room_no="+room_no + "&tdboard_no=" + tdboard_no;
		
		var viewToDo = window.open(url, "popUp", "width=700,height=400,top=150, left=500");
		
	}
    
    function coviewToDo(index) {
		
		var room_no = ${room_no};

		var number = "tdboard_no_co" + index;
		var tdboard_no= document.getElementById(number).value;

		var url = "./detailViewToDo.do?room_no="+room_no + "&tdboard_no=" + tdboard_no;
		
		var viewToDo = window.open(url, "popUp", "width=700,height=400,top=150, left=500");
		
	}

    </script>

</head>

<body>
    <div id="wrapper">
        <nav class="col-sm-6 sidenav" style="border-right:1px solid #BBBBBB;position: absolute; ">
            <h5 style="padding-top: 20px; padding-left: 55px; font-weight:800;"><i class="bi bi-stack" style="color: #00C473;"></i> TOY PROJECT</h5>
            <hr>
           
            <div class="row">
                <div class="col-3" style="align-self: center; text-align: center; margin-left: 20px; margin-right: 10px;">
                    <i class="bi bi-person-bounding-box" style="font-size: 50px;"></i>
                </div>
                <div class="col" style="display:inline-grid; font-size: 0.8rem; padding: 0px; align-self: center ">
                    <span style="font-weight: bold;"><i class="bi bi-person-fill" style="color:#911F27"></i> ${sessionUser.member_name }</span> 
                    <span style="font-weight: bold; color: green;"><i class="bi bi-envelope"></i> ${sessionUser.member_id }</span>
                   	<c:choose>
						<c:when test="${sessionUser.member_no eq memberNoByRoomNo }">
							<i class="bi bi-award" style="color:red;"><strong>??????</strong></i>
						</c:when>
						<c:otherwise>
							<strong>??????</strong>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
            <hr>
           <ul class="sidenavli">
                <li><span style="font-weight:900; color: #acacac;"> Menu</span></li>
                <li style="margin-top: 10px; margin-bottom: 10px;"><a href="./coperate.do?room_no=${room_no }"><i class="bi bi-house-door"></i> Home</a></li>
                
                <li class="dropdown" style="margin-top: 10px; margin-bottom: 10px;">
                <a href="#board2" data-bs-toggle="collapse"><i class="bi bi-clipboard-data"></i> Board <i class="bi bi-arrow-down"></i></a>
                   <div class="collapse" id="board2">
                   <ul class="btn-toggle-nav list-unstyled fw-normal small">
                     <c:forEach items="${pbcCategory }" var="boardCategory">
                     <li><a class="nav-link" href="./projectBoardPage.do?category_no=${boardCategory.categoryVo.category_no }&ca_name=${boardCategory.categoryVo.ca_name }&room_no=${room_no}"> <i class="bi bi-clipboard-data">
                     </i> ${boardCategory.categoryVo.ca_name }</a></li>
                  </c:forEach> 
                   </ul>
                 </div>
                </li>

				<li class="dropdown" style="margin-top: 10px; margin-bottom: 10px;">
                   <a href="#channel" data-bs-toggle="collapse"><i class="bi bi-chat-dots-fill" style="color: #FFC93C;">
                      </i> <span>Chatting Room</span> <i class="bi bi-arrow-down"></i>
                   </a>
                     <div class="collapse" id="channel">
                       <ul class="btn-toggle-nav list-unstyled fw-normal small">
                        <c:forEach items="${selectChannel }" var="selectChannel">
                        <a class="nav-link" href="./chattingPage.do?channel_no=${selectChannel.channelVo.channel_no }&channel_name=${selectChannel.channelVo.channel_name }&room_no=${room_no}"> <i class="bi bi-chat-dots-fill" style="color: #FFC93C;">
                      </i> ${selectChannel.channelVo.channel_name }</a>
                     </c:forEach> 
                      </ul>
                 </div>
                </li>
            </ul>

            <ul class="sidenavli" style="margin-top: 30px;">
                <li><span style="font-weight:900; color: #acacac;">Plan</span></li>
                <li style="margin-top: 10px; margin-bottom: 10px;"><a href="./planPage.do?room_no=${room_no}"><i class="bi bi-bar-chart-line-fill" style="color: #911F27;"></i> To-Do</a></li>
                <li style="margin-top: 10px; margin-bottom: 10px;"><a href="./calendarPage.do?room_no=${room_no}"><i class="bi bi-calendar-check" style="color: #290FBA;"></i> Calendar</a></li>
            </ul>

            <ul class="sidenavli" style="margin-top: 30px;">
                <li><span style="font-weight:900; color: #acacac;">Information</span></li>
                <li style="margin-top: 10px; margin-bottom: 10px;"><a href="./projectMyPage.do?room_no=${room_no }&member_no=${sessionUser.member_no}"><i class="bi bi-info-square-fill"></i> My Page</a></li>
            </ul>

			<c:if test="${sessionUser.member_no eq memberNoByRoomNo }">
	            <ul class="sidenavli" style="margin-top: 30px;">
	                <li><span style="font-weight:900; color: #acacac;">Management</span></li>
	                <li style="margin-top: 10px; margin-bottom: 10px;"><a href="./boardManagement.do?room_no=${room_no }"><i class="bi bi-gear-wide-connected" style="color: #00C473;"></i> Project Management </a></li>
	            </ul>
            </c:if>
            <hr>
            <div class="col" id="sidebarFooter">
				<div class="row mt-3">
					<div class="col" style="align-self: center; text-align: center; margin: auto;">
			         	<a href="../index/home.do"><button type="button" class="btn btn-success" style="border-radius:5px; width: 250px">???????????? ?????????</button></a>
					</div>
				</div>
            </div>
        </nav>
        <div class="container-fulid" id="container">
            <div class="row">
	            <div class="row">
		            <div class="col">
		            	<h2><i class="bi bi-people-fill" style="color:green;"></i> Project Member</h2>
		            </div>
		           <div class="col" style="align-self: center; text-align: end; margin: auto;">	
		           		 <i class="bi bi-exclamation-lg" style="color:red; font-size: 15px;" >???????????? ?????? ??????????????? ???????????? ????????? ??????????????????.</i>
		            </div>
							<hr>
						<div class="col">
							<table class="table">
								<thead>
									<tr style="text-align: center;">
										<th style="width: 10%;">No</th>
										<th style="width: 20%;">??????</th>
										<th style="width: 20%;">??????</th>
										<th style="width: 30%;">?????????</th>
										<th style="width: 10%;">?????? To-Do</th>
										<th style="width: 10%;">?????? To-Do</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${projectMember }" var="projectMember" varStatus="vs">
									<c:set var="i" value="${i+1 }"/>
									<tr style="text-align: center;">
										<td>${i }</td>
											
										<c:choose>
											<c:when test="${projectMember.member_no eq memberNoByRoomNo }">
												<td scope="row"><i class="bi bi-award" style="color:red;"></i><strong>??????</strong></td>
											</c:when>
											<c:otherwise>
												<td scope="row"><strong>??????</strong></td>
											</c:otherwise>
										</c:choose>
										
										<td><a style="text-decoration:none; color:black;" class="dropdown" href="#" role="button" data-bs-toggle="dropdown" >${projectMember.member_name }</a>
										<ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink" style="background-color: #5B5A5A; border:1">
                                      		 <li><a class="dropdown-item" role="button" id="menu" data-bs-toggle="modal" data-bs-target="#messageModalre${vs.index }" style="margin: 0;"> ????????? ?????????</a></li>
                                 		</ul> 
										</td>
										<td>${projectMember.member_id }</td>
										<td>3</td>
										<td>3</td>
									</tr>
									<div class="modal" id="messageModalre${vs.index }" data-bs-backdrop="static" style="text-align: left;">
							          <div class="modal-dialog">
							              <div class="modal-content">
							                  <div class="modal-header" style="background-color: #F0FFF0;">
							                      <h3 class="fw-bold">????????? ????????????</h3>
							                      <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							                  </div>
							                  <div class="modal-body" style="background-color: #fff;">
							                      <form id="writeForm" action="../message/prowriteMessageProcess.do?room_no=${room_no }" method="post" >
							                     	 <div style="margin-bottom: 10px;">
							                              <label class="fw-bold"style="margin: 0 0 10px 0 ;">???????????? ?????? </label>
							                              <input type="text" id="idTitle" name="" class="form-control" aria-label="Sizing example input"
							                                               aria-describedby="inputGroup-sizing-default" value="${projectMember.member_name }"> 
							                          </div>
							                          <div>
							                           	<input type="hidden" name ="member_send_name" value="${sessionUser.member_id }">
							                              <label class="fw-bold"style="margin: 0 0 10px 0 ;">???????????? ????????? </label>
							                              <input type="text" id="idTitle" name="member_receive_name" class="form-control" aria-label="Sizing example input"
							                                               aria-describedby="inputGroup-sizing-default" value="${projectMember.member_id }"> 
							                          </div>
							                          <div>
							                              <label class="fw-bold" style="margin: 10px 0 10px 0 ;">??????</label>
							                              <input type="text" id="idTitle" name="message_title" class="form-control" aria-label="Sizing example input"
							                                               aria-describedby="inputGroup-sizing-default">
													<input type="hidden" name="member_no" value="${sessionUser.member_no }">
							                          </div>
							                          <div>
							                              <label class="fw-bold" style="margin:10px 0 10px 0 ;">??????</label>
							                              <textarea class="form-control" name="message_content" rows="15" style="resize:none;"></textarea>
							                          </div>
							                          <button type="submit" class="btn btn-success"
							                          	style="border:0; float:right; margin-top: 10px;"><strong>?????????</strong></button>
							                          <button type="button" class="btn btn-success" data-bs-dismiss="modal"
							                              style="border:0; float:right; margin-top: 10px;  margin-right:10px;" data-bs-dismiss="modal" ><strong>????????????</strong></button>
							                      </form>
							                  </div>
							              </div>
							          </div>
							      </div>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
               <div class="row">
              	<div class="col">
					<h2><i class="bi bi-bar-chart-line-fill" style="color: #911F27;"></i> ToDo</h2>
					</div>
						<div class="col" style="align-self: center; text-align: end; margin: auto;">	
					<i class="bi bi-exclamation-lg" style="color:red; font-size: 15px;" >To_Do ???????????? ??????????????????.</i>
				</div>
					<hr>
					<div class="col">
						<div class="card" style="width: 36rem;">
							<div class="card-body">
								<h5 class="card-title" style="text-align: center;">Incomplete
									To-Do</h5>

								<form>
								<ul class="list-group">
							    <c:forEach items="${incomToDo }" var="incomToDo" end="2" varStatus="status">
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<i class="bi bi-hourglass-split" style="color: red;" id="count"></i>
										<span><a href="" onclick="viewToDo(${status.index })">${incomToDo.content }</a></span>
										<button class="badge bg-danger rounded-pill"> <i class="bi bi-check2">?????????</i> </button>
										<input type="hidden" id="tdboard_no${status.index }" value="${incomToDo.tdboard_no }">
									</li>
								</c:forEach>
								</ul>
								</form>

								<div class="col mt-2">
									<a href="./planPage.do?room_no=${room_no}" class="btn btn-secondary">Read more</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col">
						<div class="card" style="width: 36rem;">
							<div class="card-body">
								<h5 class="card-title" style="text-align: center;">complete To-Do</h5>
								<form>
								<ul class="list-group">
							    <c:forEach items="${comToDo }" var="comToDo" end="2" varStatus="status">
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<i class="bi bi-star-fill" style="color: gold;"></i>
										<span><a href="" onclick="coviewToDo(${status.index })">${comToDo.content }</a></span>
										<button class="badge bg-success rounded-pill"> <i class="bi bi-check2">??????</i> </button>
										<input type="hidden" id="tdboard_no_co${status.index }" value="${comToDo.tdboard_no }">
									</li>
								</c:forEach>
								</ul>
								</form>
								<div class="col mt-2">
									<a href="./planPage.do?room_no=${room_no}" class="btn btn-secondary">Read more</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row mt-4" style="display: flex;">
					<div class="col" >
						<h2><i class="bi bi-clipboard-data"></i>  New Board</h2>
						<hr>
						<table class="table">
							<thead>
								<tr style="text-align: center;">
									<th style="width: 10%;">No</th>
									<th style="width: 30%;">??????</th>
									<th style="width: 20%;">?????????</th>
									<th style="width: 20%;">?????????</th>
								</tr>
							</thead>
							<tbody>
								<tr style="text-align: center;">
									<th scope="row">3</th>
									<td>21.09.15 ???????????? ????????????</td>
									<td>Shark Jo</td>
									<td>2021-09-15</td>
								</tr>
								<tr style="text-align: center;">
									<th scope="row">2</th>
									<td>ERD ?????? ??????????????????.</td>
									<td>Joel Cho</td>
									<td>2021-09-13</td>
								</tr>
								<tr style="text-align: center;">
									<th scope="row">1</th>
									<td>???????????? ?????? ?????????.</td>
									<td>Shark Jo</td>
									<td>2021-09-12</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col" >
						<h2><i class="bi bi-chat-dots-fill" style="color: #FFC93C;"></i> New Channel</h2>
						<hr>
						<table class="table">
							<thead>
								<tr style="text-align: center;">
									<th style="width: 10%;">No</th>
									<th style="width: 30%;">?????????</th>
									<th style="width: 20%;">?????????</th>
								</tr>
							</thead>
							<tbody>
								<tr style="text-align: center;">
									<th scope="row">3</th>
									<td>????????????</td>
									<td>2021-09-14</td>
								</tr>
								<tr style="text-align: center;">
									<th scope="row">2</th>
									<td>???????????? ????????? ?????????</td>
									<td>2021-09-12</td>
								</tr>
								<tr style="text-align: center;">
									<th scope="row">1</th>
									<td>?????????</td>
									<td>2021-09-10</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
            </div>
            <div class="col-3"></div>
        </div>
        <footer>
            <div class="row mt-3">
                <img alt="" src="../resources/img/footer.png">
            </div>
        </footer>
    </div>
    
    
    
    
<!-- ????????? ?????????-->
	<div class="modal" id="messageModalre" data-bs-backdrop="static">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header" style="background-color: #F0FFF0;">
                      <h3 class="fw-bold">????????? ????????????</h3>
                      <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                  </div>
                  <div class="modal-body" style="background-color: #fff;">
                      <form id="writeForm" action="./writeMessageProcess.do" method="post" >
                          <div>
                           	<input type="hidden" name ="member_send_name" value="${sessionUser.member_id }">
                              <label class="fw-bold"style="margin: 0 0 10px 0 ;">???????????? </label>
                              <input type="text" id="idTitle" name="member_receive_name" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-default" value="${message.messageVo.member_send_name }"> 
                          </div>
                          <div>
                              <label class="fw-bold" style="margin: 10px 0 10px 0 ;">??????</label>
                              <input type="text" id="idTitle" name="message_title" class="form-control" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-default">
						<input type="hidden" name="member_no" value="${sessionUser.member_no }">
                          </div>
                          <div>
                              <label class="fw-bold" style="margin:10px 0 10px 0 ;">??????</label>
                              <textarea class="form-control" name="message_content" rows="15" style="resize:none;"></textarea>
                          </div>
                          <button type="submit" class="btn btn-success"
                          	style="border:0; float:right; margin-top: 10px;" ><strong>?????????</strong></button>
                          <button type="button" class="btn btn-success" data-bs-dismiss="modal"
                              style="border:0; float:right; margin-top: 10px;  margin-right:10px;" data-bs-dismiss="modal" ><strong>????????????</strong></button>
                      </form>
                  </div>
              </div>
          </div>
      </div>
      

      
      
    <!-- Javascript files-->
    <script src="../resources/js/jquery.min.js"></script>
    <script src="../resources/js/popper.min.js"></script>
    <script src="../resources/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/js/jquery-3.0.0.min.js"></script>
    <script src="../resources/js/plugin.js"></script>
        <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>