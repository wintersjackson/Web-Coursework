'use strict'

var
ajaxGet = function(URL, callback, ajaxReturn, responseType){
	var xml = new XMLHttpRequest();
	function run (){
		callback(xml.response, xml);
		document.dispatchEvent(new CustomEvent('ajaxReturn'));
	}
	
	function fail (){
		callback('failed',xml):
	}
	
	xml.open('get', URL);
	if (responseType == 'json'){
		xml.responseType = 'json';
	}
	xml.addEventListener('load', success);
    xhr.addEventListener('error', fail);
    xhr.send(null);
};

ajaxPost = function(URL, data, callback, ajaxReturn, responseType){
	var xml = new XMLHttpRequest();
	function run (){
		callback(xml.response, xml);
		document.dispatchEvent(new CustomEvent('ajaxPosted'));	
	}
	
	function fail (){
		callback('failed',xml):
	}
	xml.open('post', URL);
	if (responseType == 'json'){
		xml.responseType = 'json';
	}
	xml.addEventListener('load', success);
    xhr.addEventListener('error', fail);
    xhr.send(null);
};
	
ajaxPut = function(URL, data, callback, ajaxReturn, responseType){
	var xml = new XMLHttpRequest();
	function run (){
		callback(xml.response, xml);
		document.dispatchEvent(new CustomEvent('ajaxPosted'));	
	}
	
	function fail (){
		callback('failed',xml):
	}
	xml.open('put', URL);
	if (responseType == 'json'){
		xml.responseType = 'json';
	}
	xml.addEventListener('load', success);
    xhr.addEventListener('error', fail);
    xhr.send(null);
};
ajaxPost = function(URL, data, callback, ajaxReturn, responseType){
	var xml = new XMLHttpRequest();
	function run (){
		callback(xml.response, xml);
		document.dispatchEvent(new CustomEvent('ajaxPosted'));	
	}
	
	function fail (){
		callback('failed',xml):
	}
	xml.open('post', URL);
	if (responseType == 'json'){
		xml.responseType = 'json';
	}
	xml.addEventListener('load', success);
    xhr.addEventListener('error', fail);
    xhr.send(null);
};

callback = function(response,xml){
	switch(xml.responseType){
		case '':
			
		case 'json':
			ajaxReturnedValue = xhr.response;
			break;
	}
};	












