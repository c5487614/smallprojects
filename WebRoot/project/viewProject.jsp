<%@ page language="java" import="java.util.*,java.net.URL" pageEncoding="UTF-8"%>
<%@ page import="cn.org.hbca.project.model.ProjectinfoWithBLOBs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
    <jsp:useBean id="project" type="cn.org.hbca.project.model.ProjectinfoWithBLOBs" scope="request"></jsp:useBean>
    <div class="container-fluid">
    <div class="col-sm-2"></div>
    <div class="panel panel-default col-sm-8">
    	<div class="panel-body">
    		<table class="table table-bordered">
    			<tr>
    				<td class="success" colspan="1">项目名称</td>
    				<td colspan="3">
    				<jsp:getProperty property="projectName" name="project" />
    				</td>
    				<td class="success" colspan="1">项目经理</td>
    				<td colspan="3">
    				<jsp:getProperty property="projectManager" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">集成系统名称</td>
    				<td colspan="3">
    				<jsp:getProperty property="manufacturerProjectName" name="project" />
    				</td>
    				<td class="success" colspan="1">系统开发商名称</td>
    				<td colspan="3">
    				<jsp:getProperty property="manufacturerName" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">项目负责人（开发商）</td>
    				<td colspan="1">
    				<jsp:getProperty property="manufacturerProjectManager" name="project" />
    				</td>
    				<td class="success" colspan="1">联系方式</td>
    				<td colspan="1">
    				<jsp:getProperty property="MPMContact" name="project" />
    				</td>
    				<td class="success" colspan="1">研发负责人（开发商）</td>
    				<td colspan="1">
    				<jsp:getProperty property="manufacturerProjectDeveloper" name="project" />
    				</td>
    				<td class="success" colspan="1">联系方式</td>
    				<td colspan="1">
    				<jsp:getProperty property="MPDContact" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">计划开发时间</td>
    				<td colspan="3">
    				<fmt:formatDate pattern="yyyy-MM-dd" value="${project.planDevStartDate}"/>
    				</td>
    				<td class="success" colspan="1">计划验收时间</td>
    				<td colspan="3">
    				<fmt:formatDate pattern="yyyy-MM-dd" value="${project.planAcceptDate}"/>
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">实际开发时间</td>
    				<td colspan="3">
    				<fmt:formatDate pattern="yyyy-MM-dd" value="${project.actualDevStartDate}"/>
    				</td>
    				<td class="success" colspan="1">实际验收时间</td>
    				<td colspan="3">
    				<fmt:formatDate pattern="yyyy-MM-dd" value="${project.actualAcceptDate}"/>
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">开发架构</td>
    				<td colspan="3">
    				<jsp:getProperty property="devTech" name="project" />
    				</td>
    				<td class="success" colspan="1">网络环境</td>
    				<td colspan="3">
    				<jsp:getProperty property="netWorkEnvironment" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">服务端环境</td>
    				<td colspan="3">
    				<jsp:getProperty property="serverEnvironment" name="project" />
    				</td>
    				<td class="success" colspan="1">客户端环境</td>
    				<td colspan="3">
    				<jsp:getProperty property="clientEnvironment" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">项目标识</td>
    				<td colspan="1">
    				<jsp:getProperty property="projectCode" name="project" />
    				</td>
    				<td class="success" colspan="1">加密文件上限</td>
    				<td colspan="1">
    				<jsp:getProperty property="encryptFileLimit" name="project" />
    				</td>
    				<td class="success" colspan="1">增发标识</td>
    				<td colspan="1">
    				<jsp:getProperty property="increaseIssue" name="project" />
    				</td>
    				<td class="success" colspan="1">保持原有密钥</td>
    				<td colspan="1">
    				<jsp:getProperty property="keepEncryptKey" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">多人操作</td>
    				<td colspan="7">
    				<jsp:getProperty property="multiOperation" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">签名服务器</td>
    				<td colspan="3">
    				<jsp:getProperty property="SVSServerType" name="project" />
    				</td>
    				<td class="success" colspan="1">时间戳服务器</td>
    				<td colspan="3">
    				<jsp:getProperty property="TSSServerType" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">介质</td>
    				<td colspan="3">
    				<jsp:getProperty property="keyManufacture" name="project" />
    				</td>
    				<td class="success" colspan="1">签章</td>
    				<td colspan="3">
    				<jsp:getProperty property="sealType" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="1">集成功能</td>
    				<td colspan="1">
    				<jsp:getProperty property="projectManager" name="project" />
    				</td>
    			</tr>
    			<tr>
    				<td class="success" colspan="2">接口库名称</td>
    				<td class="success" colspan="2">版本号</td>
    				<td class="success" colspan="2">代码签名时间</td>
    				<td class="success" colspan="2">其他</td>
    			</tr>
    			<c:forEach var="model" items="${interfaceUsed}">
    			<tr>
    				<td colspan="2"><c:out value="${model.name}"/></td>
    				<td colspan="2"><c:out value="${model.version}"/></td>
    				<td colspan="2"><c:out value="${model.signDate}"/></td>
    				<td colspan="2"><c:out value="${model.other}"/></td>
    			</tr>
    			</c:forEach>
    			
    			<tr>
    				<td class="success" colspan="2">实现功能</td>
    				<td class="success" colspan="2">客户端调用接口</td>
    				<td class="success" colspan="2">服务端调用接口</td>
    				<td class="success" colspan="2">其他</td>
    			</tr>
    			<c:forEach var="model" items="${functionUsed}">
    			<tr>
    				<td colspan="2"><c:out value="${model.name}"/></td>
    				<td colspan="2"><c:out value="${model.clientFunctions}"/></td>
    				<td colspan="2"><c:out value="${model.serverFunctions}"/></td>
    				<td colspan="2"><c:out value="${model.other}"/></td>
    			</tr>
    			</c:forEach>
    		</table>
    	</div>
    </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>