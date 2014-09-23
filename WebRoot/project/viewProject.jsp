<%@ page language="java" import="java.util.*,java.net.URL" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>项目详情</title>

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
    <jsp:include page="/header.jsp" />
    <div class="panel panel-default col-sm-8">
    	<div class="panel-heading">
    	项目信息表
    	</div>
    	<div class="panel-body">
    		<table class="table table-bordered">
    			<tr>
    				<td class="success" colspan="1">项目名称</td>
    				<td colspan="3"></td>
    				<td class="success" colspan="1">项目经理</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">集成系统名称</td>
    				<td colspan="3"></td>
    				<td class="success" colspan="1">系统开发商名称</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">项目负责人（开发商）</td>
    				<td colspan="1">负责人</td>
    				<td class="success" colspan="1">联系方式</td>
    				<td colspan="1">1365255411</td>
    				<td class="success" colspan="1">研发负责人（开发商）</td>
    				<td colspan="1">负责人</td>
    				<td class="success" colspan="1">联系方式</td>
    				<td colspan="1">255525544588</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">计划开发时间</td>
    				<td colspan="3"></td>
    				<td class="success" colspan="1">计划验收时间</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td colspan="1">实际开发时间</td>
    				<td colspan="3"></td>
    				<td colspan="1">实际验收时间</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td colspan="1">开发架构</td>
    				<td colspan="3"></td>
    				<td colspan="1">网络环境</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td colspan="1">服务端环境</td>
    				<td colspan="3"></td>
    				<td colspan="1">客户端环境</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td colspan="1">项目标识</td>
    				<td colspan="1"></td>
    				<td colspan="1">加密文件上限</td>
    				<td colspan="1"></td>
    				<td colspan="1">增发标识</td>
    				<td colspan="1"></td>
    				<td colspan="1">保持原有密钥</td>
    				<td colspan="1"></td>
    			</tr>
    			<tr>
    				<td colspan="1">多人操作</td>
    				<td colspan="7"></td>
    			</tr>
    			<tr>
    				<td colspan="1">签名服务器</td>
    				<td colspan="3"></td>
    				<td colspan="1">时间戳服务器</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td colspan="1">介质</td>
    				<td colspan="3"></td>
    				<td colspan="1">签章</td>
    				<td colspan="3"></td>
    			</tr>
    			<tr>
    				<td colspan="1">集成功能</td>
    				<td colspan="1"></td>
    			</tr>
    			<tr>
    				<td colspan="2">接口库名称</td>
    				<td colspan="2">版本号</td>
    				<td colspan="2">代码签名时间</td>
    				<td colspan="2">其他</td>
    			</tr>
    			<tr>
    				<td></td>
    				<td></td>
    				<td></td>
    				<td></td>
    			</tr>
    			<tr>
    				<td colspan="2">实现功能</td>
    				<td colspan="2">客户端调用接口</td>
    				<td colspan="2">服务端调用接口</td>
    				<td colspan="2">其他</td>
    			</tr>
    			<tr>
    				<td></td>
    				<td></td>
    				<td></td>
    				<td></td>
    			</tr>
    		</table>
    	</div>
    	<div class="panel-footer">
    	Panel footer
    	</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>