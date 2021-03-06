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
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/cch32.ico" />
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
    <form id="formProject" class="form-horizontal" role="form">
    <input type="hidden" name="hf_projectId" id="hf_projectId" 
    value="<c:out value="${project.projectId}"/>"
    />
    <input type="hidden" name="hf_functions" id="hf_functions" value="" />
    <input type="hidden" name="hf_interfaces" id="hf_interfaces" value="" />
    <fieldset>
		<legend>项目基本信息</legend>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">项目名称</label>
    		<div class="col-sm-3">
		    	<input name="tbox_projectName" type="text" class="form-control" id="tbox_projectName"
		    	value="<c:out value="${project.projectName}"/>" />
		    </div>
		    <label for="tbox_projectManager" class="col-sm-2 control-label">项目经理</label>
    		<div class="col-sm-3">
		    	<select name="tbox_projectManager" id="tbox_projectManager" class="form-control">
		    		<option value="喻欢">喻欢</option>
		    		<option value="杨文志">杨文志</option>
		    		<option value="黄丽莎">黄丽莎</option>
		    		<c:if test="${project!=null && project.projectManager!=''}" >
		    			<option value="<c:out value="${project.projectManager}"/>" selected><c:out value="${project.projectManager}"/></option>
		    		</c:if> 
		    	</select>
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">集成系统名称</label>
    		<div class="col-sm-3">
		    	<input name="tbox_MProjectName" type="text" class="form-control" id="tbox_MProjectName" 
		    	value="<c:out value="${project.manufacturerProjectName}"/>" />
		    </div>
		    <label for="tbox_manufactureName" class="col-sm-2 control-label">系统开发商名称</label>
    		<div class="col-sm-3">
		    	<input name="tbox_manufactureName" type="text" class="form-control" id="tbox_manufactureName"
		    	value="<c:out value="${project.manufacturerName}"/>" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_MProjectManager" class="col-sm-2 control-label">项目负责人(开发商)</label>
    		<div class="col-sm-1">
		    	<input name="tbox_MProjectManager" type="text" class="form-control" id="tbox_MProjectManager" 
				value="<c:out value="${project.manufacturerProjectManager}"/>" />
		    </div>
		    <label for="tbox_MPMContact" class="col-sm-1 control-label">联系方式</label>
    		<div class="col-sm-1">
		    	<input name="tbox_MPMContact" type="text" class="form-control" id="tbox_MPMContact" 
				value="<c:out value="${project.MPMContact}"/>" />
		    </div>
		    <label for="tbox_MProjectDev" class="col-sm-2 control-label">研发负责人(开发商)</label>
    		<div class="col-sm-1">
		    	<input name="tbox_MProjectDev" type="text" class="form-control" id="tbox_MProjectDev" 
		    	value="<c:out value="${project.manufacturerProjectDeveloper}"/>" />
		    </div>
		    <label for="tbox_MPDContact" class="col-sm-1 control-label">联系方式</label>
    		<div class="col-sm-1">
		    	<input name="tbox_MPDContact" type="text" class="form-control" id="tbox_MPDContact" 
		    	value="<c:out value="${project.MPDContact}"/>" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_planDevDate" class="col-sm-2 control-label">计划开发时间</label>
    		<div class="col-sm-3">
		    	<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_planDevDate" data-link-format="yyyy-mm-dd">
                    <input name="tbox_planDevDate" id="tbox_planDevDate" class="form-control" type="text" 
                    value="<fmt:formatDate pattern="yyyy-MM-dd" value="${project.planDevStartDate}"/>"/>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_planDevDate" type="hidden" value="" />
		    </div>
		    <label for="tbox_planAcceptDate" class="col-sm-2 control-label">计划验收时间</label>
    		<div class="col-sm-3">
		    	<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_planAcceptDate" data-link-format="yyyy-mm-dd">
                    <input name="tbox_planAcceptDate" id="tbox_planAcceptDate" class="form-control" type="text" 
                    value="<fmt:formatDate pattern="yyyy-MM-dd" value="${project.planAcceptDate}"/>"/>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_planAcceptDate" type="hidden" value="" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_actualDevDate" class="col-sm-2 control-label">实际开发时间</label>
    		<div class="col-sm-3">
    			<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_actualDevDate" data-link-format="yyyy-mm-dd">
                    <input name="tbox_actualDevDate" id="tbox_actualDevDate" class="form-control" type="text" 
                    value="<fmt:formatDate pattern="yyyy-MM-dd" value="${project.actualDevStartDate}"/>"/>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_actualDevDate" type="hidden" value="" />
            </div>
		    <label for="tbox_actualAcceptDate" class="col-sm-2 control-label">实际验收时间</label>
    		<div class="col-sm-3">
		    	<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_actualAcceptDate" data-link-format="yyyy-mm-dd">
                    <input name="tbox_actualAcceptDate" id="tbox_actualAcceptDate" class="form-control" type="text" 
                    value="<fmt:formatDate pattern="yyyy-MM-dd" value="${project.actualAcceptDate}"/>"/>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input  id="hf_actualAcceptDate" type="hidden" value="" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_devTech" class="col-sm-2 control-label">开发架构</label>
    		<div class="col-sm-3 on-dialog">
    			<div class="input-group">
    				<input name="tbox_devTech" id="tbox_devTech" type="text" class="form-control" 
    				value="<c:out value="${project.devTech}"/>" />
    				<!--<span data-toggle="modal" data-target="#modal_devTech" id="span_devTechEdit" class="input-group-addon"><span  class="glyphicon glyphicon-pencil"></span></span>-->
    				<span id="span_devTechEdit" class="input-group-addon"><span  class="glyphicon glyphicon-pencil"></span></span>
    			</div>
		    </div>
		    <label for="tbox_network" class="col-sm-2 control-label">网络环境</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
    				<input name="tbox_network" id="tbox_network" type="text" class="form-control" 
    				value="<c:out value="${project.netWorkEnvironment}"/>" />
    				<span id="span_networkEdit" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
    			</div>
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_serverE" class="col-sm-2 control-label">服务端环境</label>
    		<div class="col-sm-3">
	    		<div class="input-group">
					<input name="tbox_serverE" id="tbox_serverE" type="text" class="form-control" 
					value="<c:out value="${project.serverEnvironment}"/>" />
					<span id="span_serverEEdit" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
			</div>
		    <label for="tbox_clientE" class="col-sm-2 control-label">客户端环境</label>
		    <div class="col-sm-3">
	    		<div class="input-group">
					<input name="tbox_clientE" id="tbox_clientE" type="text" class="form-control" 
					value="<c:out value="${project.clientEnvironment}"/>" />
					<span id="span_clientEEdit" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
			</div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectCdoe" class="col-sm-2 control-label">项目标识</label>
    		<div class="col-sm-1">
		    	<input name="tbox_projectCdoe" type="text" class="form-control" id="tbox_projectCdoe" 
		    	value="<c:out value="${project.projectCode}"/>" />
		    </div>
		    <label for="tbox_encryptFileLimit" class="col-sm-1 control-label">加密文件上限</label>
    		<div class="col-sm-1">
		    	<input name="tbox_encryptFileLimit" type="text" class="form-control" id="tbox_encryptFileLimit" 
		    	value="<c:out value="${project.encryptFileLimit}"/>" />
		    </div>
		    <div class="col-sm-1"></div>
		    <div class="col-sm-1"></div>
    		<div class="col-sm-1">
		    	<label>
				    <input name="tbox_increaseIssue" type="checkbox" <c:if test="${project.increaseIssue == 'on'}">checked="checked"</c:if> 
				    />增发标识
				</label>
		    </div>
		    <div class="col-sm-1">
		    	<label>
				    <input name="tbox_keepEncryptKey" type="checkbox"  <c:if test="${project.keepEncryptKey}">checked="checked"</c:if> 
				    />保持原有密钥
				</label>
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_multiOperation" class="col-sm-2 control-label">多人操作</label>
    		<div class="col-sm-8">
		    	<input name="tbox_multiOperation" type="text" class="form-control" id="tbox_multiOperation" 
		    	value="<c:out value="${project.multiOperation}"/>" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_SVSServerType" class="col-sm-2 control-label">签名服务器</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input name="tbox_SVSServerType" id="tbox_SVSServerType" type="text" class="form-control" 
					value="<c:out value="${project.SVSServerType}"/>" />
					<span id="span_SVSServerType" class="input-group-addon on-dialog"><span class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		    <label for="tbox_TSSServerType" class="col-sm-2 control-label">时间戳服务器</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input name="tbox_TSSServerType" id="tbox_TSSServerType" type="text" class="form-control" 
					value="<c:out value="${project.TSSServerType}"/>" />
					<span id="span_TSSServerType" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		</div>
		<div class="form-group">
    		<label for="tbox_keyManufacture" class="col-sm-2 control-label">介质</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input name="tbox_keyManufacture" id="tbox_keyManufacture" type="text" class="form-control" 
					value="<c:out value="${project.keyManufacture}"/>" />
					<span id="span_keyManufacture" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		    <label for="tbox_sealType" class="col-sm-2 control-label">签章</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input name="tbox_sealType" id="tbox_sealType" type="text" class="form-control" 
					value="<c:out value="${project.sealType}"/>" />
					<span id="span_sealType" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		</div>
		<div class="form-group">
    		<label for="tbox_functionNeededIntegrate" class="col-sm-2 control-label">集成功能</label>
    		<div class="col-sm-8">
    			<div class="input-group">
					<input name="tbox_functionNeededIntegrate" id="tbox_functionNeededIntegrate" type="text" class="form-control" 
					value="<c:out value="${project.functionsNeededIntegrate}"/>" />
					<span id="span_functionNeededIntegrate" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
    	</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-1"></div>
  				<div class="col-md-1">
  					<button id="btn_storeBasic" type="button" class="btn btn-primary">保存</button>
  				</div>
			</div>
		</div>
		
		
		
    </fieldset>
	    <fieldset>
			<legend>项目集成信息</legend>
			<div class="row">
				<div class="col-sm-2"></div>
				<!-- 集成接口表 -->
				<div class="col-sm-7">
					<table id="table_interface" class="table table-hover">
						<thead>
							<th class="col-sm-3">接口库名称</th>
							<th class="col-sm-3">版本号</th>
							<th class="col-sm-3">代码签名时间</th>
							<th class="col-sm-3">其他</th>
							<th class="col-sm-1"></th>
						</thead>
						<tbody>
							<c:forEach var="model" items="${interfaceUsed}">
			    			<tr>
			    				<td><c:out value="${model.name}"/></td>
			    				<td><c:out value="${model.version}"/></td>
			    				<td><c:out value="${model.signDate}"/></td>
			    				<td><c:out value="${model.other}"/></td>
			    				<td><button onclick="removeInterface(this);" type="button" class="btn btn-link glyphicon glyphicon-minus"></button></td>
			    			</tr>
    			</c:forEach>
							<tr id="interfaceAct">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<button id="span_interface" type="button" class="btn btn-link glyphicon glyphicon-plus"></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 集成方法表    -->
			<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-7">
				<table id="table_functions" class="table table-hover">
					<thead>
						<th class="col-sm-3">实现功能</th>
						<th class="col-sm-3">客户端调用接口</th>
						<th class="col-sm-3">服务端调用接口</th>
						<th class="col-sm-3">其他</th>
						<th class="col-sm-1"></th>
					</thead>
					<tbody>
						<c:forEach var="model" items="${functionUsed}">
		    			<tr>
		    				<td><c:out value="${model.name}"/></td>
		    				<td><c:out value="${model.clientFunctions}"/></td>
		    				<td><c:out value="${model.serverFunctions}"/></td>
		    				<td><c:out value="${model.other}"/></td>
		    				<td><button id="span_interface" onclick="removeInterface(this);" type="button" class="btn btn-link glyphicon glyphicon-minus"></button></td>
		    			</tr>
		    			</c:forEach>
						<tr id="functionAct">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>
								<button id="span_functions" type="button" class="btn btn-link glyphicon glyphicon-plus"></button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			</div>
		</fieldset>	
    </form>
    <!-- Dev framework dialog -->
    <div id="modal_devTech__xxx" class="modal fade">
    	<div class="modal-dialog">
    		<div class="modal-content">
				<div class="modal-header">
    				<button type="button" class="close" data-dismiss="modal">
    					<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
    				</button>
    				<h4 class="modal-title">开发架构</h4>
				</div>
				<div class="modal-body">
					<div id="div_devTechValue" class="alert alert-success" role="alert"></div>
					<div>
						<div class="list-group">
							<a href="#" class="list-group-item">
							    <h4 class="list-group-item-heading">语言</h4>
							    <p class="list-group-item-text">
							    	<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> C#
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> Java
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> Asp.Net
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> VB
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> Delphi
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> PHP
									</label>
							    </p>
							</a>
						</div>
						<div class="list-group">
							<a href="#" class="list-group-item">
							    <h4 class="list-group-item-heading">类型</h4>
							    <p class="list-group-item-text">
							    	<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> C/S
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> B/S
									</label>
									<label class="checkbox-inline">
										<input type="checkbox" id="inlineCheckbox1" value="option1"> 混合
									</label>
							    </p>
							</a>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        			<button type="button" class="btn btn-primary">确定</button>
				</div>
    		</div><!-- modal content -->
    	</div><!-- modal dialog -->
    </div><!-- modal -->
    
    
    <!--success dialog-->
    <div id="successDialog" class="modal fade">
    <div class="modal-dialog">
	  <div class="modal-content">
		  <div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			  <h4 class="modal-title">信息</h4>
		  </div>
		  <div class="modal-body">
		  	<p>添加成功</p>
		  </div>
	  </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!--success dialog-->
	
	<!--warning dialog-->
    <div id="warningDialog" class="modal fade">
    <div class="modal-dialog">
	  <div class="modal-content">
		  <div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			  <h4 class="modal-title">错误</h4>
		  </div>
		  <div class="modal-body">
		  	<div class="alert alert-danger" role="alert">
  				<a href="#" class="alert-link">信息不完整</a>
			</div>
		  </div>
	  </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!--warning dialog-->
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/bootstrap_datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/bootstrap_datepicker/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="<%=request.getContextPath()%>/javascripts/addProject.js"></script>
    <script src="<%=request.getContextPath()%>/javascripts/tabConstructor.js"></script>
  </body>
</html>