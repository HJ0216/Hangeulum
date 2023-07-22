<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="reset" href="/Hangeulum/css/reset.css" />
<link rel="stylesheet" href="/Hangeulum/css/stylePaymentF.css" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />

<style>
/*a tag 전역 설정*/
a {text-decoration: none;}

</style>

</head>
<body>


<div>
    <div id="header">
        <div class="headerContent">
            <a href="/Hangeulum/"><img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60"></a>
            <div class="menu">
                <ul>
                    <li><a href="">기부</a></li>
                    <li><a href="" style="color: #00ab33">펀딩</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="#" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.png">
                </a>
            </div>
        </div>
    </div>
</div>

<%--End Header--%>





<!--For Header Height-->
<div style="padding-top: 70px;"></div>





<!--Start SubHeader-->

<div class="headerSub">
    <a class="headerSubSpan" style="color: #00ab33">전체 펀딩</a>
    <a class="headerSubSpan">펀딩 후기</a>
</div>

<!--End SubHeader-->





<%-- 
결제 이전 페이지에서 url상 query param으로 bdSeq 보내주기
<input type="hidden" id="bdSeq" value="${bdSeq }" >
 --%>
<input type="hidden" id="boardFSeq" value="21" >
<%-- <input type="hidden" id="userId" value="${sessionScope.userid}" >
 --%>
<input type="text" id="userId" value="dlqhdwo1" >
<input type="text" id="totalPayment" value="700" >



<!--Content Start-->

