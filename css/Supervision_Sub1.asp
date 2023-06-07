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
	<!-- #include virtual="/inc/incHead.asp" --><%=vbCrLf%>
	<% Call fnGetCss("common_reset.css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %><%=vbCrLf%>
	<% Call fnGetCss(LCase(arrUrl(1)) & "/" & arrUrl(2) & "/" & LCase(Replace(arrUrl(3), ".asp", "")) & ".css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %><%=vbCrLf%>
	<% Call fnGetCss(LCase(arrUrl(1)) & "/" & arrUrl(2) & "/chart.css?v=" & fnDateTimeFormat(Now(), "DDHHNNSS")) %>
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
	</div>

	<!-- 상단 네비게이션 영역-->
	<div class="navi">
		<div class="naviWarp">
			<h2>장학</h2>
			<p class="navibar"> <a href=""><i class="fa-solid fa-house"></i></a> > <a href="">장학</a></p>
		</div>
	</div>

	<!-- 장학 내용 -->
	<div id="supervisionWarp">
		<div class="topImg">
			<div class="ani1"><img src="/img/animation1.png"></div>
			<div class="ani2"><img src="/img/animation2.png"></div>
			<div class="ani3"><img src="/img/animation3.png"></div>
			<div class="ani4"><img src="/img/animation4.png"></div>
			<div class="toptxt"> <img src="/img/supervisionTxt.png" alt="잇올장학"></div>
			<p>Since 2018.<br>잇올그룹은 약 <span class="yellow"> 5년간<sup>*</sup> 28만 명의 재원생</span> 중 <span class="yellow">
					23%에 달하는 64,786명</span>의 학생들에게<span class="yellow"> 93억 원 이상</span>의 장학 혜택을 제공하고 있습니다.</p>
			<p class="subtext">* 2018년 1월~2022년 11월 기준</p>
		</div>


		<!-- 포인트 스와이퍼 탭-->
		<div class="point">
			<h3>잇올 장학만의 <span class="fontred">특별한 포인트!</span></h3>
			<div class="tabbanner">
				<div class="swiper-container">

					<div class="swiper-wrapper">

						<div class="swiper-slide">

							<div class="inner">
								<h5>매년 증가하는 장학 총액 </h5>
								<p class="toptitle">(단위: 억)</p>

								<div class="chart small-font-size">

									<div class="bar bar-22 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-44 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-60 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-70 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-80 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
								</div>
								<ul class="nun">
									<li>2018년</li>
									<li>2019년</li>
									<li>2020년</li>
									<li>2021년</li>
									<li><span class="fontred">2022년</span></li>
								</ul>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<h5>매년 증가하는 장학 수혜자! </h5>
								<p class="toptitle">(단위: 명)</p>
								<div class="chart small-font-size">

									<div class="bar bar-15 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-25 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-55 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-65 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-85 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
								</div>
								<ul class="nun">
									<li>2018년</li>
									<li>2019년</li>
									<li>2020년</li>
									<li>2021년</li>
									<li><span class="fontred">2022년</span></li>
								</ul>

							</div>
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<h5> 2023학년도 최대 월 3억원 장학금 지급! </h5>
								<p class="textcenter toptitle">2023학년도 월평균<sup>*</sup> 2억원 지급 </p>
								<img src="/img/3300.png" class="sticker">
								<div class="chart small-font-size">

									<div class="bar bar-62 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-52 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-66 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-82 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-72 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-84 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>
									<div class="bar bar-68 red">
										<div class="face side-0">
											<div class="growing-bar"></div>
										</div>
										<div class="face side-1">
											<div class="growing-bar"></div>
										</div>
										<div class="face top"></div>
										<div class="face floor"></div>
									</div>

								</div>

								<ul class="mon">
									<li>2022년 1월</li>
									<li>2월</li>
									<li>3월</li>
									<li>4월</li>
									<li>5월</li>
									<li><span class="fontred">6월</span></li>
									<li>7월</li>
								</ul>
								<p class="tabsmalltext">* 2022년 1월~8월까지의 자료를 기반으로 함.
								</p>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<h5> <a href="">승강심사 기준 대폭 완화! 2023학년도 반키 기준 -> 2024학년도 올키 장학</a></h5>
								<p class="textcenter toptitle"> 입학장학 기준을 대폭 완화하여, 보다 많은 잇올러들이 혜택을 받을 수 있도록 하였습니다!</p>
								<div class="tabContentsWrap">
									<div class="tabmenu">

										<ul class="list">
											<li class="ison">
												<a href="#tab1" class="btn">가장 큰 변경사항</a>
											</li>
											<li>
												<a href="#tab2" class="btn">입학장학 기준 (2023학년도 수능성적)</a>
											</li>
											<li>
												<a href="#tab3" class="btn">입학장학 기준 (명문대)</a>
											</li>
										</ul>

										<div class="contarea">

											<div id="tab1" class="cont" style="display:block;">

												<span class="innertixbe">기존(2023학년도(2022년))</span>
												<span class="innertixaf">변경(2024학년도(2023년))</span>

												<div class="allkey">
													<div class="allkeybefore">8월 말</div>
													<div class="allkeytitle">입학장학 마감일자</div>
													<div class="allkeyafter"><span class="fontred"> ~23. 03. 31
														</span><span class="smalltext"> (이후는 승강심사를 통해서만 가능)</span></div>
												</div>

												<div class="allkey">
													<div class="allkeybefore">올키,반키,내신올키</div>
													<div class="allkeytitle">입학장학 종류</div>
													<div class="allkeyafter"><span class="fontred">올키프리미엄</span>,올키,반키,내신올키</div>
												</div>

												<div class="allkey">
													<div class="allkeybefore">연 3회</div>
													<div class="allkeytitle">승강심사 횟수</div>
													<div class="allkeyafter">연<span class="fontred">2회
														</span></div>
												</div>
												<p class="tabsmalltext">입학시 올키 프리미엄 추가</p>

											</div>
											<div id="tab2" class="cont">
												<span class="innertixbe">기존(2023학년도(2022년))</span>
												<span class="innertixaf">변경(2024학년도(2023년))</span>

												<div class="line">
													<div class="linebefore lineheight80 textaligncenter">-</div>
													<div class="linetitle">올키 프리미엄</div>
													<div class="lineafter">· 국수탐(1) 등급 합 3 + 영어 1등급 이내<br>
														· 국수탐(1) 백분위 합 290 + 영어 1등급 이내</div>
												</div>

												<div class="line">
													<div class="linebefore">· 국수탐(1) 등급 합 3 + 영어 2등급 이내<br>
														· 국수탐(1) 백분위 합 290 + 영어 2등급 이내</div>
													<div class="linetitle">올키</div>
													<div class="lineafter">
														· 국수탐(1) <span class="fontred">등급 합 4 </span>+ 영어 2등급 이내<br>
														· 국수탐(1) <span class="fontred">백분위 합 285 </span>+ 영어 2등급 이내
													</div>
												</div>

												<div class="line">
													<div class="linebefore">· 국수탐(1) 등급 합 4 + 영어 2등급 이내<br>
														· 국수탐(1) 백분위 합 285 + 영어 2등급 이내</div>
													<div class="linetitle">반키</div>
													<div class="lineafter lineheight80"> · 국수탐(1) <span
															class="fontred">백분위 합 280</span> + 영어 2등급 이내 </div>
												</div>


												<div class="line">
													<div class="linebefore lineheight50">직전 학기까지 내신 평균 1.3이내 (국영수사과)
													</div>
													<div class="linetitle lineheight50">내신 올키</div>
													<div class="lineafter lineheight50"> 직전 학기까지<span class="fontred"> 내신
															평균 1.5이내</span> (국영수사과) </div>
												</div>
												<p class="tabsmalltext">입학시 올키 프리미엄 추가 / 올키, 반키, 내신 올키의 기준 완화</p>

											</div>
											<div id="tab3" class="cont">
												<span class="innertixbe">기존(2023학년도(2022년))</span>
												<span class="innertixaf">변경(2024학년도(2023년))</span>

												<div class="line">
													<div class="linebefore lineheight80 textaligncenter">-</div>
													<div class="linetitle">올키 프리미엄</div>
													<div class="lineafter fontsize16">의대, 치대, 한의대, 약대, 수의대, 서울대,<br>
														연세대, 고려대, 카이스트, 포항공대</div>
												</div>

												<div class="line">
													<div class="linebefore fontsize16">의대, 치대, 한의대, 약대, 수의대, 서울대, <br>
														연세대, 고려대, 카이스트, 포항공대, 경찰대</div>
													<div class="linetitle">올키</div>
													<div class="lineafter fontsize16">
														서울교대, 경인교대, 서강대, 성균관대, 한양대, 경찰대
														과학기술원<span class="smalltext">(UNIST, GIST, DGIST,
															KENTECH)</span>, 사관학교
													</div>
												</div>

												<div class="line">
													<div class="linebefore fontsize16"> 서울교대, 경인교대, 서강대, 성균관대, 한양대, <br>
														과학기술원(UNIST, GIST, DGIST), 사관학교</div>
													<div class="linetitle">반키</div>
													<div class="lineafter lineheight80 textaligncenter"> - </div>
												</div>



												<p class="tabsmalltext">명문대 입학시 올키 / 올키 프리미엄 기준 이동</p>
											</div>
										</div>
									</div>
								</div>



							</div>
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<h5>입학부터 전액 장학 제공!! </h5>
								<div class="textcenter">입학부터 올키 프리미엄 장학의 혜택을 받을 수 있어 최대 12개월의 전액 장학이 지원됩니다.</div>
								<span class="allpre">2023학년도 올키 프리미엄</span> <span class="allpre fontred">2024학년도 올키
									프리미엄</span>

								<div class="scholarshipWarp">
									<div class="allkey2023">

										<div class="cercle ">입학</div>
										<div class="cercle gary">승강심사</div>
										<div class="cercle deepgary">수강료<br>
											전액지원</div>
									</div>
									<div class="allkey2024">
										<div class="cercle ">입학</div>
										<div class="cercle redbg">수강료<br>
											전액지원</div>

									</div>
								</div>
								<div class="dayWarp">
									<div class="daybefore">
										<p>최대 9개월</p>
										<span class="term"></span><span class="term9">수강료 전액 지원
											기간</span>
										
										<div class="daybeforeborder">
											<span><i class="fa-solid fa-caret-left"></i></span><span><i class="fa-solid fa-caret-right"></i></span>
											재원기간	</div>
										</div>

									<div class="dayafter">
										<p class="dayafeter1">최대 <span class="fontbold fontsize24">12</span>개월</p>
										<span class="term1"></span><span class="term12">수강료 전액 지원
											기간</span>
											<div class="daybeforeborder">
												<span><i class="fa-solid fa-caret-left"></i></span><span><i class="fa-solid fa-caret-right"></i></span>
												재원기간	</div>
										</div>
								</div>
								<p class="textcenter mt50 fontsize14 block">장학금액은 환급액을 포함한 금액입니다. <br>승강심사를 통한 자격유지 기준은 동일합니다.
								</p>
							</div>
							
						</div>
						<div class="swiper-slide">
							<div class="inner">
								<h5> 고등학생 대상 장학제도 확대!</h5>
								<p>내신에 자신 있어도, 학급의 반장이어도, 모의고사 1등급에게도 <br>
									고등학생들을 위한 잇올의 장학이 함께 합니다. </p>
								<img src="/img/score.png" class="scoreimg">
								<img src="/img/scoremen.png" class="scoremen">
								<div class="saleWarp">
									<div><span class="redtitle">내신 올키</span>
										<p>내신평균 1.5등급 이내<br>
											월 수강료 <br>
											<span class="fontred">최대 25만 원 할인</span>
										</p>
									</div>
									<div><span class="redtitle">리더십 장학</span>
										<p>학급 반장, 부반장<br>
											전교 회장, 부회장<br>
											월 수강료
											<span class="fontred">13만원 할인</span> <br>
											<span class="fontsize12 mt50">1회 한정</span>
										</p>
									</div>
									<div><span class="redtitle">모의고사 장학</span>
										<p>교육청 모의고사 <br>
											1등급마다
											<br>

											<span class="fontred">문화상품권 지급</span>
										</p>
									</div>
								</div>
								<p class="small">장학금액은 환급액을 포함한 금액입니다. <br> 승강심사를 통한 자격유지 기준은 동일합니다.
								</p>
							</div>

						</div>
					</div>

					<div class="swiper-pagination"></div>



				</div>
			</div>
		</div>

		<!-- 꿈키공간 -->
		<div class="dream">
			<p class="fontred">너의 꿈을 응원해</p>
			<h3>꿈키 공간</h3>
			<div class="commingbox">
				<h4>Comming Soon</h4>
			</div>
		</div>
		<!-- 빌보드 차트 부분 -->
		<div class="billboardtilte">
			<h3>2022학년도 올키 장학생들의 범접불가 명문대 진학률</h3>
			<img src="/img/billboardmen.svg" class="billboardmen">
		</div>
		<div class="billboardchart">
			<h4>신뢰도 높은 잇올 빌보드</h4><span class="backred">메디컬 SKY카포 합격 보증수표!</span>


			<div class="roll-swiper ">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p>1차 승강심사</p>
						<div>

							<dl>
								<dt>분당수내센터</dt>
								<dd>
									서울대 의대 합격<br>
									고려대 의대 합격
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">1등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>1차 승강심사</p>
						<div>

							<dl>
								<dt>대구수성구 센터</dt>
								<dd>
									경북대 의대 <br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">2등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>1차 승강심사</p>
						<div>

							<dl>
								<dt>창원상남 센터</dt>
								<dd>
									경상국립대 수의대 <br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">199등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>1차 승강심사</p>
						<div>

							<dl>
								<dt>청주 센터</dt>
								<dd>
									조선대 약대 합격! <br>
									전남대 수의대 합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">200등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>2차 승강심사</p>
						<div>

							<dl>
								<dt>부천 센터</dt>
								<dd>
									한양대 의대 <br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">2등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>2차 승강심사</p>
						<div>

							<dl>
								<dt>목동 센터</dt>
								<dd>
									서울대 경제학부 <br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">4등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>2차 승강심사</p>
						<div>

							<dl>
								<dt>분당수내 센터</dt>
								<dd>
									건국대 수의대 <br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">199등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>2차 승강심사</p>
						<div>

							<dl>
								<dt>일산백마 센터</dt>
								<dd>
									상지대 한의대 합격! <br>
									서울대 합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">200등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>3차 승강심사</p>
						<div>

							<dl>
								<dt>광주충장로 센터</dt>
								<dd>
									한양대 의대 합격!<br>
									중앙대 의대 합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">2등!</span></span>

							</div>
						</div>
					</div>

					<div class="swiper-slide">
						<p>3차 승강심사</p>
						<div>

							<dl>
								<dt>분당정자2관 센터</dt>
								<dd>
									한국과학기술원 합격!<br>
									한양대 의대 합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">3등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>3차 승강심사</p>
						<div>

							<dl>
								<dt>분당수내 센터</dt>
								<dd>
									연세대 산업공<br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">198등!</span></span>

							</div>
						</div>
					</div>
					
					<div class="swiper-slide">
						<p>3차 승강심사</p>
						<div>

							<dl>
								<dt>광명 센터</dt>
								<dd>
									연세대 산업공 합격!<br>
									연세대 공학부 합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">200등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>4차 승강심사</p>
						<div>

							<dl>
								<dt>분당정자1관 센터</dt>
								<dd>
									연세대 의대<br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">1등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>4차 승강심사</p>
						<div>

							<dl>
								<dt>신촌 센터</dt>
								<dd>
									이화여대 의대<br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">2등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>4차 승강심사</p>
						<div>

							<dl>
								<dt>부산서면 센터</dt>
								<dd>
									고려대 경영학과<br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">198등!</span></span>

							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p>4차 승강심사</p>
						<div>

							<dl>
								<dt>은평서대문 센터</dt>
								<dd>
									을지대 의대<br>
									합격!
								</dd>
							</dl>
							<div>
								<span>빌보드 차트 <span class="strong">199등!</span></span>

							</div>
						</div>
					</div>
				</div>


			</div>
			<h5>빌보드 200등도 <span class="fontbold">의대 합격!</span> 올키 72% <span class="fontbold">메디컬 SKY카포 합격!</span></h5>

		</div>

		<div class="allkeychart">
			<p class="toptitle">올키 의대 합격자수 </p>
			<h4>전년대비 438% <span class="fontred">폭발적 증가</span></h4>
			<img src="/img/allkeycahrt.png" class="allkeychartimg">
			<div class="allboxWarp">
				<div class="allboxtitle">
					<h4>잇템으로 채워진 <br>
						올키 BOX 제공</h4>
				</div>
				<div class="allbox"><img src="/img/allkeybox.png"></div>
				<button class="sumit">장학 신청하기</button>
			</div>

		</div>

		<!-- 꿈나무 장학 영역-->
		<div class="dreamtree">
			<p class="fontred">잇올 저소득층 장학</p>
			<h3>꿈나무 장학</h3>
			<p class="mt50">잇올그룹 장학사업의 양날개 중 하나인 저소득 가정 학생을 위한 ‘꿈나무 장학사업’은 정성평가 도입 등 기준을 대폭 완화하여 <br>
				보다 더 많은 학생들이 혜택을 받을 수 있도록 진행할 예정입니다. <br>
				2020년 ~ 2022년 현재 전국의 수많은 학생들이 장학혜택을 받고 꿈을 향해 정진하고 있습니다. 주저하지 말고 신청하세요! 방법은 저희가 찾겠습니다!</p>
			<a href="#popinfo1" class="btn_open"><img src="/img/dreamtreeyoutube1.png" class="youtube1"></a><a href="#popinfo1" class="btn_open">
				<img src="/img/dreamtreeyoutube2.png" class="youtube2"></a>
				
				<div id="popinfo1" class="popWrap" style="display:none;">
					<div class="popInner">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/zLLzvCkLDt4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<button type="button" class="btnClose">닫기</button>
					</div>
				</div>
				<div id="popinfo2" class="popWrap" style="display:none;">
					<div class="popInner">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/jXHjnKPvcLI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<button type="button" class="btnClose">닫기</button>
					</div>
				</div>
			<button class="sumit">꿈나무 장학 신청하기</button>
			<div class="target">
				<p class="tit">지원대상</p>
				<p class="contents">1) 갑작스런 가정 경제의 위기 등 긴박한 어려움에 처하여 급하게 장학금 및 멘토링이 필요한 저소득층 학생<br>
					2) 국민기초생활 수급자 부모 또는 본인 장애(1~3급),사회복지시설입/퇴소자(고아),기타 저소득층 및 결손학생 가정형편이 어려운 저소득층 가정의 학생으로서 학업성적이 우수하여
					교내외<br>
					생활에서 타의 모범이 되는 수능을 준비하는 학생(고등학생,검정고시생,N수생),성인고시를 준비하는 학생</p>
			</div>
		</div>

	</div>


	<!-- 하단 고정 고객센터 영역-->
	<!-- #include virtual="/inc/incCustomerCenter.asp" -->

	<!-- 푸터 영역-->
	<!-- #include virtual="/inc/incFooter.asp" -->

	<!-- 왼쪽 고정 아이콘 영역-->
	<!-- #include virtual="/inc/incFixed_IconWrap.asp" -->

	<!-- 특허권 침해 경고 팝업-->
	<div id="info1" class="popWrap" style="display:none;">
		<div class="popInner">
			<button type="button" class="btnClose"><i class="fa-solid fa-xmark"></i></button>
			<h3>특허권침해경고</h3>
			<div>
				<img src="/img/Patent.jpg" alt="특허권침해경고">
			</div>
			<button class="confrim">
				확인
			</button>
		</div>
	</div>

	<!-- VR -->
	<!-- #include virtual="/inc/incFixed_IconWrap.asp" -->

	<script src="/inc/js/suneung/common.js"></script>
	<script src="/inc/js/suneung/supervision/Supervision_Sub1.js"></script>

	<!-- #include virtual="/inc/incBottom.asp" -->
</body>

</html>