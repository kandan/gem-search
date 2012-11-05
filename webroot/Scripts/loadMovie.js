	function loadMovie(){
		
	var w = document.getElementById('container1').width;
	var selected = "";
    var selectbox = document.getElementById("selectbox");
        selected = selectbox.options[selectbox.selectedIndex].value;
	var flashvars = { file:selected, autostart:'true', image:"images/screen.jpg" };
	var params = { allowfullscreen:'true', allowscriptaccess:'always' };
	var attributes = { id:"container1", name:"container1" };
	
	swfobject.embedSWF('./FLV/player.swf','container1', '6600','397','9.0.115','false', flashvars, params, attributes);
	}
	
	function loadMovie2(){
	var selected = "";
    var selectbox = document.getElementById("selectbox2");
        selected = selectbox.options[selectbox.selectedIndex].value;
	var flashvars = { file:selected, autostart:'true', image:"images/screen.jpg" };
	var params = { allowfullscreen:'true', allowscriptaccess:'always' };
	var attributes = { id:"container1", name:"container1" };
	
	swfobject.embedSWF('./FLV/player.swf','container1','660','397','9.0.115','false', flashvars, params, attributes);
	}
	
	function loadMovie3(){
	var selected = "";
    var selectbox = document.getElementById("selectbox3");
        selected = selectbox.options[selectbox.selectedIndex].value;
	var flashvars = { file:selected, autostart:'true', image:"images/screen.jpg" };
	var params = { allowfullscreen:'true', allowscriptaccess:'always' };
	var attributes = { id:"container1", name:"container1" };
	
	swfobject.embedSWF('./FLV/player.swf','container1','660','397','9.0.115','false', flashvars, params, attributes);
	}