<div class="content">
    <div class="contentTitle">
        <h2>
            <div class="contentTitleMain">
                <span class="contentTitleSub1">펀딩 결제 신청하기</span>
                <br/>
                <a href="javascript:void(0);" onclick="history.back(-1);" class="contentTitlePrevBtn">
                    <span class="contentTitleSub2">[취소]</span>
                </a>
            </div>
        </h2>
    </div>

    <div class="contentCont">
        <div class="contentNoticeWrap">
            <div class="contentEstimatedDateD">
                <strong>상품 발송예정일: <span class="contentEstimatedDateDSpan"></span></strong>
                <div class="contentNoticeDelay">[도착 지연 안내]</div>
            </div>


            <div class="contentEstimatedDateP">
                <div class="contentEstimatedDatePL">결제일</div>
                <div class="contentEstimatedDatePR">
                    <span class="contentEstimatedDatePR1"></span>
                    <br/><span class="contentEstimatedDatePR2">┕ 결제실패 시 다음날 오전에 1회 재결제 시도</span>
                </div>
            </div>
        </div>


        <div class="contentProduct">
            <div class="contentProductClick"><span class="contentProductClickL">주문 상품</span><span class="contentProductClickR">▼</span></div>
            <div class="contentProductForToggle">
                <div class="contentSeller"> <!--주문 상품 toggle start-->
                    <div class="contentSellerDiv"><span class="contentSellerSpan"></span><span class="contentSellerInfo" style="margin-left: 5px">[판매자 정보 안내]</span></div>
                </div>
                <div class="contentProductDetail">
                    <div class="contentProductDetailMain">
                        <div class="contentProductDetailMainL">
                            <img class="contentProductDetailMainLImg" width="100" height="100">
                        </div>
                        <div class="contentProductDetailMainR">
                            <div class="contentProductDetailMainR1"></div>
                            <div style="color: #999999"><span style="border: 1px solid #999999; padding: 1px; margin: 1px; margin-right: 5px;">옵션</span>리워드: <span class="contentProductDetailMainR1RewardProdSpan">[DB] 상품명</span></div>
                            <div style="color: #1088ed;"><span class="contentProductDetailMainR1RewardPriceSpan" style="color: #1088ed;">[DB] 39,900</span>원</div>
                        </div>
                    </div>
                </div>
                <div style="background: #f0faff; line-height: 2.5;">
                	주문 금액
                	<span class="contentProductDetailTotalAmount" style="margin-right: 5px">[DB] 총계</span>
                	원
                </div>
            </div>
        </div>



        <div class="contentUserInfo">
            <div class="contentUserInfoClick"><span class="contentUserInfoClickL">주문자</span><span class="contentUserInfoClickR">▼</span></div>
            <div class="contentUserInfoForToggle">
            <div class="contentUserInfoGet"><!--배송지 toggle-->
                <div class="contentUserInfoGetName">[DB] 구매자 이름</div>
                <div class="contentUserInfoGetPhone">[DB] 연락처</div>
                <div class="contentUserInfoGetEmail">[DB] 이메일</div>
                <div class="contentUserInfoGetAddr">
                    배송지 입력<br/>
                    <input type="text" name="zipcode" id="zipcode" placeholder="우편번호" readonly>
                    <input type="button" value="주소검색" id="zipcodeSearch" onclick="execDaumPostcode()"><br/>
                    <input type="text" name="addr1" id="addr1" placeholder="주소" readonly><br/>
                    <input type="text" name="addr2" id="addr2" placeholder="상세주소">                    
                </div>
                <div class="contentUserInfoDelMemo">
                    <select>
                        <option value="select">배송메모를 선택해 주세요.</option>
                        <option>배송 전에 미리 연락 바랍니다.</option>
                        <option>부재시 경비실에 맡겨 주세요.</option>
                        <option>부재시 전화 주시거나 문자 남겨 주세요.</option>
                    </select>
                </div>
            </div>
            </div>
        </div>


        <div class="contentPaymentLast">
            <div class="contentPaymentLastClick"><span class="contentPaymentLastClickL">펀딩 결제</span><span class="contentPaymentLastClickR">▼</span></div>
            <div class="contentPaymentLastToggle">
            <div class="contentMainContPaymentAct">가상계좌</div>
            <div class="contentMainContPaymentActTot">

                <!-- account_list -->
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <th width="200" height="50" align="center"><a>은행명</td>
                        <th width="250" align="center"><a>펀딩 전용 계좌</a></th>
                        <th width="200" align="center"><a>예금주명</a></th>
                    </tr>
                    <tr>
                        <td height="50"><img src="/Hangeulum/image/kb.png" width="120" height="40" style="align-items: center;"></td>
                        <td>054990-72-012154</td>
                        <td rowspan="6" style="text-align: center;">
                            <img src="/Hangeulum/image/logo1.png" width="150">
                        </td>
                    </tr>
                    <tr>
                        <td height="50"><img src="/Hangeulum/image/sh.png" width="120" height="40"  align="center"></td>
                        <td>110-552-586535</td>
                    </tr>
                    <tr>
                        <td height="50"><img src="/Hangeulum/image/nh.png" width="120" height="40" align="center"></td>
                        <td>352-00246732-78</td>
                    </tr>
                    <tr>
                        <td height="50"><img src="/Hangeulum/image/wr.png" width="120" height="40" align="center"></td>
                        <td>1004-602-072538</td>
                    </tr>
                    <tr>
                        <td height="50"><img src="/Hangeulum/image/ibk.png" width="120" height="40" align="center"></td>
                        <td>790-1256-2547-397</td>
                    </tr>
                    <tr>
                        <td height="50"><img src="/Hangeulum/image/keb.png" width="120" height="40" align="center"></td>
                        <td>397-125625-25647</td>
                    </tr>
                </table>
                
                
            </div>
            
            <!-- account_list -->
        </div>
    </div>

        <div class="contentImportant">
            <div class="contentImportant1">꼭 확인해주세요!</div>
            <div class="contentImportant2">
                <ul>
                    <li>마이페이지에서 상품 배송정보, 결제수단 변경이 가능합니다.</li>
                    <li>1일/1회 결제한도를 설정한 경우, 펀딩결제에서는 적용이 제외됩니다.</li>
                </ul>
            </div>
        </div>


        <div class="contentAgree">
            <div class="contentAgreeCheckBoxWrap"><input class="contentAgreeCheckBox" type="checkbox"><div class="contentAgreeCheckBoxA"><a href="javascript:void(0)">펀딩결제 이용안내 동의</a></div></div>
            <div class="contentAgreeInfo">
                <div>개인정보 제공 동의: <span class="contentAgreeInfoInnerSpan">[DB] 판매자</span></div>
                <div class="contentAgreeInfoSafety">구매안전 서비스 안내</div>
            </div>
        </div>

        <div class="contentTotalAmount"><span class="contentTotalAmount">[DB] 합계</span>원</div>


        <div class="contentFinalCheck">신청 내용을 확인하였으며, 정보 제공 등에 동의합니다.</div>


        <div class="contentFundingPaySubmitBtn">펀딩결제 신청하기</div>
        <div class="contentNoticeSmall">한걸음은 전자결제서비스제공자 및 통신판매중개자이며 통신판매의 당사자가 아닙니다. 상품, 상품정보 및 거래에 관한 의무와 책임은 판매자에게 있습니다.</div>

        </div>

