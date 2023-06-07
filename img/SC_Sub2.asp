<%@ Language="VBScript" CodePage="65001" %>
<% Option Explicit %>
<!doctype html>
<html lang="ko">
<!-- #include virtual="/cominc/incCommon.asp" -->
<!-- #include virtual="/inc/incChkConn.asp"	  -->
<%
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

	End Sub
%>
<head>
	<!-- Head -->
	<!-- #include virtual="/inc/incHead.asp" --><%=vbCrLf%>
	<% Call fnGetCss("common_reset.css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %><%=vbCrLf%>
	<% Call fnGetCss(LCase(arrUrl(1)) & "/" & arrUrl(2) & "/" & LCase(Replace(arrUrl(3), ".asp", "")) & ".css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %>
</head>
<style>
.mt50{margin-top: 50px !important; font-size: 13px !important;}
.nbsp{margin-left: 0 !important;}
.subtextpass{margin-top: 30px; font-size: 16px ; text-align: center;}
</style>
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
	</div>

	<!-- 상단 네비게이션 영역-->
	<div class="navi">
		<div class="naviWarp">
			<h2>콘텐츠</h2>
			<p class="navibar">
				<a href="">
					<i class="fa-solid fa-house"></i>
				</a>
				<a href="" class="than-sign">
					<span>&#62;</span>교과/입시
					<span>&#62;</span>
				</a>
				<a href="">콘텐츠 관리</a>
			</p>
		</div>
	</div>


	<!-- 콘텐츠 내용 -->
	<div id="contentsWarp">
		<!-- 잇올패스 영역-->
	
		<div class="itallpass">
			<div class="firts ">
				<h3>잇올 인강패스</h3>
				<ul>
					<li class="on">
						<div class="txt1">
							<h4>환급 패스</h4>
							<p><img src="/img/passmore.png"></p>
						</div>
						<div class="txt2">
							<h4>환급 패스</h4>
							<p>메가스터디, 이투스 인강 결제 시 10만원 환급</p>
							<p class="mt50">	<span class="fontred nbsp">* 환급패스 적용 여부는 센터별로 상이할 수 있습니다.				</span><br>
								* 환급패스에는 대성패스(대성마이맥)는 제외됩니다. </p>
					
												
					</li>
					
					<li class="">
						<div class="txt1">
							<h4>무료 패스</h4>
							<p><img src="/img/passmore.png"></p>
						</div>
						<div class="txt2">
							<h4>무료 패스</h4>
							<p>대성마이맥 인강 무료 제공</p>
							<p class="mt50">* 중도 퇴실 시, 퇴실 날짜로부터 인강 제공 혜택 종료							</p>
						</div>
					</li>
					
				</ul>
			
			
			</div>
			<div>
				<h3>콘텐츠 패스</h3>
				<ul>
					<li class="on content">
						<div class="txt1">
							<h4>콘텐츠 패스</h4>
							<p><img src="/img/passmore.png"></p>
						</div>
						<div class="txt2">
							<h4>콘텐츠 패스</h4>
							<p>콘텐츠 시리즈(이감/바탕/대성 사∙과탐 모의고사<br>/EBS 수특 등 
								시즌 콘텐츠) 중 1개 무료 제공</p>
								<p class="mt50">* 2023년 상반기 오픈 예정<br>* 중도 퇴실 시, 제공된 콘텐츠 비용 전액 청구
								</p>
						</div>
					</li>
					
				</ul>
		
			</div>
		</div>
		<p class="subtextpass">* 잇올 3개월 이상 장기 결제 시, 잇올 인강패스 / 콘텐츠패스 중 선택 (중복불가)			</p>
		<!--국어 빅4 영역-->

		<div class="big">
			<h3>대치동 국어 BIG4</h3>

			<ul>
				<li>
					<div><img src="/img/big1.png" alt="이감 국어"></div>
					<p>이감 국어</p>
				</li>
				<li>
					<div><img src="/img/big2.png" alt="한수 국어"></div>
					<p>한수 국어</p>
				</li>
				<li>
					<div><img src="/img/big3.png" alt="바탕 국어"></div>
					<p>바탕 국어</p>
				</li>
				<li>
					<div><img src="/img/big4.png" alt="상상 국어"></div>
					<p>상상 국어</p>
				</li>
			</ul>
		</div>


		<!--독점콘텐츠/자체제작/제휴할인-->
		<div class="contents">
			<h3>독점콘텐츠/자체제작/제휴할인</h3>
			<div class="bookwrap">
				<ul>
					<li><img src="/img/contents1.png"></li>
					<li><img src="/img/contents2.png"></li>
					<li><img src="/img/contents3.png"></li>
					<li><img src="/img/contents4.png"></li>
					<li><img src="/img/contents5.png"></li>
					<li><img src="/img/contents6.png"></li>
					<li><img src="/img/contents7.png"></li>
					<li><img src="/img/contents8.png"></li>
					<li><img src="/img/contents9.png"></li>
					<!--애니메이션을 위한 복사본-->

					<li class="clone"><img src="/img/contents1.png"></li>
					<li class="clone"> <img src="/img/contents2.png"></li>
					<li class="clone"><img src="/img/contents3.png"></li>
					<li class="clone"><img src="/img/contents4.png"></li>
					<li class="clone"><img src="/img/contents5.png"></li>
					<li class="clone"><img src="/img/contents6.png"></li>
					<li class="clone"><img src="/img/contents7.png"></li>
					<li class="clone"><img src="/img/contents8.png"></li>
					<li class="clone"><img src="/img/contents9.png"></li>
				</ul>
			</div>
			<div class="buttonwarp">
<button onclick="window.open('https://smartstore.naver.com/palett')">잇올 팔레트몰 바로가기 </button></div>

		</div>

		<!--실전 바이오 리듬 프로젝트 영역-->
		<div class="bio">
			<div class="img">
				<h3>실전바이오리듬 프로젝트</h3>
				<p>연 100회 이상 실전 연습!</p>
				<img src="/img/bio1.png" class="woman">
			</div>
			<div class="content">
				<ul>
					<li>
						<h4>압도적인 잇올 성적상승 사례 비법!</h4>
						<p>일반적인 입시기관 대비 최대 10배 이상의 실전연습 기회, 엄청난 실전 능력 배양</p>
					</li>
					<li>
						<h4>수능체화 프로젝트</h4>
						<p>명문대에 합격한 수 많은 선배들이 극찬하는 잇올 시스템의 최정점</p>
					</li>
					<li>
						<h4>실전 시뮬레이션 학교 프로젝트</h4>
						<p>미리 수능 당일 연습을 여러번 하고 시험을 치게 되는 우리 잇올 수험생들에게는
							수능 당일 어떤 일이 생겨도 당황하지 않고 시험에만 집중 가능!</p>
					</li>
				</ul>

			</div>
		</div>
		<!--일정 및 커리큘럼 영역-->
		<div class="curriculum">
			<div class="curriculumbox">
				<ul>
					<li>
						<h4>일정 및 커리큘럼</h4>
					</li>
					<li>
						<p class="red">시즌1</p>
						<p>6평 직후 매주 목요일 실시<br>
							(주 1회, 총 11회)</p>
					</li>
					<li>
						<p class="red">시즌2</p>
						<p>9평 직후 매주 화,목요일 실시<br>
							(주 2회, 총 14회)</p>
					</li>
					<li>
						<p class="red">시즌3</p>
						<p> 11월 수능 직전 매일 실시<br>
							(총 13회)</p>
					</li>
				</ul>
			</div>

			<div class="schedulebox">
				<h4>실전 바이오리듬 모의고사 시간표</h4>
				<table class="gridTable" border-collapse="collapse">
					<colgroup>
						<col width="30%" />
						<col width="40%" />
						<col width="30%" />

					</colgroup>
					<thead>
						<tr>
							<th>구분</th>
							<th>시간</th>
							<th>내용</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>0교시</td>
							<td>AM08:00 - AM08:30 </td>
							<td>자습 </td>

						</tr>
						<tr>
							<td>1교시</td>
							<td>AM08:40 - AM10:00 </td>
							<td>국어 </td>

						</tr>
						<tr>
							<td>2교시</td>
							<td>AM10:30 - PM12:10 </td>
							<td>수학 </td>

						</tr>
						<tr>
							<td>3교시</td>
							<td>PM13:10 - PM14:20 </td>
							<td>영어 </td>

						</tr>
						<tr>
							<td>4교시</td>
							<td>PM14:50 - PM16:37 </td>
							<td>한국사 및 탐구 </td>

						</tr>
						<tr>
							<td>5교시</td>
							<td>PM16:50 - </td>
							<td>자습 </td>

						</tr>
						<tr>
							<td colspan="3">이후 동일</td>


						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>


	<!-- 하단 고정 고객센터 영역-->
	<!-- #include virtual="/inc/incCustomerCenter.asp" -->

	<!-- 푸터 영역-->
	<!-- #include virtual="/inc/incFooter.asp" -->

	<!-- 왼쪽 고정 아이콘 영역-->
	<!-- #include virtual="/inc/incFixed_IconWrap.asp" -->

	<script src="/inc/js/suneung/common.js"></script>
	<script src="/inc/js/suneung/study_contents/SC_Sub2.js"></script>

	<!-- #include virtual="/inc/incBottom.asp" -->
</body>

</html>
