<script src="lib/ajax.js">
</script>

<script>

	var form, callback, returnedValue;
	
		window.addEventListener('load', function(e){
		form= document.getElementById('form');
		callback = document.getElementByID('callback');
		form.addEventListener('submit',prepareFile);
	}
	
	function prepfile(evt){
		evt.prepareDefault();
		var data = new FormData(form)
		ajaxPost(data,callback);
	});
</script>	
	
<form id="form">
	<input accesskey="1" type="file" />
	<input accesskey="2" type="submit"/>
</form>
</div>
</div>	