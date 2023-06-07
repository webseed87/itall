<%@ Language="VBScript" CodePage="65001" %>
<% Option Explicit %>
<!doctype html>
<html lang="ko">
<!-- #include virtual="/cominc/incCommon.asp" -->
<!-- #include virtual="/inc/incChkConn.asp"	  -->
<%
	Dim ITALL_Status, ErpMemberOID
	'''------------------------------------------

	Call Main()

	Sub Main()
		Call fnNoCache(gloCharSet)
		Call getValue()
		Call setValue()

		If sesUserID <> "" Then
			Call DbConn(gloDbStr)
			Call getData()
			Call DbClose()
		End If
	End Sub


	Sub getValue()

	End Sub


	Sub setValue()

	End Sub


	Sub getData()
		If sesUserID = "" Then Exit Sub
		'''----------------------------------

		Dim SQL, Rs
		'''----------------------------------

		SQL = "Exec xsp_Users @Flag='SLT_USERS', @vchrUserID='" & sesUserID & "'"
		Set Rs = fnRtnRunSql(SQL)
			If Not Rs.Eof Then
				ITALL_Status	= Rs("ITALL_Status")
				ErpMemberOID	= Rs("ErpMemberOID")
				'''--------------------------------------------------------------

				If ErpMemberOID = "" Then ErpMemberOID = 0
			End If
		Rs.Close
		Set Rs = Nothing
	End Sub
