<%@ page language="java" import="java.util.*,java.net.URL" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="cn.org.hbca.project.model.ProjectinfoWithBLOBs"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>增加项目</title>

    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <link href="<%=request.getContextPath()%>/resources/bootstrap_datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" >
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- top begin -->
	<jsp:include page="/header.jsp" />
	<!-- top end -->
	<form id="formItem" class="form-horizontal" role="form">
	<input type="hidden" name="hf_isUpdate" id="hf_isUpdate" 
    value="<c:out value="${isUpdate}"/>" />
	<fieldset>
		<legend>控件配置信息</legend>
		
		<div class="form-group">
			<label for="tbox_pId" class="col-sm-3 control-label">配置节点</label>
	    	<div class="col-sm-7">
			    <input name="tbox_pId" type="text" class="form-control" id="tbox_pId"
			    	value="<c:out value="${control.pId}"/>" />
			</div>
    		<label for="tbox_itemType" class="col-sm-3 control-label">配置类型</label>
    		<div class="col-sm-7">
		    	<select name="tbox_itemType" id="tbox_itemType" class="form-control">
		    		<option value="功能">功能</option>
		    		<option value="客户端方法">客户端方法</option>
		    		<option value="服务端方法">服务端方法</option>
		    		<option value="其他">其他</option>
		    		<c:if test="${control!=null && control.itemType!=''}" >
		    			<option value="<c:out value="${control.itemType}"/>" selected><c:out value="${control.itemType}"/></option>
		    		</c:if> 
		    	</select>
		    </div>
		    <label for="tbox_itemClick" class="col-sm-3 control-label">配置方法</label>
    		<div class="col-sm-7">
		    	<input name="tbox_itemClick" type="text" class="form-control" id="tbox_itemClick"
		    	value="<c:out value="${control.itemClick}"/>" />
		    </div>
		    <label for="tbox_itemName" class="col-sm-3 control-label">配置名称</label>
    		<div class="col-sm-7">
		    	<input name="tbox_itemName" type="text" class="form-control" id="tbox_itemName"
		    	value="<c:out value="${control.itemName}"/>" />
		    </div>
		    <label for="tbox_itemValue" class="col-sm-3 control-label">配置值</label>
    		<div class="col-sm-7">
		    	<input name="tbox_itemValue" type="text" class="form-control" id="tbox_itemValue"
		    	value="<c:out value="${control.itemValue}"/>" />
		    </div>
		    <label for="tbox_itemOrder" class="col-sm-3 control-label">配置序号</label>
    		<div class="col-sm-7">
		    	<input name="tbox_itemOrder" type="text" class="form-control" id="tbox_itemOrder"
		    	value="<c:out value="${control.itemOrder}"/>" />
		    </div>
    	</div>
	</fieldset>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-1">
				<button id="btn_storeBasic" type="button" class="btn btn-primary">保存</button>
			</div>
		</div>
	</div>
	</form>
</body>
</html>