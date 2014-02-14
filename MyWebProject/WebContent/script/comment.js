

function getXMLHttpRequest() 
{
  var xmlHttpReq = false;

  if (window.XMLHttpRequest) {

    xmlHttpReq = new XMLHttpRequest();

  } else if (window.ActiveXObject) 
  
  {
    try {
    
      xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
  
    } 
    
    catch (exp1) {
    
      try {
   
    
        xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
      } 
      
      catch (exp2) {
      
        xmlHttpReq = false;
      }
    }
  }
  return xmlHttpReq;
}





function postComment(str) 
{

 var x=document.getElementById('tid').innerHTML;
 
 window.alert(str);
 
 /* var xmlHttpRequest = getXMLHttpRequest();

  xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);

  xmlHttpRequest.open("POST", "articleComments?val="+str, true);

  xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

  xmlHttpRequest.send(null);*/

}


function getReadyStateHandler(xmlHttpRequest)

 {
 
  return function() 
  {
     if (xmlHttpRequest.readyState == 4) 
     {
      if (xmlHttpRequest.status == 200)
      
       {
      
         document.getElementById("dispcity").innerHTML=xmlHttpRequest.responseText;
      
      } 
      
      else 
      {
        alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
      }
    
    }
    
  };

}