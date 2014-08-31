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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <jsp:include page="/header.jsp" />
    
    <form class="form-horizontal" role="form">
    <fieldset>
		<legend>项目基本信息</legend>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">项目名称</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">项目经理</label>
    		<div class="col-sm-3">
		    	<select id="tbox_projectManager" class="form-control">
		    		<option value="喻欢">喻欢</option>
		    		<option value="杨文志">杨文志</option>
		    		<option value="黄丽莎">黄丽莎</option>
		    	</select>
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">集成系统名称</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">系统开发商名称</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">项目负责人(开发商)</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-1 control-label">联系方式</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">研发负责人(开发商)</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-1 control-label">联系方式</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">计划开发时间</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-1 control-label">计划验收时间</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">实际开发时间</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-1 control-label">实际验收时间</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">开发架构</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">网络环境</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">服务端环境</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">客户端环境</label>
    		<div class="col-sm-3">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">项目标识</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <label for="tbox_projectName" class="col-sm-1 control-label">加密文件上限</label>
    		<div class="col-sm-1">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
		    <div class="col-sm-1"></div>
		    <div class="col-sm-1"></div>
    		<div class="col-sm-1">
		    	<label>
				    <input type="checkbox" value="">增发标识
				</label>
		    </div>
		    <div class="col-sm-1">
		    	<label>
				    <input type="checkbox" value="">保持原有密钥
				</label>
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">多人操作</label>
    		<div class="col-sm-8">
		    	<input type="text" class="form-control" id="tbox_projectName" />
		    </div>
    	</div>
    </fieldset>
	    <fieldset>
			<legend>项目集成信息</legend>
			
		</fieldset>	
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>