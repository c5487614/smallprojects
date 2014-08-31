$(document).ready(function(){
	$("#nav_firstPage").click(function(){
		getProjectTpl({
			items:[
				{value:'项目名称：项目1',itemStyle:'label-primary glyphicon glyphicon-bookmark'},
				{value:'项目经理：项目经理'},
				{value:'项目集成商：'},
				{value:'介质类型：'},
				{value:'签名服务器：'},
				{value:'时间戳服务器：'},
				{value:'签章类型：'},
				{value:'项目进度：', itemStyle:'label-warning'}
			]
		});
	})
});


function getProjectTpl(data){
	var styleMargin = 'margin-bottom:0px';
	var html = '<div class="col-xs-2"><a class="thumbnail"><ul class="list-group">{0}</ul></a></div>';
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
	$('#div_projectList').append(html);
	html = '';
	tmp = '';
}
function getProjectItemTpl(data){
	var html = '<ul class="list-group" style="'+data.style+'"> <li class="label '+data.itemStyle+'">'+data.value+'</li></ul>';
	return html;
}