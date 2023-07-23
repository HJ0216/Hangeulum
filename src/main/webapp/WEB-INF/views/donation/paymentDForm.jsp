<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paymentForm.jsp here</title>

<link rel="reset" href="/Hangeulum/css/styleReset.css" />
<link rel="stylesheet" href="/Hangeulum/css/stylePaymentD.css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />

<style>
/*a tag 전역 설정*/
a {
	text-decoration: none;
}
</style>

</head>
<body>

	<%--Start Header--%>

	<div>
		<div id="header">
			<div class="headerContent">
				<a href="/Hangeulum/"><img src="/Hangeulum/image/logo.png"
					alt="로고" width="250" height="60"></a>
				<div class="menu">
					<ul>
						<li><a href="" style="color: #00ab33">기부</a></li>
						<li><a href="">펀딩</a></li>
						<li><a href="">고객센터</a></li>
					</ul>
				</div>

				<div class="header-r">
					<a href="#" class="login_btn">로그인</a> <span class="header-bar"></span>
					<a href="#" class="search_btn"> <img
						src="/Hangeulum/image/enlargement.png" alt="enlargement.png">
					</a>
				</div>
			</div>
		</div>
	</div>

	<%--End Header--%>





	<%--For Header Height--%>
	<div style="padding-top: 70px;"></div>





	<%--Start SubHeader--%>

	<div class="headerSub">
		<a class="headerSubSpan" style="color: #00ab33; font-weight: 700;">진행중
			모금함</a> <a class="headerSubSpan">모금 후기</a>
	</div>

	<%--End SubHeader--%>




	<%-- 
