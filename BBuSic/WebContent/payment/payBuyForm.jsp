<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
	</head>
	
	<body>
		상품구매<br/>
		<form>
			<table border="1">
				<tr>
					<th>상품명</th><th>제공 서비스</th><th>판매가(부가세 10% 별도)</th><th>이용안내</th>
				</tr>
				<tr>
					<td><input type="hidden" name="pay_name"  value=""/>${pay_name}</td>
					<td><input type="hidden" name="pay_benefit"  value=""/>${pay_name}</td>
					<td><input type="hidden" name="pay_amount"  value=""/>${pay_amount}</td>
					<td><input type="button" name="an"  value="이용안내"/></td>
				</tr>
				<c:if test="${ sale != 0 }">
					<tr>
						<td colspan="4">
							해당 상품은 T멤버십 30% 추가할인 차감 사용이 가능한 상품입니다.
							<input type="hidden" name="sale"  value=""/>${pay_amount * (sale/100)}
						</td>
					</tr>
				</c:if>
				<tr>
					<td colspan="4">
						구매 전 확인해 주세요!
						무제한 듣기는 PC, 안드로이드폰, 아이폰, 태블릿 등에서 이용 가능합니다.
						다운로드 시 상품 이용기간 동안 재생 가능한 DCF파일로 다운로드되며, 안드로이드폰, 아이폰, 아이패드, DCF파일 지원 MP3 Player 등에서 재생 가능합니다.
						PC에서 제공하는 음악/어학 다운로드의 잔여 곡/어학은 다음 달로 이월되지 않습니다.
						무제한 다운로드를 제공하는 상품의 속성 상 중도 해지 및 이에 따른 환불은 불가능하며, 해지 신청 시 다음 결제예정일에 자동 해지완료됩니다.
						결제취소는 결제 후 7일 내 서비스 미 이용 시 가능하며, 고객센터(1566-7727)나 이메일 문의로 신청하세요.
						일부 음원은 음원권리권자와의 계약 또는 요청에 의해 서비스가 제한될 수 있습니다.
						매월 정기 결제 시 SMS 등을 통한 별도의 거래내역 통지는 생략됩니다.
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<input type="checkbox" name="Yac_chk1"/> 멜론 유료 이용약관 및 안내 내용, DCF파일 지원기기를 확인하였으며 상기 내용에 동의합니다.<br/> 
						<input type="checkbox" name="Yac_chk2"/>  매월 구매일 멜론상품 이용금액이 정기결제 되는 것에 동의합니다.
					</td>
				</tr>
				<tr>
					<td colspan="4">
						이벤트 안내
						3개월 할인 특가 이벤트 참여 고객님을 위한 할인 프로모션으로, 3개월간의 이용 요금을 할인해 드립니다.
						첫 달에서 셋째 달까지 할인가격으로 결제되며, 넷째 달부터는 정상가로 결제됩니다.(VAT 별도)
						상품 이용 중 다른 상품으로 변경하시거나 해지하시면 이후부터는 더 이상 할인 혜택을 받으실 수 없습니다.
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<input type="checkbox" name="event_chk"/>이벤트 및 결제 안내 내용을 확인하였습니다.<br/> 
					</td>
				</tr>
				<tr>
					<td colspan="4">
						정기 결제 방법 선택<br/> 
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<input type="radio" name="buy" value="T_buy">&nbsp;SKT T멤버십 할인한도<br/>30% 차감 + SKT 휴대폰 
						<input type="radio" name="buy" value="SKT_buy">&nbsp;휴대폰 SKT
						<input type="radio" name="buy" value="ALL_buy">&nbsp;휴대폰 KT/LG U+/알뜰폰
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>