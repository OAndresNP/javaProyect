$(document).ready(function(){
    $("#rol").change(function(){
        var rol = $('#rol').val()
        if( rol == "docente")
        {
            window.onload = function startrefresh(){ refreshDivs();}
            alert($('#rol').val());
        }
          else                      
        {
                                        
                                        
        }
        
       
    });
/*$("#ejemplo2").change(function(){
				alert($('select[id=ejemplo2]').val());
				$('#valor2').val($(this).val());
		 	});
			$(".ejemplo3").change(function(){
				alert($('select[class=ejemplo3]').val());
				$('.valor3').val($(this).val());
		 	});*/
});
            
function refreshDivs()
{
    // The XMLHttpRequest object

    var xmlHttp;
    try{
        xmlHttp=new XMLHttpRequest(); // Firefox, Opera 8.0+, Safari
    }   
    catch (e){
        try{
            xmlHttp=new ActiveXObject("Msxml2.XMLHTTP"); // Internet Explorer
        }
        catch (e){
            try{
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e){
                alert("Tu explorador no soporta AJAX.");
                return false;
            }
        }
    }



    // the ajax call
    xmlHttp.onreadystatechange=function(){
        if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
            alert("error");


        }
        xmlHttp.open("POST","frmfile.jsp",true);
        
        xmlHttp.send("respuesta=ok");

    }
}