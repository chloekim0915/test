<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WebContent/j1/test4.jsp</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('img').attr('width', function(index){
		return(index+1)*100;
	});
});
//width 100 200 300적용
</script>
</head>
<body>
<img src="1.jpeg" width="100px">
<img src="2.jpeg" width="100px">
<img src="3.jpeg" width="100px">
</body>
</html>