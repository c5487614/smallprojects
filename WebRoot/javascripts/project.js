$(document).ready(function(){
	$('#nav_firstPage').parent().removeClass('active');
	$('#nav_project').addClass('active');
	init();
});
function init(){
	$.ajax({
		type : 'POST',
		url : 'getTop50.do',
		success : function(data,textStatus,jqXHR){
			initIndex(data.items);
		},
		error : function(){
			alert('failed');
		}
	});
}
function initIndex(itemList){
	$('#div_projectList').html('');
	$(itemList).each(function(){
		var obj = this;
		if(obj.projectName.length>7){
			obj.projectNameAlias = obj.projectName.substring(0,7)+'...';
		}
		var text = obj.projectNameAlias||obj.projectName;
		getProjectTpl({
			projectId : obj.projectId,
			items:[
			    {value:'项目名称：' + text,itemStyle:'label-primary glyphicon glyphicon-bookmark'},
				{value:'项目经理：'+ obj.projectManager},
				{value:'项目集成商：' + obj.manufacturerName},
				{value:'介质类型：' + obj.keyManufacture},
				{value:'签名服务器：' + obj.svsserverType},
				{value:'时间戳服务器：' + obj.tssserverType},
				{value:'签章类型：' + obj.sealType},
				{value:'项目进度：' + 'none ', itemStyle:'label-warning'}
			]
		})
	});
}

function getProjectTpl(data){
	var styleMargin = 'margin-bottom:0px;';
	var html = '<div class="col-xs-2" style="margin-bottom:5px"><a href="javascript:void(0);" onclick="viewProject(\'{projectId}\');" class="thumbnail"><ul class="list-group">{0}</ul></a>{buttonHtml}</div>';
	var buttonHtml = '<div class="col-xs-1"></div><div class="btn-group btn-group-xs" style="text-align:center">' +
	'<button type="button" onclick="viewProject(\'{projectId}\');" class="btn btn-default glyphicon glyphicon-eye-open">查看</button>' +
	'<button type="button" onclick="editProject(\'{projectId}\');" class="btn btn-default glyphicon glyphicon-edit">编辑</button>' +
	'<button type="button" onclick="deleteProject(\'{projectId}\');" class="btn btn-default glyphicon glyphicon-minus-sign">删除</button>' + 
	'</div>';
	
	var i,tmp = '';
	
	for(i=0;i<data.items.length;i++){
		var item = data.items[i];
		item.style = styleMargin;
		if(!item.itemStyle){
			item.itemStyle = "label-default";
		}
		tmp = tmp + getProjectItemTpl(item);
	}

	html = html.replace('{0}',tmp);
	html = html.replace('{buttonHtml}',buttonHtml);
	html = html.replace(/{projectId}/g,data.projectId);
	$('#div_projectList').append(html);
	html = '';
	tmp = '';
}
function getProjectItemTpl(data){
	var html = '<ul class="list-group" style="'+data.style+'"> <li class="label '+data.itemStyle+'">'+data.value+'</li></ul>';
	return html;
}
function viewProject(projectId){
	window.location.href = 'viewProject.do?projectId=' + projectId;
}
function deleteProject(projectId){
	$('#hf_projectId').val(projectId);
	$('#deleteDialog').modal();
}
function doDelete(projectId){
	$.ajax({
		type : 'POST',
		url : 'deleteOne.do',
		data : {
			projectId : $('#hf_projectId').val()
		},
		success : function(data,textStatus,jqXHR){
			$('#deleteDialog').modal('hide');
			init();
		},
		error : function(){
			alert('failed');
		}
	});
}
function editProject(projectId){
	window.location.href = 'editProject.do?projectId=' + projectId;
}