</div>

<!--Content End-->











<!--1차 모달: 배송일-->
<!--Start Modal-->

<div class="contentNoticeDelayModal" id="contentNoticeDelayModal">

    <!-- Modal content -->
    <div class="contentNoticeDelayContentModal">
        <p style="text-align: center; margin-bottom: 0;"><span style="font-size: 14pt;"><b><span style="font-size: 16pt;">도착예정일 안내</span></b></span></p>
        <p style="text-align: left; line-height: 1.5; color:#4D4D4D; font-size: 10pt; padding-bottom: 10px;"><br />
            배송 업체 또는 기상/교통상황으로 도착 예정일 보다 배송이 지연될 수 있습니다.</p>
        <div class="contentNoticeDelayContentModalExit" onClick="close_pop();">
            <span style="font-size: 13pt;" >
                닫기
            </span>
        </div>
    </div>

</div>

<!--End Modal-->



<!--2차 모달: 판매자 정보-->
<!--Start Modal-->

<div class="contentSellerInfoModal" id="contentSellerInfoModal">

    <!-- Modal content -->
    <div class="contentSellerInfoContentModal">
        <p style="text-align: center; margin-bottom: 0;"><span style="font-size: 14pt;"><b><span style="font-size: 16pt;">판매자 이메일 주소 안내</span></b></span></p>
        <p style="text-align: left; line-height: 1.5; color:#4D4D4D; font-size: 10pt; padding-bottom: 10px;"><br />
            이메일:&nbsp;&nbsp;<span class="contentSellerInfoContentModalInnerSpan"> [DB] 이메일</span>
            <br/>주문상품 관련하여 판매자에게 보내야 하는 자료/파일이 있는 경우, 주문자 정보와 요구사항을 포함하여 위 이메일 주소로 보내주세요.
        </p>
        <div class="contentSellerInfoContentModalExit" onClick="close_pop();">
            <span style="font-size: 13pt;" >
                닫기
            </span>
        </div>
    </div>

</div>

<!--End Modal-->


<!--3차 모달: 이용안내 동의-->
<!--Start Modal-->

<div class="contentUseAgreeModal" id="contentUseAgreeModal">

    <!-- Modal content -->
    <div class="contentUseAgreeContentModal">
        <p style="text-align: center; margin-bottom: 0;"><span style="font-size: 14pt;"><b><span style="font-size: 16pt;">펀딩결제 이용 안내</span></b></span></p>
        <p style="text-align: left; line-height: 1.5; color:#4D4D4D; font-size: 10pt; padding-bottom: 10px;"><br />
            1. 귀하가 해피빈 펀딩에서 신청하신 펀딩결제는 네이버파이낸셜㈜에서 대행합니다.
            <br/>2. 귀하의 결제수단에서 제공하는 이용내역에는 이용판매처로 네이버파이낸셜㈜가 표기되며, 네이버페이 결제내역에는 펀딩 상품 판매처로 해당 판매처가 표기됩니다.
            <br/>3. 펀딩 상품 실제 결제일 전 취소 및 저장된 결제수단 삭제는 해피빈 펀딩내역 화면을 통해 진행하실 수 있습니다.
            <br/>4. 펀딩결제를 통해 귀하가 결제해야 할 금액은 판매처에서 등록한 상품금액을 기준으로 할인금액을 적용하여 승인되므로, 승인금액에 대한 확인 및 문의는 판매처에 부탁드립니다.
            <br/>5. 펀딩결제시 귀하가 보유한 네이버페이 포인트 및 네이버페이 머니의 사용 여부는 최초 펀딩결제 신청 시점에 선택할 수 있으며, 해피빈 펀딩내역 화면의 펀딩 결제수단 관리 메뉴를 통해 상시 변경 가능합니다.
            <br/>네이버페이 머니 통장 서비스 미이용자의 경우, 네이버페이 포인트 및 네이버페이 머니의 사용을 "ON"으로 설정하면 펀딩결제 시점에 보유한 네이버페이 포인트 및 네이버페이 머니가 우선 차감되고 차감 후 잔여금액에 대해 결제가 진행됩니다.
            <br/>네이버페이 머니 통장 서비스 이용자의 경우, 네이버페이 포인트의 사용을 "ON"으로 설정하면 펀딩결제 시점에 보유한 네이버페이 포인트가 우선 차감되고 차감 후 잔여금액에 대해 결제가 진행됩니다.
            <br/>6. 네이버파이낸셜㈜는 귀하의 본 펀딩결제 신청에 따라 발생하는 결제내역을 설정하신 알림 수단으로 통보해 드리며, https://new-m.pay.naver.com/pcpay 에서도 결제내역을 확인하실 수 있습니다.
        </p>
        <div class="contentUseAgreeContentModalExit" onClick="close_pop();">
            <span style="font-size: 13pt;" >
                닫기
            </span>
        </div>
    </div>