%>
<head>
	<!-- Head -->
	<!-- #include virtual="/inc/incHead.asp" --><%=vbCrLf%>
	<% Call fnGetCss("common_reset.css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %><%=vbCrLf%>
	<% Call fnGetCss(LCase(arrUrl(1)) & "/" & LCase(Replace(arrUrl(2), ".asp", "")) & ".css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %>
</head>

<body>
	<!--상단 탑 메뉴 -->
	<div class="mainWrap">
		<div class="mainContainer">
			<!-- sns/member/logo -->
			<!-- #include virtual="/inc/incTopUpper.asp" -->

			<!--메인 메뉴 -->
			<header>
				<!-- MainMenu -->
				<!-- #include virtual="/inc/incMainMenu.asp" -->
			</header>
		</div>

		<!--메인 배너 -->
		<!-- #include virtual="/inc/incBan_Main.asp" -->
	</div>

	<!--메인 콘텐츠 -->
	<div class="mainContentsWrap">
		<div class="mainTextbar">
			<div class="mainText">관리형 <span class="textbold">10년</span> 노하우! 압도적 합격자 수 <span
					class="textbold">1위!<sup>*</sup></span>
				<p class="subtext">* 합격자 수 1위: 2022년 4월 12일 오프라인 대입재수학원(기숙학원, 재수종합학원, 독학재수학원),<br> 관리형 독서실, 관리형 스터디카페 각
					개별 홈페이지에 공개된 데이터 기준</p>
			</div>
			<div class="rolling">
				<div class="rollingtext">
					<div>
						<sapn class="fontsize14">2022학년도 수능 총 5,185명 합격!</sapn> 합격자 수 1위!<br>
						<sapn class="fontsize14">역시 잇올! 이번에도</sapn> 수능 전국수석 배출!<br>
						<sapn class="fontsize14">잇올 합격자 5명 중 1명</sapn> 메디컬 SKY카포 합격
					</div>
				</div>
			</div>
		</div>

		<!--메인 아이콘 -->
		<div class="mainIcon">
			<div>
				<a href="">
					<img src="/img/mainicon1.png" alt="학습공간">
					<p>학습공간</p>
				</a>
			</div>
			<div>
				<a href="">
					<img src="/img/mainicon2.png" alt="클린테크연구소">
					<p>클린테크 연구소</p>
				</a>
			</div>
			<div>
				<a href="">
					<img src="/img/mainicon3.png" alt="라이브멘토링">
					<p>라이브멘토링</p>
				</a>
			</div>
			<div>
				<a href="">
					<img src="/img/mainicon4.png" alt="대나무숲">
					<p>대나무숲</p>
				</a>
			</div>
			<div>
				<a href="">
					<img src="/img/mainicon5.png" alt="식단표">
					<p>식단표</p>
				</a>
			</div>
			<div>
				<a href="">
					<img src="/img/mainicon6.png" alt="재원생전용">
					<p>재원생 전용</p>
				</a>
			</div>
		</div>

		<!--메인 2개 배너 슬라이더 -->
		<section class="mainTwinbanner">
			<div class="button">
				<button type="button" class="arrows left-arrow arrow-inactive" aria-label="Arrow Left">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512">
						<!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
						<path
							d="M192 448c-8.188 0-16.38-3.125-22.62-9.375l-160-160c-12.5-12.5-12.5-32.75 0-45.25l160-160c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25L77.25 256l137.4 137.4c12.5 12.5 12.5 32.75 0 45.25C208.4 444.9 200.2 448 192 448z" />
					</svg>
				</button>
				<button type="button" class="arrows right-arrow" aria-label="Arrow Right">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512">
						<!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
						<path
							d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z" />
					</svg>
				</button>
			</div>
			<section class="carousel-wrapper">
				<section class="carousel">
					<div class="carousel-item">
						<a href=""> <img src="/img/1.png" alt="Working"></a>
					</div>
					<div class="carousel-item">
						<a href=""> <img src="/img/2.png" alt="Working"></a>
					</div>
					<div class="carousel-item">
						<img src="/img/1.png" alt="Working">
					</div>
					<div class="carousel-item">
						<img src="/img/2.png" alt="Working">
					</div>
				</section>

			</section>
		</section>
	</div>

	<!--메인 게시판 영역-->
	<div class="boardContents">
		<div class="boardContainer">
			<div class="sunnengDay">
				<sapn>수능 D-DAY</sapn>
				<h4 id="sunnengdday"></h4>
			</div>
			<div class="calender">
				<div class="title">
					<p>2022년 10월</p>
					<h4>학사일정·<br>
						대입전형일정</h4>
					<button class="buttonred">전체보기 ></button>
				</div>
				<div class="contents">
					<div class="textrolling">
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
						<p><span class="spanred">10/11(화)</span> 에너지공대 원서접수</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--장학 영역-->
	<div class="scholarship">
		<p>잇올그룹은 약 4년간 20만명에 가까운 누적 재원생 연인원 중,<br>
			<span class="textbold">20%가 넘는 47,232명의 학생들에게 64억원 이상의 장학혜택</span>을 제공하고 있습니다.<br>
			<span class="subtext">*2018년1월~2021년 12월 기준</span>
		</p>
	</div>

	<!--에듀테크 6대 관리 영역-->
	<div class="edutech">
		<h2>AI를 활용한 초개인화 관리 시스템<br>
			<p class="fontsize36 ">잇올 에듀테크 <span class="fontred textbold"> 초격차 6대 관리 </span></p>
		</h2>
		<div class="eduContainer">
			<div class="management"><a href="">
					<div class="tilte">시설 관리</div><img src="/img/eud1.png">
				</a></div>
			<div class="management"><a href="">
					<div class="tilte">생활 관리</div><img src="/img/edu2.png">
				</a></div>
			<div class="management"><a href="">
					<div class="tilte">교과 관리</div><img src="/img/edu3.png">
				</a> </div>
			<div class="management"><a href="">
					<div class="tilte">콘텐츠 관리</div><img src="/img/edu4.png">
				</a> </div>
			<div class="management"><a href="">
					<div class="tilte">입시 관리</div><img src="/img/edu5.png">
				</a> </div>
			<div class="management"><a href="">
					<div class="tilte">잇올 장학</div><img src="/img/edu6.png">
				</a> </div>
		</div>
		<p class="bottomtext">주 60~100시간 순공 시간 확보 + AI 학습전략&입시전략 수립 + 연 100회 이상의 실전 연습 </p>
		<span class="bottomtextbold underline">성적 향상 & 합격</span>
	</div>

	<!--시설 vr투어 영역-->
	<h2 class="facVrtitle"> 시설 <span class="textbold">VR 투어</span></h2>
	<div class="facVr">
		<div class="center">
			<p>잇올 스파르타 송파센터</p>
			<img src="/img/songfacenter.png">
			<button class="redbutton">VR 투어</button>
		</div>
		<div class="center">
			<p>잇올 스파르타 송파센터</p>
			<img src="/img/songfacenter.png">
			<button class="redbutton">VR 투어</button>
		</div>
		<div class="center">
			<p>잇올 스파르타 송파센터</p>
			<img src="/img/songfacenter.png">
			<button class="redbutton">VR 투어</button>
		</div>
		<div class="center">
			<p>잇올 스파르타 송파센터</p>
			<img src="/img/songfacenter.png">
			<button class="redbutton">VR 투어</button>
		</div>
	</div>

	<!--올클 잇올랩 배너 2개 영역-->
	<div class="allcellabContainer">
		<div class="allcellabWarp">
			<div class="allcel">환경 격차를 줄여 누구나 청결함의 가치를 누리는 세상, <br>
				<span class="fontsize32 fontblue"> 잇올 클린테크 연구소 <span class="textbold">‘올클’</span></span>
				<div class="allcelbtn"><a href=""><img src="/img/allcelbtn.png" alt="올클 바로가기"></a></div>
			</div>
			<div class="lab">10만 입시 빅데이터가 만드는 초격차! <br>
				<span class="fontsize32">합격전략 연구소 <span class="textbold">'잇올 랩'</span></span>
				<div class="labbtn"><a href=""><img src="/img/labbtn.png" alt="잇올랩 바로가기"></a></div>
			</div>
		</div>
	</div>

	<!--합격 수기 영역-->
	<h2 class="inteviewtitle"> 합격 수기 & 인터뷰</h2>
	<div class="inteviewContainer">
		<div><img src="/img/interview1.png" alt="신현진학생인터뷰">
			<p>[잇올 스파르타]2022학년도 수능 <br>
				전국수석 인터뷰! 자연계 백분위 만점</p>
		</div>

		<div><img src="/img/interview2.png" alt="신현진학생인터뷰">
			<p>[2022대입합격자인터뷰]잇올의 교과콘텐츠로 <br>성적 UP! 의치대 4관왕 합격 수기</p>
		</div>

		<div><img src="/img/interview3.png" alt="신현진학생인터뷰">
			<p>서울대 의예과 합격자들이 직접 말하는 합격 비법. <br>고3 현역이 독재를 활용하는 방법
			</p>
		</div>

	</div>
	<div class="moreview"><button class="btn">더 많은 합격 수기 보러가기 > </button></div>

	<!--잇올 유튜브 영역-->
	<div class="itallyoutubeWarp">
		<div class="itallyoutubetitle">
			<h2><img src="/img/itallyoutube.png"></h2><a href="">
				<div class="youtubebtn">잇올 유튜브 구독하기<i class="fa-brands fa-youtube fontred"></i></div>
			</a>
		</div>
		<div class="itallyoutubeContainer">
			<div><a href="#popinfo1" class="btn_open"><img src="/img/youtube1.png"></a></div>
			<div><a href="#popinfo2" class="btn_open"><img src="/img/youtube2.png"></a></div>
			<div><a href="#popinfo3" class="btn_open"><img src="/img/youtube3.png"></a></div>
		</div>
	</div>
	<div id="popinfo1" class="popWrap" style="display:none;">
		<div class="popInner">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/QHeew0bFyow"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<button type="button" class="btnClose">닫기</button>
		</div>
	</div>

	<div id="popinfo2" class="popWrap" style="display:none;">
		<div class="popInner">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/6-Alg61zg_g"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<button type="button" class="btnClose">닫기</button>
		</div>
	</div>

	<div id="popinfo3" class="popWrap" style="display:none;">
		<div class="popInner">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/5EeDKU89tb0"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<button type="button" class="btnClose">닫기</button>
		</div>
	</div>

	<!--공지사항 및 배너 영역-->
	<div class="noticeWarp">
		<!-- #include virtual="/inc/incNoticeboard.asp" -->

		<div class="centerbanner">
			<img src="/img/centerbanner.png" alt="전국직영센터바로가기">
		</div>

		<!-- #include virtual="/inc/incBan_Bottom.asp" -->
	</div>

	<!-- 브랜드 수상 영역-->
	<!-- #include virtual="/inc/incBrandPrice.asp" -->

	<!-- 하단 고정 고객센터 영역-->
	<!-- #include virtual="/inc/incCustomerCenter.asp" -->

	<!-- 푸터 영역-->
	<!-- #include virtual="/inc/incFooter.asp" -->

	<!-- 왼쪽 고정 아이콘 영역-->
	<!-- #include virtual="/inc/incFixed_IconWrap.asp" -->

	<!--스와이프 메인배너 관련 js -->
	<script src="/inc/js/suneung/main/swiper.js"></script>

	<!--메인 스크립트 파일-->
	<script src="/inc/js/suneung/main/main.js"></script>

	<!-- #include virtual="/inc/incBottom.asp" -->
</body>

</html>