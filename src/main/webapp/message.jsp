<%
  String message=(String)session.getAttribute("message");
  if(message!=null){
    out.println(message);
    session.removeAttribute("message");
  }

%>