</div>

<!--End Modal-->

<!--4차 모달: 구매 안전 서비스-->
<!--Start Modal-->

<div class="contentAgreeInfoSafetyModal" id="contentAgreeInfoSafetyModal">

    <!-- Modal content -->
    <div class="contentAgreeInfoSafetyContentModal">
        <p style="text-align: center; margin-bottom: 0;"><span style="font-size: 14pt;"><b><span style="font-size: 16pt;">구매안전 서비스 안내</span></b></span></p>
        <p style="text-align: left; line-height: 1.5; color:#4D4D4D; font-size: 10pt; padding-bottom: 10px;"><br />
            네이버파이낸셜(주)의 네이버페이 주문서를 통해 거래하는 모든 판매자는 안전거래를 위해 구매금액, 결제수단에 관계없이 모든 거래에 대하여 자동적으로 네이버파이낸셜(주)이 제공하는 구매안전서비스(결제대금예치)를 적용하고 있습니다.
            <br/><br/>네이버파이낸셜(주)의 전자금융거래법에 따라 금융위원회에 전자금융업자로 등록하였으며 결제대금예치업 등록번호는 02-006-00056 입니다.
            <br/><br/>등록여부는 금융감독원 홈페이지(www.fss.or.kr)의 인허가업무안내 > 등록신고 > 전자금융업등록현황에서 확인하실 수 있습니다.
        </p>
        <div class="contentAgreeInfoSafetyContentModalExit" onClick="close_pop();">
            <span style="font-size: 13pt;" >
                닫기
            </span>
        </div>
    </div>

</div>

<!--End Modal-->










<%--Start Footer--%>

<div class="footer">
    <div class="footer_menu">
        <!--<div class="footer_menu_left"></div>-->
        <div class="footer_menu_right">
            <ul>
                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</li>
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
                    <li class="footer_info_item">대표자: 이정규, 김지혜, 김현지, 엄태훈, 이소훈, 최도담</li>
                    <li class="footer_info_item">주소 : 서울시 강남구 역삼동 819-3 삼오빌딩 5-9층</li>
                    <li class="footer_info_item">대표전화 : 02-3486-9600</li>
                    <li class="footer_info_item">이메일 : bitcamp601@naver.com</li>
                    <li class="footer_info_item">사업자등록번호 : 220-12-34567</li>
                    <li class="footer_info_item">통신판매업신고 : 제2023-서울역삼-601호</li>
                    <br/>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="/Hangeulum/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>

<%--End Footer--%>



<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/Hangeulum/js/PaymentF.js"></script>



<script>
//팝업 Close 기능
function close_pop(flag) {
    $('div#contentNoticeDelayModal').hide();
    $('div#contentSellerInfoModal').hide();
    $('div#contentUseAgreeModal').hide();
};

</script>

<script>
    // 우편변호 검색 클릭 시: 다음 우편번호api
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
//                var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 미사용 항목: 참고항목 주석 처리
            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
//                if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
//                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
//                        extraAddr += data.bname;
//                    }
                // 건물명이 있고, 공동주택일 경우 추가한다.
//                    if(data.buildingName !== '' && data.apartment === 'Y'){
//                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
//                    }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
//                    if(extraAddr !== ''){
//                        extraAddr = ' (' + extraAddr + ')';
//                    }
                // 조합된 참고항목을 해당 필드에 넣는다.
//                    document.getElementById("sample6_extraAddress").value = extraAddr;
            
//                } else {
//                    document.getElementById("sample6_extraAddress").value = '';
//                }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}

</script>



</body>
</html>