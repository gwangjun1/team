<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
IMP.init('imp46107716');

IMP.request_pay({
    pg : 'inicis', 
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '${mem.mb_name}',
    amount : '${map.allsum}', 
    buyer_email : 'iamport@siot.do',
    buyer_name : '${mem.mb_name}',
    buyer_tel : '${mem.mb_mobile}',
    buyer_addr : '${mem.mb_address}',
    buyer_postcode : '${mem.mb_postcode}'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제 이동하러 가기';
        msg += '에러 내용: ' + rsp.error_msg;
        location.href = "../orders/orderlist";
    } else {
        var msg = '결제 완료';
        msg += '고유 ID : ' + '${mem.mb_id}\n';
        msg += '거래 ID : ' + '${mem.mb_id}\n';
        msg += '결제 금액: ' + '${map.allsum}\n';
        msg += '카드 승인번호: ' + '${mem.mb_postcode}\n';
        location.href = "../orders/orderlist";
    }
    alert(msg);
});
</script>
</body>

</html>