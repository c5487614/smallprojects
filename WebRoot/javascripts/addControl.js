$(document).ready(function(){
	$("#btn_storeBasic").click(storeData);
});
function storeData(){
	if($('#tbox_pId').val()==''){
		$("#warningDialog").modal();
		setTimeout(function(){
			$("#warningDialog").modal('hide');
		},1000)
		return ;
	}
	$.ajax({
		type : 'POST',
		url : 'save.do',
		data : $('#formItem').serialize(),
		success : function(data,textStatus,jqXHR){
			$("#successDialog").modal();
			setTimeout(function(){
				$("#successDialog").modal('hide');
			},1000);
		},
		error : function(){
			alert('failed');
		}
		
	})
}