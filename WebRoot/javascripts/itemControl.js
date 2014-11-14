$(document).ready(function(){
	$('#nav_firstPage').parent().removeClass('active');
	$('#nav_project').removeClass('active');
	$('#nav_item').addClass('active');
	init();
});
function init(){
	$.ajax({
		type : 'POST',
		url : 'getItemsByPId.do',
		data : {
			'tbox_pId' : 1
		},
		success : function(data,textStatus,jqXHR){
			initIndex(data.items);
		},
		error : function(){
			alert('failed');
		}
	});
}
function initIndex(itemList){
	$('#div_itemList').html('');
	$(itemList).each(function(){
		var obj = this;
		if(obj.itemName.length>7){
			obj.itemNameAlias = obj.itemName.substring(0,7)+'...';
		}
		var text = obj.itemNameAlias||obj.itemName;
		getItemTpl({
			projectId : obj.itemId,
			items:[
			    {value:'配置节点：' + text,itemStyle:'label-primary glyphicon glyphicon-bookmark'},
				{value:'配置名称：'+ obj.itemName},
				{value:'配置值：'+ obj.itemValue}
			]
		})
	});
}

function getItemTpl(data){
	var styleMargin = 'margin-bottom:0px;';
	var html = '<div class="col-xs-2" style="margin-bottom:5px"><a href="javascript:void(0);" onclick="viewProject(\'{itemId}\');" class="thumbnail"><ul class="list-group">{0}</ul></a>{buttonHtml}</div>';
	var buttonHtml = '<div class="col-xs-1"></div><div class="btn-group btn-group-xs" style="text-align:center">' +
	'<button type="button" onclick="viewItem(\'{itemId}\');" class="btn btn-default glyphicon glyphicon-eye-open">查看</button>' +
	'<button type="button" onclick="editItem(\'{itemId}\');" class="btn btn-default glyphicon glyphicon-edit">编辑</button>' +
	'<button type="button" onclick="deleteItem(\'{itemId}\');" class="btn btn-default glyphicon glyphicon-minus-sign">删除</button>' + 
	'</div>';
	
	var i,tmp = '';
	
	for(i=0;i<data.items.length;i++){
		var item = data.items[i];
		item.style = styleMargin;
		if(!item.itemStyle){
			item.itemStyle = "label-default";
		}
		tmp = tmp + getItemControlTpl(item);
	}

	html = html.replace('{0}',tmp);
	html = html.replace('{buttonHtml}',buttonHtml);
	html = html.replace(/{itemId}/g,data.projectId);
	$('#div_itemList').append(html);
	html = '';
	tmp = '';
}
function getItemControlTpl(data){
	var html = '<ul class="list-group" style="'+data.style+'"> <li class="label '+data.itemStyle+'">'+data.value+'</li></ul>';
	return html;
}
function viewItem(itemId){
	window.location.href = 'viewItem.do?itemId=' + itemId;
}
function deleteItem(itemId){
	$('#hf_itemId').val(itemId);
	$('#deleteDialog').modal();
}
function doDelete(itemId){
	$.ajax({
		type : 'POST',
		url : 'deleteOne.do',
		data : {
			itemId : $('#hf_itemId').val()
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
function editItem(itemId){
	window.location.href = 'editItem.do?itemId=' + itemId;
}