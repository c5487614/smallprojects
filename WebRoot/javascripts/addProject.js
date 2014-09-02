$(document).ready(function(){
	initDatepicker('#tbox_actualDevDate');
	initDatepicker('#tbox_actualAcceptDate');
	initDatepicker('#tbox_planDevDate');
	initDatepicker('#tbox_planAcceptDate');
	
	var editFunc = function(config){
		$(config.targetId).click(function(){
			if(!document.getElementById(config.dialogId)){
				if("modal_devTech1"==config.dialogId){
					createDevTechDialog();
				}else if("modal_network"==config.dialogId){
					createNetworkDialog();
				}else if("modal_serverE"==config.dialogId){
					createServerEDialog();
				}else if("modal_clientE"==config.dialogId){
					createClientEDialog();
				}else if("modal_SVSServerType"==config.dialogId){
					createSVSServerDialog();
				}else if("modal_TSSServerType"==config.dialogId){
					createTSSSeverDialog();
				}else if("modal_keyManufacture"==config.dialogId){
					createKeyManufactureDialog();
				}else if("modal_sealType"==config.dialogId){
					createSealTypeDialog();
				}
			}
			$('#'+config.dialogId).modal('show');
		});
	}
	editFunc({'targetId': '#span_devTechEdit','dialogId':'modal_devTech1'});
	editFunc({'targetId': '#span_networkEdit','dialogId':'modal_network'});
	editFunc({'targetId': '#span_serverEEdit','dialogId':'modal_serverE'});
	editFunc({'targetId': '#span_clientEEdit','dialogId':'modal_clientE'});
	editFunc({'targetId': '#span_SVSServerType','dialogId':'modal_SVSServerType'});
	editFunc({'targetId': '#span_TSSServerType','dialogId':'modal_TSSServerType'});
	editFunc({'targetId': '#span_keyManufacture','dialogId':'modal_keyManufacture'});
	editFunc({'targetId': '#span_sealType','dialogId':'modal_sealType'});
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
										'<div id="modal_value" class="alert alert-success" style="height:60px" role="alert"></div>' +
										'<div>{content}</div>' +
									'</div>' + 
									'<div class="modal-footer">' + 
										'<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>' +
					        			'<button onclick="{btnClick}" type="button" class="btn btn-primary">确定</button>' + 
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
var TmpItem = '<label class="checkbox-inline"><input onclick="checkBoxFunc(this)" type="checkbox" value="{itemValue}"> {itemName}</label>';

function editResult(dialogId,ctrlId,obj){
	//{CtrlId:'tbox_',obj:this}
	$('#'+ctrlId).val($(obj).parents('.modal-body').find('.alert-success').html());
//	console.log($(obj).parents('.modal-body').find('.alert-success').html());
	$('#'+dialogId).modal('hide');
	
}

function checkBoxFunc(obj){
	var cbs = $(obj).parents('.modal-body').find('input[type="checkbox"]');
	var resultContent = $(obj).parents('.modal-body').find('.alert-success');
	var i,result;
	result = '';
	for(i=0;i<cbs.size();i++){
		var item = $(cbs[i]);
		if(item.is(':checked')==true || item.is(':checked')=='true'){
			result = result + ', ' +item.attr('value');
		}
	}
	if(result[0]==','){
		result = result.substring(1, result.length);
	}
	resultContent.html(result);
}
function createDevTechDialog(){
	var config = {
		'dialogId' : 'modal_devTech1',
		'ctrlId' : 'tbox_devTech',
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
			{
				'itemTitle' : '系统架构', 
				'items' : [
					{'itemName' : 'C/S'},
					{'itemName' : 'B/S'},
					{'itemName' : '混合'}
				]
			}
		]
	};
	$(document.body).append(createDialog(config));
}
function createNetworkDialog(){
	var config = {
			'dialogId' : 'modal_network',
			'ctrlId' : 'tbox_network',
			'title' : '网络环境',
			'itemList' : [
				{
					'itemTitle' : '网络环境', 
					'items' : [
						{'itemName' : '内网'},
						{'itemName' : '外网'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}
function createServerEDialog(){
	var config = {
			'dialogId' : 'modal_serverE',
			'ctrlId' : 'tbox_serverE',
			'title' : '服务端环境',
			'itemList' : [
				{
					'itemTitle' : '系统', 
					'items' : [
						{'itemName' : 'Windows Server 2003'},
						{'itemName' : 'Windows Server 2008'},
						{'itemName' : 'Windows Server 2012'},
						{'itemName' : 'Linux'},
						{'itemName' : 'Unix'}
					]
				},
				{
					'itemTitle' : '服务', 
					'items' : [
						{'itemName' : 'IIS 6'},
						{'itemName' : 'IIS 7'},
						{'itemName' : 'Apache Tomcat'},
						{'itemName' : 'Apache Httpd'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}

function createClientEDialog(){
	var config = {
			'dialogId' : 'modal_clientE',
			'ctrlId' : 'tbox_clientE',
			'title' : '客户端环境',
			'itemList' : [
				{
					'itemTitle' : '系统', 
					'items' : [
						{'itemName' : 'Windows XP'},
						{'itemName' : 'Win7'},
						{'itemName' : 'Windows Server 2003'}
					]
				},
				{
					'itemTitle' : '浏览器', 
					'items' : [
						{'itemName' : 'IE6'},
						{'itemName' : 'IE7'},
						{'itemName' : 'IE8'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}
function createSVSServerDialog(){
	var config = {
			'dialogId' : 'modal_SVSServerType',
			'ctrlId' : 'tbox_SVSServerType',
			'title' : '签名服务器类型',
			'itemList' : [
				{
					'itemTitle' : '', 
					'items' : [
						{'itemName' : 'JIT标准版'},
						{'itemName' : 'JIT卫生版'},
						{'itemName' : 'HBCA DSS'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}
function createTSSSeverDialog(){
	var config = {
			'dialogId' : 'modal_TSSServerType',
			'ctrlId' : 'tbox_TSSServerType',
			'title' : '时间戳服务器类型',
			'itemList' : [
				{
					'itemTitle' : '', 
					'items' : [
						{'itemName' : 'JIT时间戳服务器'},
						{'itemName' : 'HBCA TSS'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}
function createKeyManufactureDialog(){
	var config = {
			'dialogId' : 'modal_keyManufacture',
			'ctrlId' : 'tbox_keyManufacture',
			'title' : 'UKEY类型',
			'itemList' : [
				{
					'itemTitle' : '', 
					'items' : [
						{'itemName' : '海泰'},
						{'itemName' : '华虹3000GM'},
						{'itemName' : '华虹2008'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}
function createSealTypeDialog(){
	var config = {
			'dialogId' : 'modal_sealType',
			'ctrlId' : 'tbox_sealType',
			'title' : '签章类型',
			'itemList' : [
				{
					'itemTitle' : '', 
					'items' : [
						{'itemName' : '点聚'},
						{'itemName' : '安政通'}
					]
				}
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
	return TmpDialogContent.replace('{title}',config.title).replace('{dialogId}',config.dialogId).replace('{content}',html).replace('{btnClick}','editResult(\''+config.dialogId+'\',\''+config.ctrlId+'\',this)');
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