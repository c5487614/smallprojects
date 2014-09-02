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
    		<label for="tbox_planDevDate" class="col-sm-2 control-label">计划开发时间</label>
    		<div class="col-sm-3">
		    	<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_planDevDate" data-link-format="yyyy-mm-dd">
                    <input id="tbox_planDevDate" class="form-control" type="text" value=""  />
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_planDevDate" type="hidden" value="" />
		    </div>
		    <label for="tbox_planAcceptDate" class="col-sm-2 control-label">计划验收时间</label>
    		<div class="col-sm-3">
		    	<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_planAcceptDate" data-link-format="yyyy-mm-dd">
                    <input id="tbox_planAcceptDate" class="form-control" type="text" value=""  />
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_planAcceptDate" type="hidden" value="" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_actualDevDate" class="col-sm-2 control-label">实际开发时间</label>
    		<div class="col-sm-3">
    			<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_actualDevDate" data-link-format="yyyy-mm-dd">
                    <input id="tbox_actualDevDate" class="form-control" type="text" value=""  />
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_actualDevDate" type="hidden" value="" />
            </div>
		    <label for="tbox_actualAcceptDate" class="col-sm-2 control-label">实际验收时间</label>
    		<div class="col-sm-3">
		    	<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="hf_actualAcceptDate" data-link-format="yyyy-mm-dd">
                    <input id="tbox_actualAcceptDate" class="form-control" type="text" value=""  />
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input id="hf_actualAcceptDate" type="hidden" value="" />
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_projectName" class="col-sm-2 control-label">开发架构</label>
    		<div class="col-sm-3 on-dialog">
    			<div class="input-group">
    				<input id="tbox_devTech" type="text" class="form-control" />
    				<!--<span data-toggle="modal" data-target="#modal_devTech" id="span_devTechEdit" class="input-group-addon"><span  class="glyphicon glyphicon-pencil"></span></span>-->
    				<span id="span_devTechEdit" class="input-group-addon"><span  class="glyphicon glyphicon-pencil"></span></span>
    			</div>
		    </div>
		    <label for="tbox_projectName" class="col-sm-2 control-label">网络环境</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
    				<input id="tbox_network" type="text" class="form-control" />
    				<span id="span_networkEdit" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
    			</div>
		    </div>
    	</div>
    	<div class="form-group">
    		<label for="tbox_serverE" class="col-sm-2 control-label">服务端环境</label>
    		<div class="col-sm-3">
	    		<div class="input-group">
					<input id="tbox_serverE" type="text" class="form-control" />
					<span id="span_serverEEdit" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
			</div>
		    <label for="tbox_clientE" class="col-sm-2 control-label">客户端环境</label>
		    <div class="col-sm-3">
	    		<div class="input-group">
					<input id="tbox_clientE" type="text" class="form-control" />
					<span id="span_clientEEdit" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
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
    	<div class="form-group">
    		<label for="tbox_SVSServerType" class="col-sm-2 control-label">签名服务器</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input id="tbox_SVSServerType" type="text" class="form-control" />
					<span id="span_SVSServerType" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		    <label for="tbox_TSSServerType" class="col-sm-2 control-label">时间戳服务器</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input id="tbox_TSSServerType" type="text" class="form-control" />
					<span id="span_TSSServerType" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		</div>
		<div class="form-group">
    		<label for="tbox_keyManufacture" class="col-sm-2 control-label">介质</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input id="tbox_keyManufacture" type="text" class="form-control" />
					<span id="span_keyManufacture" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		    <label for="tbox_sealType" class="col-sm-2 control-label">签章</label>
    		<div class="col-sm-3">
		    	<div class="input-group">
					<input id="tbox_sealType" type="text" class="form-control" />
					<span id="span_sealType" class="input-group-addon on-dialog"><span  class="glyphicon glyphicon-pencil"></span></span>
				</div>
		    </div>
		</div>
    </fieldset>
	    <fieldset>
			<legend>项目集成信息</legend>
			<table class="table table-hover">
				<thead>
					<th>接口库名称</th>
					<th>版本号</th>
					<th>代码签名时间</th>
					<th>其他</th>
					<th></th>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<button type="button" class="btn btn-link glyphicon glyphicon-plus"></button>
						</td>
					</tr>
				</tbody>
			</table>
		</fieldset>	
    </form>
    <!-- Dev framework dialog -->
    <div id="modal_devTech" class="modal fade">
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
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/bootstrap_datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/bootstrap_datepicker/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="<%=request.getContextPath()%>/javascripts/addProject.js"></script>
  </body>
</html>