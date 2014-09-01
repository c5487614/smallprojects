$(document).ready(function(){
	initDatepicker('#tbox_actualDevDate');
	initDatepicker('#tbox_actualAcceptDate');
	initDatepicker('#tbox_planDevDate');
	initDatepicker('#tbox_planAcceptDate');
	
	$('#span_devTechEdit').click(function(){
		if(!document.getElementById('modal_devTech1')){
			//alert('xx');
			createDevTechDialog();
		}
		$('#modal_devTech1').modal('show')
	})
});

function initDatepicker(controlId){
	$(controlId).datetimepicker({
		autoclose: true,
		format: 'yyyy-mm-dd',
        pickDate: true,
        pickTime: false,
        startView: 2,
		minView: 2,
		language:  'zh-CN'
	});
}
var TmpDialogContent = '<div id="{dialogId}" class="modal fade">' +  
							'<div class="modal-dialog">' +
								'<div class="modal-content">' +
									'<div class="modal-header">' +
										'<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button><h4 class="modal-title">{title}</h4>' +
									'</div>' +  
									'<div class="modal-body">' +
										'<div id="modal_value" class="alert alert-success" role="alert"></div>' +
										'<div>{content}</div>' 
									'</div>' + 
								'</div>' +
							'</div>' +
					   '</div>';
var TmpListContent = '<div class="list-group">' +
						'<a href="#" class="list-group-item">' +
							'<h4 class="list-group-item-heading">{itemTitle}</h4>' +
							'<p class="list-group-item-text">{itemList}</p>' + 
						'</a>'
				    '</div>';
var TmpItem = '<label class="checkbox-inline"><input type="checkbox" value="{itemValue}"> {itemName}</label>';

function createDevTechDialog(){
	var config = {
		'dialogId' : 'modal_devTech1',
		'title' : '开发架构',
		'itemList' : [
			{
				'itemTitle' : '编程语言', 
				'items' : [
					{'itemName' : 'C#'},
					{'itemName' : 'Java'},
					{'itemName' : 'Python'},
					{'itemName' : 'PHP'}
				]
			},
		]
	};
	$(document.body).append(createDialog(config));
}
function createDialog(config){
	var i,html;
	var list = config.itemList;
	html = '';
	for(i=0;i<list.length;i++){
		html = html + createDialogContent(list[i]);
	}
	return TmpDialogContent.replace('{title}',config.title).replace('{dialogId}',config.dialogId).replace('{content}',html);
}
function createDialogContent(config){
	var list = config.itemList;
	var i,html;
	var items = config.items;
	html = '';
	for(i=0;i<items.length;i++){
		html = html + createDialogItemList(items[i]);
	}
	return TmpListContent.replace('{itemTitle}',config.itemTitle).replace('{itemList}',html);
}
function createDialogItemList(config){
	return TmpItem.replace('{itemValue}',config.itemName).replace('{itemName}',config.itemName);
}