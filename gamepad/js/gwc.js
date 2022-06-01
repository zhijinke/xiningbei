var r=0;
//获取行号
function getRow(r){
	var i=r.parentNode.parentNode.rowIndex;
	return i;
	
}
//----删除某一行-----
function RemoveRow(r){ 
	alert('您确定要删除吗？')
 document.getElementById('jsTrolley').deleteRow(getRow(r));
}