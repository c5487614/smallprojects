<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" style="padding-left:200px" href="#"></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
    			<li class="active">
    				<a id="nav_firstPage" href="<%=request.getContextPath()%>/index.jsp" class="glyphicon glyphicon-th-list navbar-brand">首页</a>
    			</li>
				<li id="nav_project" class="dropdown">
					<a href="<%=request.getContextPath()%>/index.jsp" class="glyphicon glyphicon-list-alt dropdown-toggle" data-toggle="dropdown">项目 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
						<li><a href="<%=request.getContextPath()%>/project/addProject.jsp">新增</a></li>
						<li><a href="<%=request.getContextPath()%>/project/index.jsp">查看</a></li>
						<li class="divider"></li>
						</ul>
				</li>
				<li id="nav_item" class="dropdown">
					<a href="<%=request.getContextPath()%>/controls/index.do" class="glyphicon glyphicon-cog" data-toggle="dropdown">配置管理<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
						<li><a href="<%=request.getContextPath()%>/controls/addControl.do">增加配置</a></li>
						<li class="divider"></li>
						<li><a href="<%=request.getContextPath()%>/controls/index.do?pId=1">控件配置</a></li>
						<li><a href="<%=request.getContextPath()%>/controls/index.do?pid=2">接口配置</a></li>
						</ul>
				</li>
				<!--  
    			<li><a class="glyphicon glyphicon-list-alt dropdown" href="index.jsp">项目</a></li>
    			<li><a class="glyphicon glyphicon-list-alt" href="#">登陆</a></li>
    			-->
			</ul>
		</div><!--nav bar collapse-->
	</div>
</nav>