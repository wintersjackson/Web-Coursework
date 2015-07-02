'use strict';
var callback, addData, modifyData, data, ajaxReturn

setUp = function(){
	callback= document.getElementById('callback');
	addData= document.getElementById('addData');
	modifyData= document.getElementById('modifyData');
	
	document.getElementById('removeData').addEventListener('submit',removeData);
	document.addEventListener('dataChangedAjax', listener);
	document.addEventListener('ajaxReturned', updateData);
	addData.addEventListener('submit',speaker);
	modifyData.addEventListener('submit', aput); 
	//#########
},
	
//listener = function(){
//	ajaxGet('api/', callback, ajaxReturn, 'json');
//},

speaker= function(){
	data = new formData(createForm);

updateRecord= function(){
		var option1, option2,
		toDelete= document.getElementById('entryToDel');
		toModify= document.getElementById('chooseData');
		//todo
		
deleteData= function(event){
	var targetDelete = document.getElementById('valueToDel'),
		optionDelete = targetDelete.options[selectToDelete.selectedIndex],
		idDelete = optionDelete.dataset.id;
	ajaxDelete('api/product/' + idDeete,callback);	
},
loadData= function(event){
	var targetModify = document.getElementById('entryToModify'),
	indexModify = targetModify.selectedIndex,
	data = ajaxReturnedValue[indexModify],
	form = document.getElementById('modifyData');
	
	form[0].value = data.prodName;
	form[1].value = data.prodDescription;
	form[2].value = data.prodPrice;
	form[3].value = data.prodAmount;
	form[4].value = data.prodType;
},
aPut = function(event){	
	data = new FormData(modifyForm);
	ajaxPost('api/product/modify',data,callback,ajaxReturn,'text');
}	;
	

	
	
	