결제 이전 페이지에서 url상 query param으로 bdSeq 보내주기
<input type="hidden" id="bdSeq" value="${bdSeq }" >
 --%>
	<input type="hidden" id="bdSeq" value="2">
	<input type="hidden" id="userId" value="${sessionScope.userid}">


	<!--Content Start-->

	<div class="content">
		<div class="contentTitle">
			<h2>
				<div class="contentTitleMain">
					<span class="contentTitleMainSpan"></span> <br /> <span
						class="contentTitleSubSpan"></span>
				</div>
			</h2>

			<a href="javascript:void(0);" onclick="history.back(-1);"
				class="contentTitlePrevBtn"> <img
				src="/Hangeulum/image/prevBtn.jpg" alt="prevBtn" />
			</a>

		</div>


		<div class="contentMainCont">
			<div class="contentMainContTop">결제 기부하기</div>
			<div class="contentMainContAll">
				<div class="contentMainContTitle">
					<h2>
						<div class="contentMainContTitleMain">
							<strong>"기부자님의 소중한 마음으로 놀라운 변화가 일어납니다."</strong> <br /> <span
								class="contentMainContTitleSub">투명한 기부 후기로 그 변화를 소개하고
								보답하겠습니다!</span>
						</div>
					</h2>
				</div>

				<div class="contentMainContPayment">
					<div class="contentMainContPaymentAmt">
						<div class="contentMainContPaymentAmtDetail">
							<strong class="contentMainContPaymentAmtTitle">결제 할 금액</strong> <input
								type="text" value="10,000" id="contentMainContPaymentAmtInput">
							<span class="contentMainContPaymentAmtWon">원</span> <span
								class="contentMainContPaymentAmtSort">
								<button class="contentMainContPaymentAmtSortBtn" type="button"
									data-amount="10,000">1만원</button>
								<button class="contentMainContPaymentAmtSortBtn" type="button"
									data-amount="20,000">2만원</button>
								<button class="contentMainContPaymentAmtSortBtn" type="button"
									data-amount="30,000">3만원</button> <!--data-* 전역 특성은 사용자 지정 데이터 특성 클래스 형성
                                formPayment.js에서 data 특성 사용 방법: $(this).data('amount')-->
							</span> <span class="contentMainContPaymentAmtNotice">* 기부를 원하는
								금액을 입력한 후 <em>'기부하기'</em> 버튼을 눌러주세요!
							</span>
						</div>
					</div>

					<div class="contentMainContPaymentAct">가상계좌</div>
					<div class="contentMainContPaymentActTot">

						<!-- account_list -->
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th width="200" height="50" align="center"><a>은행명
										</td>
										<th width="250" align="center"><a>후원 전용 계좌</a></th>
										<th width="200" align="center"><a>예금주명</a></th>
							</tr>
							<tr>
								<td height="50"><img src="/Hangeulum/image/kb.png"
									width="120" height="40" style="align-items: center;"></td>
								<td>054990-72-012154</td>
								<td rowspan="6" style="text-align: center;"><img
									src="/Hangeulum/image/logo1.png" width="150"></td>
							</tr>
							<tr>
								<td height="50"><img src="/Hangeulum/image/sh.png"
									width="120" height="40" align="center"></td>
								<td>110-552-586535</td>
							</tr>
							<tr>
								<td height="50"><img src="/Hangeulum/image/nh.png"
									width="120" height="40" align="center"></td>
								<td>352-00246732-78</td>
							</tr>
							<tr>
								<td height="50"><img src="/Hangeulum/image/wr.png"
									width="120" height="40" align="center"></td>
								<td>1004-602-072538</td>
							</tr>
							<tr>
								<td height="50"><img src="/Hangeulum/image/ibk.png"
									width="120" height="40" align="center"></td>
								<td>790-1256-2547-397</td>
							</tr>
							<tr>
								<td height="50"><img src="/Hangeulum/image/keb.png"
									width="120" height="40" align="center"></td>
								<td>397-125625-25647</td>
							</tr>
						</table>

						<div style="font-size: 15px; font-weight: 700; margin-top: 30px;">
							기부금 영수증 발급 및 각종 후원 관련 문의 : 02-3486-9600</div>


					</div>

					<!-- account_list -->


					<div class="contentMainContPaymentRegular">
						<div class="contentMainContPaymentRegularInner">
							<strong class="contentMainContPaymentRegularInner1">결제수수료
								없이 100% 기부</strong>
							<p class="contentMainContPaymentRegularInner2">
								결제하신 금액은 기부시 별도 수수료 없이 <em>단체로 100% 기부</em>됩니다.
							</p>
						</div>

						<div class="contentMainContPaymentBtn">
							<a href="javascript:void(0);"
								class="contentMainContPaymentRegularBtnY">기부하기</a> <a
								href="javascript:void(0);" onclick="history.back(-1);"
								class="contentMainContPaymentRegularBtnN">모금함으로 돌아가기</a>
						</div>
					</div>



				</div>

			</div>

		</div>


	</div>

	<!--Content End-->





	<%--Start Footer--%>

	<div class="footer">
		<div class="footer_menu">
			<!--<div class="footer_menu_left"></div>-->
			<div class="footer_menu_right">
				<ul>
					<li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음
						안내</li>
					<li><a href="/Hangeulum/support/noticeList">공지사항</a></li>|&nbsp;&nbsp;
					<li><a href="/Hangeulum/support/faqList">자주 묻는 질문</a></li>|&nbsp;&nbsp;
					<li><a href="/Hangeulum/support/consultForm">문의/신고</a></li>|&nbsp;&nbsp;
					<li><a href="">이용약관</a></li>
				</ul>
			</div>
		</div>

		<div class="footer_info_wrap">
			<div class="footer_info_inner">
				<!--<div class="footer_info_left"></div>-->
				<div class="footer_info_right">
					<ul class="footer_info_list">
						<li class="footer_info_item">재단법인 한걸음</li>
						<li class="footer_info_item">대표자: 이정규, 김지혜, 김현지, 엄태훈, 이소훈,
							최도담</li>
						<li class="footer_info_item">주소 : 서울시 강남구 역삼동 819-3 삼오빌딩 5-9층</li>
						<li class="footer_info_item">대표전화 : 02-3486-9600</li>
						<li class="footer_info_item">이메일 : bitcamp601@naver.com</li>
						<li class="footer_info_item">사업자등록번호 : 220-12-34567</li>
						<li class="footer_info_item">통신판매업신고 : 제2023-서울역삼-601호</li>
						<br />
						<small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로,
							프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
						<div class="footer_info_copyright">
							<a href="/Hangeulum/" class="footer_info_naver"><img
								src="/Hangeulum/image/logo1.png" width="70" height="45"
								alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights
							Reserved.
						</div>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<%--End Footer--%>





	<script type="text/javascript"
		src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="/Hangeulum/js/paymentD.js"></script>




</body>
</html>