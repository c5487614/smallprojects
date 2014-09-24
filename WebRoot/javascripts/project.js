$(document).ready(function(){
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
});
function initIndex(itemList){
	$(itemList).each(function(){
		var obj = this;
		getProjectTpl({
			projectId : obj.projectId,
			items:[
			    {value:'项目名称：' + obj.projectName,itemStyle:'label-primary glyphicon glyphicon-bookmark'},
				{value:'项目经理：'+ obj.projectManager},
				{value:'项目集成商：' + obj.manufacturerName},
				{value:'介质类型：' + obj.keyManufacture},
				{value:'签名服务器：' + obj.svsserverType},
				{value:'时间戳服务器：' + obj.tssserverType},
				{value:'签章类型：' + obj.sealType},
				{value:'项目进度：' + obj.sealType, itemStyle:'label-warning'}
			]
		})
	});
}

function getProjectTpl(data){
	var styleMargin = 'margin-bottom:0px';
	var html = '<div class="col-xs-2"><a href="viewProject.do?projectId={projectId}" class="thumbnail"><ul class="list-group">{0}</ul></a></div>';
	var i,tmp = '';
	for(i=0;i<data.items.length;i++){
		var item = data.items[i];
		item.style = styleMargin;
		if(!item.itemStyle){
			item.itemStyle = "label-default";
		}
		tmp = tmp + getProjectItemTpl(data.items[i]);
	}

	html = html.replace('{0}',tmp);
	html = html.replace('{projectId}',data.projectId);
	$('#div_projectList').append(html);
	html = '';
	tmp = '';
}
function getProjectItemTpl(data){
	var html = '<ul class="list-group" style="'+data.style+'"> <li class="label '+data.itemStyle+'">'+data.value+'</li></ul>';
	return html;
}