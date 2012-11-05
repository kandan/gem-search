// JavaScript Document
var selected;

function selectvideo() {
	 		var selected = "";
            var selectbox = document.getElementById("selectbox");
            selected = selectbox.options[selectbox.selectedIndex].value;
			
			
			
			selected = selected + ".flv";
			
			alert(selected);
			
			embedSwf();
	
	
	}
	
	

function embedSwf() {
	
				
					var selectedVideoName = value;
					
	
	
					var flashVars = { 
					
						  FlashVars: '&amp;MM_ComponentVersion=1&amp;skinName=Clear_Skin_1&amp;streamName=FLV/cashPacks&amp;autoPlay=false&amp;autoRewind=false'
					};
					var params = {
					
						  swfversion: '8.0.0.0'
					}
					var attributes = {
						  id: 'main'
					};
					var expressInstall = false;
					swfobject.registerObject("container", '9.0.0.0', "FLV/cashPacks.flv");
					//swfobject.embedSWF( "../FLV/cashBack.flv", "container", "150px", "250px", "9.0.00", expressInstall, flashVars, params, attributes );
					//swffit.fit("main", 1000, 1100);
				}
				
				
			// ]]>
