<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="shortcut icon" href="<%=request.getContextPath()%>/cch32.ico" />
	    <!-- Bootstrap -->
	    <link href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    
	    <link href="<%=request.getContextPath()%>/resources/bootstrap_datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
	    <link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" >
		<script type="text/javascript">
    	function test(obj) {
    		obj.style.height = window.screen.availHeight + 'px';

    	}
    	</script>
	</head>
	<body>
	<!-- top begin -->
	<jsp:include page="/header.jsp" />
	<!-- top end -->
	<div>
		<dir style="background:url(../images/uss_03.png);margin: 0px;">
		<img src="../images/uss_01.png" />
		</dir>
	</div>
	<div style="padding: 0px;" class="container-fluid">
		<div style="padding: 0px;height:auto;" class="col-md-2">
			<ul class="nav nav-pills nav-stacked" role="tablist">
			<li role="presentation" class="active"><a target="frameRight" href="<%=request.getContextPath()%>/controls/addControl.do">添加配置项</a></li>
			<li role="presentation"><a href="#">Profile</a></li>
			<li role="presentation"><a href="#">Messages</a></li>
			</ul>
		</div>
		<div style="padding:0px;height:auto;" class="col-md-10">
			<iframe onload="test(this);" id="iframe_main" name="frameRight" id="frameRight" frameborder=0 style=" width:100%; margin-left:5px;padding:0px;height:auto;"  src="../project/index.jsp">
	    </iframe>
		</div>
	</div>
	
	</body>
</html>