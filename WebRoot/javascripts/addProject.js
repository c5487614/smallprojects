$(document).ready(function(){
	initDatepicker('#tbox_actualDevDate');
	initDatepicker('#tbox_actualAcceptDate');
	initDatepicker('#tbox_planDevDate');
	initDatepicker('#tbox_planAcceptDate');
	
	
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