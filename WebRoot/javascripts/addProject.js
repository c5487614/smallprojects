$(document).ready(function(){
	initDatepicker('#tbox_actualDevDate');
	initDatepicker('#tbox_actualAcceptDate');
	initDatepicker('#tbox_planDevDate');
	initDatepicker('#tbox_planAcceptDate');
	$('#nav_firstPage').parent().removeClass('active');
	$('#nav_item').removeClass('active');
	$('#nav_project').addClass('active');
	
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
				}else if("modal_interface"==config.dialogId){
					createInterfaceDialog();
				}else if("modal_functions"==config.dialogId){
					createFunctionsDialog();
				}else if("modal_integrateFunctions"==config.dialogId){
					createIntegrateFuncDialog();
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
	editFunc({'targetId': '#span_interface','dialogId':'modal_interface'});
	editFunc({'targetId': '#span_functions','dialogId':'modal_functions'});
	editFunc({'targetId': '#span_functionNeededIntegrate','dialogId':'modal_integrateFunctions'});
	
	$.ajaxSetup({
		accepts : 'application/json'
	});
	$("#btn_storeBasic").click(storeData);
});

function initDatepicker(controlId){
	$(controlId).datetimepicker({
		autoclose: true,
		format: 'yyyy-mm-dd',
        pickDate: true,
        pickTime: false,
        startView: 2,
		minView: 2,
		language: 'zh-CN'
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
						'<a href="javascript:void(0);" class="list-group-item">' +
							'<h4 class="list-group-item-heading">{itemTitle}</h4>' +
							'<p class="list-group-item-text">{itemList}</p>' + 
						'</a>'
				    '</div>';
var TmpItem = '<label class="checkbox-inline"><input onclick="{itemClick}" type="checkbox" value="{itemValue}"> {itemName}</label>';

function editResult(dialogId,ctrlId,obj){
	$('#'+ctrlId).val($(obj).parents('.modal-body').find('.alert-success').html());
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
//result init value is different with checkBoxFunc
function checkBoxFunc1(obj){
	
	var cbs = $(obj).parents('.modal-body').find('input[type="checkbox"]');
	var resultContent = $(obj).parents('.modal-body').find('.alert-success');
	var i,result;
	var j = 0;
	
	//var list = $(obj).parents('.modal-body').find('.list-group-item-text');//
	var list = $(obj).parents('.modal-body').find('.tab-pane');
	var result1 = '';
	for(i=0;i<list.size();i++){
		var cbs1 = $(list[i]).find('input[type="checkbox"]');
		
		result = '';
		for(j=0;j<cbs1.size();j++){
			var item = $(cbs1[j]);
			if(item.is(':checked')==true || item.is(':checked')=='true'){
				result = result + ', ' + item.attr('value');
			}
		}
		if(result[0]==','){
			result = result.substring(1, result.length);
		}
		result = '|' + result;
		result1 = result1 + result;
		
	}
	resultContent.html(result1);
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
function createIntegrateFuncDialog(){
	var config = {
			'dialogId' : 'modal_integrateFunctions',
			'ctrlId' : 'tbox_functionNeededIntegrate',
			'title' : '集成功能',
			'itemList' : [
				{
					'itemTitle' : '', 
					'items' : [
						{'itemName' : '登陆'},
						{'itemName' : '签名验签'},
						{'itemName' : '时间戳'},
						{'itemName' : '数字信封'},
						{'itemName' : '加密解密'}
					]
				}
			]
		};
	$(document.body).append(createDialog(config));
}
function createInterfaceDialog(){
//	var config = {
//		'dialogId' : 'modal_interface',
//		'ctrlId' : '',
//		'title' : '接口类型',
//		'okBtnClick' : 'interfaceClick(this);',
//		'itemList' : [
//			{
//				'itemTitle' : 'SVS接口', 
//				'items' : [
//					{'itemName' : 'SVS_C_SDK_COM.dll 1.0.0.1 ‎2014‎年‎4‎月‎17‎日 10:52:25 ', 'itemValue':'SVS_C_SDK_COM.dll|1.0.0.1|‎2014‎年‎4‎月‎17‎日 10:52:25|' , 'isInline':false},
//					{'itemName' : 'SVS_C_SDK_COM.dll 1.0.0.8 ‎2014‎年‎5‎月‎22‎日 10:52:25 ', 'itemValue':'SVS_C_SDK_COM.dll|1.0.0.6|‎2014‎年‎4‎月‎17‎日 10:52:25|' ,'isInline':false},
//					{'itemName' : 'SVS_S_SDK_COM.dll 1.0.0.8 ‎2014‎年‎6月‎15‎日 11:52:25 ', 'itemValue':'SVS_C_SDK_COM.dll|1.0.0.8|‎‎2014‎年‎6月‎15‎日 11:52:25|' ,'isInline':false}
//				]
//			},
//			{
//				'itemTitle' : 'JIT接口', 
//				'items' : [
//					{'itemName' : 'JITClientCOMAPI.dll 2.0.23.20 ‎‎2013‎年‎5‎月‎15‎日 11:32:55 ', 'isInline':false},
//					{'itemName' : 'JITClientCOMAPI.dll 2.0.23.42 ‎‎2013‎年‎5‎月‎15‎日 11:32:55 ', 'isInline':false}
//				]
//			}
//		]
//	};
//	$(document.body).append(createDialog(config));
	var config = {
			'dialogId' : 'modal_interface',
			'ctrlId' : '',
			'title' : '集成控件',
			'okBtnClick' : 'interfaceClick(this);',
			'tabHeads' : [
              {'href':'SVSClientControl','tabName':'SVS客户端接口','headClass':'active'},
              {'href':'SVSServerControl','tabName':'SVS服务端接口'},
              {'href':'JITControl','tabName':'JIT接口'},
              {'href':'DianjuControl','tabName':'点聚接口'},
              {'href':'AZTControl','tabName':'安政通接口'}
			],
			'tabItems' : [
              {
            	  'tabItemClass':'tab-pane active',
            	  'tabItemId':'SVSClientControl',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'SVS_C_SDK_COM.dll|1.0.0.11|‎2014‎年‎5‎月‎29‎日 15:42:06|','itemName':'SVS_C_SDK_COM.dll 1.0.0.11 ‎‎2014‎年‎5‎月‎29‎日 15:42:06 ','isInline':false},
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'SVS_C_SDK_COM.dll|1.0.0.1|‎2014‎年‎4‎月‎17‎日 10:52:25|','itemName':'SVS_C_SDK_COM.dll 1.0.0.1 ‎2014‎年‎4‎月‎17‎日 10:52:25 ','isInline':false}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'SVSServerControl',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'SVS_S_SDK_COM.dll|1.0.0.8|‎2014‎年‎4‎月‎24‎日 13:56:29|','itemName':'SVS_C_SDK_COM.dll 1.0.0.1 ‎2014‎年‎4‎月‎24‎日 13:56:29 ','isInline':false},
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'SVS_S_SDK_COM.dll|1.0.0.8|2013‎年‎9‎月‎24‎日 9:55:28|','itemName':'SVS_S_SDK_COM.dll 1.0.0.8 ‎‎2013‎年‎9‎月‎24‎日 9:55:28 ','isInline':false}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'JITControl',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'',
            	    	   'items':[
            	    	        {'itemClick':'checkBoxFunc(this)', 'itemValue':'JITCrypto.dll|4.0.0.11|‎无|','itemName':'JITCrypto.dll 4.0.0.11 2.66 MB ','isInline':false},
            	    	        {'itemClick':'checkBoxFunc(this)', 'itemValue':'JITUsbKeyCom.dll|1.0.0.6|‎‎2013‎年‎5‎月‎10‎日 16:44:31|','itemName':'JITUsbKeyCom.dll 1.0.0.6 ‎2013‎年‎5‎月‎10‎日 16:44:31 ','isInline':false},
            	    	        {'itemClick':'checkBoxFunc(this)', 'itemValue':'JITClientCOMAPI.dll|2.0.23.20|‎2013‎年‎5‎月‎15‎日 11:32:55|','itemName':'JITClientCOMAPI.dll 2.0.23.20 ‎2013‎年‎5‎月‎15‎日 11:32:55','isInline':false}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'DianjuControl',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'MakeSealV6_onlysign.ocx|1.1.0.6|‎‎2014‎年‎6‎月‎25‎日 10:00:42|','itemName':'MakeSealV6_onlysign.ocx 4.0.0.11 ‎2014‎年‎6‎月‎25‎日 10:00:42 ','isInline':false},
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'HBCA_SOFSeal.dll|1.0.0.1|‎2014‎年‎6‎月‎25‎日 9:59:50|','itemName':'HBCA_SOFSeal.dll 1.0.0.1 ‎‎2014‎年‎6‎月‎25‎日 9:59:50 ','isInline':false}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'AZTControl',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc(this)', 'itemValue':'AZTSealSignature.ocx|1.0.0.1|‎无|','itemName':'AZTSealSignature.ocx 1.0.0.1 ','isInline':false}
    	    	            ]
            	       }
	               ]
              }
			]
		};
		$(document.body).append(tabConstructor.init(config));
}
function createFunctionsDialog(){
	var config = {
			'dialogId' : 'modal_functions',
			'ctrlId' : '',
			'title' : '集成接口',
			'okBtnClick' : 'functionsClick(this);',
			'tabHeads' : [
              {'href':'point','tabName':'功能','headClass':'active'},
              {'href':'clientFunc','tabName':'客户端方法'},
              {'href':'serverFunc','tabName':'服务端方法'},
              {'href':'others','tabName':'其他'}
			],
			'tabItems' : [
              {
            	  'tabItemClass':'tab-pane active',
            	  'tabItemId':'point',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'功能',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemValue':'登陆','itemName':'登陆'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemValue':'签名验签','itemName':'签名验签'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemValue':'时间戳','itemName':'时间戳'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemValue':'签章','itemName':'签章'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemValue':'数字信封','itemName':'数字信封'}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'clientFunc',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'签名验签',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GenRandom','itemValue':'SOF_GenRandom'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_SetHashMethod','itemValue':'SOF_SetHashMethod'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_SetP7SignMode','itemValue':'SOF_SetP7SignMode'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_SignDataByP7','itemValue':'SOF_SignDataByP7'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GetErrorMsg','itemValue':'SOF_GetErrorMsg'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_Login','itemValue':'SOF_Login'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_VerifyAttachSigned','itemValue':'SOF_VerifyAttachSigned'}
    	    	            ]
            	       },
            	       {
            	    	   'itemTitle':'签章',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GetKeyPictureEx','itemValue':'SOF_GetKeyPictureEx'}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'serverFunc',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'签名验签',
            	    	   'items':[
            	    	        {'itemClick':'checkBoxFunc1(this)','itemName':'SOF_SetServerInfo','itemValue':'SOF_SetServerInfo'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GenRandom','itemValue':'SOF_GenRandom'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_SetP7SignMode','itemValue':'SOF_SetP7SignMode'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_SignDataPkcs7','itemValue':'SOF_SignDataPkcs7'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_VerifySignedDataPkcs7','itemValue':'SOF_VerifySignedDataPkcs7'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GetP7SignDataInfo','itemValue':'SOF_GetP7SignDataInfo'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GetCertInfo','itemValue':'SOF_GetCertInfo'},
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_GetCertInfoByOid','itemValue':'SOF_GetCertInfoByOid'}
    	    	            ]
            	       },
            	       {
            	    	   'itemTitle':'时间戳',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'SOF_CreateTimeStampResponse','itemValue':'SOF_CreateTimeStampResponse'}
    	    	            ]
            	       }
	               ]
              },
              {
            	  'tabItemClass':'tab-pane',
            	  'tabItemId':'others',
            	  'itemContent':[
            	       {
            	    	   'itemTitle':'备注',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'无','itemValue':'无'}
    	    	            ]
            	       },
            	       {
            	    	   'itemTitle':'备注1',
            	    	   'items':[
    	    	            	{'itemClick':'checkBoxFunc1(this)','itemName':'无','itemValue':'无'}
    	    	            ]
            	       }
	               ]
              }
			]
		};
		$(document.body).append(tabConstructor.init(config));
}
function interfaceClick(obj){
	var value = $(obj).parents('.modal-content').find('.alert-success').html();
	var values = value.split('|');
	var interfaceUsed = {
			'name' : values[0],
			'version' : values[1],
			'signDate' : values[2],
			'comment' : values[3]
	};
	var html = '<tr><td>{name}</td><td>{version}</td><td>{signDate}</td><td>{comment}</td><td><button onclick="removeInterface(this)" id="span_interface" type="button" class="btn btn-link glyphicon glyphicon-minus"></button></td></tr>';
	html = html.replace('{name}', interfaceUsed.name).replace('{version}',interfaceUsed.version).replace('{signDate}',interfaceUsed.signDate).replace('{comment}',interfaceUsed.comment);
	$('#interfaceAct').before(html);
	$(obj).parents('.modal').modal('hide');
}
function functionsClick(obj){
	var value = $(obj).parents('.modal-content').find('.alert-success').html();
	var values = value.split('|');
	var functionUsed = {
		'point' : values[1],
		'clientFunc' : values[2],
		'serverFunc' : values[3],
		'comment' : values[4]
	}
	var html = '<tr><td>{point}</td><td>{clientFunc}</td><td>{serverFunc}</td><td>{comment}</td><td><button onclick="removeInterface(this)" id="span_interface" type="button" class="btn btn-link glyphicon glyphicon-minus"></button></td></tr>';
	html = html.replace('{point}', functionUsed.point).replace('{clientFunc}',functionUsed.clientFunc).replace('{serverFunc}',functionUsed.serverFunc).replace('{comment}',functionUsed.comment);
	$('#functionAct').before(html);
	$(obj).parents('.modal').modal('hide');
}
function removeInterface(obj){
	$(obj).parent().parent().remove();
}
function createDialog(config){
	var i,html;
	var list = config.itemList;
	html = '';
	for(i=0;i<list.length;i++){
		html = html + createDialogContent(list[i]);
	}
	var tmp = TmpDialogContent;
	if(config.okBtnClick){
		tmp = tmp.replace('{btnClick}', config.okBtnClick);
	}
	return tmp.replace('{title}',config.title).replace('{dialogId}',config.dialogId).replace('{content}',html).replace('{btnClick}','editResult(\''+config.dialogId+'\',\''+config.ctrlId+'\',this)');
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
	var tmp = TmpItem;
	if(config.isInline==false){
		tmp = tmp.replace('class="checkbox-inline"','');
	}
	var itemFunc = 'checkBoxFunc(this)';
	if(config.itemFunc){
		itemFunc = config.itemFunc;
	}
	tmp = tmp.replace('{itemClick}',itemFunc);
	//if itemValue is not defined, use itemName
	return tmp.replace('{itemValue}',config.itemValue||config.itemName).replace('{itemName}',config.itemName);
}
function storeData(){
	if($('#tbox_projectName').val()==''){
		$("#warningDialog").modal();
		setTimeout(function(){
			$("#warningDialog").modal('hide');
		},1000)
		return ;
	}
	preStore();
	$.ajax({
		type : 'POST',
		url : 'save.do',
		data : $('#formProject').serialize(),
		cache : false,
		success : function(data,textStatus,jqXHR){
			$("#successDialog").modal();
			setTimeout(function(){
				$("#successDialog").modal('hide');
			},1000)
		},
		error : function(){
			alert('failed');
		}
	});
}
function preStore(){
	var interfacesUsed = '';
	$("#table_interface tbody>tr").each(function(){
		var item = '';
		var items = $(this).find("td");
		var i = 0;
		for(i=0;i<4;i++){
			if($(items[i]).html()){
				item = item + $(items[i]).html() + '|';
			}
		}
		if(item){
			interfacesUsed = interfacesUsed + item + '&&&';
		}
	});
	$('#hf_interfaces').val(interfacesUsed);
	var functionsUsed = '';
	$("#table_functions tbody>tr").each(function(){
		var item = '';
		var items = $(this).find("td");
		var i = 0;
		for(i=0;i<4;i++){
			if($(items[i]).html()){
				item = item + $(items[i]).html() + '|';
			}
		}
		if(item){
			functionsUsed = functionsUsed + item + '&&&';
		}
	});
	$('#hf_functions').val(functionsUsed);
}