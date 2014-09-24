<%@ page language="java" import="java.util.*,java.net.URL" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>add project</title>

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
    <style>
    </style>
  </head>
  <body>
    <jsp:include page="/header.jsp" />
    <div class="container-fluid">
    	<div id="div_projectList" class="row">
    	</div>
    </div>
    
    <!--delete dialog-->
    <div id="deleteDialog" class="modal fade">
    <div class="modal-dialog">
	  <div class="modal-content">
		  <div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			  <h4 class="modal-title">警告</h4>
		  </div>
		  <div class="modal-body">
		  	<p>你确定要删除记录吗？</p>
		  </div>
		  <div class="modal-footer">
			  <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
			  <button type="button" onclick="doDelete()" class="btn btn-primary">确定</button>
		  </div>
	  </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<input type="hidden" name="hf_projectId" id="hf_projectId" value="" />
	<!--delete dialog-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/javascripts/project.js"></script>
  </body>
</html>