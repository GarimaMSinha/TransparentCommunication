<%@page import="com.lv2code.jsp.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PoC: SpeechToSpeech</title>
</head>
<body>
<br/>

<%
String obj1frm5 = (session.getAttribute("sessSrclang")).toString();
String obj4frm5 = (session.getAttribute("sessTarlang")).toString();

//out.println(obj1frm5);
//out.println(obj4frm5);

 %>




<center><label><u><b><big>PoC: SPEECH TO SPEECH TRANSLATION</big></b></u></label></center>
<br/>
<br/>


<center><label ><b> Step1: Select source and target language.</b></label></center>

<br/>

<%-- if you want to select value from drop-downlist here is jsp code. --%>
<form action="TranslateAndSynthesizeTesting12.jsp" style="margin-left: 35em">
  <select name="item1">
  	<option >Source Lang</option>
    <option >English</option>
    <option >French</option>
    <option >Spanish</option>
    
    
  </select>

<input type="hidden">

  <select name="item2">
  	<option >Target Lang</option>
    <option >English</option>
    <option >French</option>
    <option >Spanish</option>
  </select>


<%
//String colour = request.getParameter("item1");
//out.println(colour);


%>



    <%-- To display selected value from dropdown list. --%>
     <%
                	//String obj1frm12=request.getParameter("item1");
//               	    out.println(obj1frm12);
                   session.setAttribute("sessSrclang", obj1frm5);
                
                    
                    //String obj2frm12=request.getParameter("item2");
                   session.setAttribute("sessTarlang", obj4frm5);
//                    out.println(obj2frm12);
                    
                    // out.println(session.getAttribute("sessSrclang"));
                    //out.println(session.getAttribute("sessTarlang"));
                    
                     %>




<input type="submit" value="Confirm" >




</form> 

<label style="margin-left: 35em"><b>  </b></label>

<%

if(session.getAttribute("sessSrclang") != null)
		
out.println(session.getAttribute( "sessSrclang"));
%>
<label style="margin-left: 3.5em"><b>  </b></label>

<%
if(session.getAttribute("sessSrclang") != null)		
out.println(session.getAttribute("sessTarlang"));
%>
<br/>
<br/>

<label style="margin-left: 3em"><b> Step2: Select a wav audio file - to convert into text </b></label>
<label style="margin-left: 18em"><b> OR </b></label>
<label style="margin-left: 19em"><u><b> Speech to Speech</b></u></label>

<br/>
<br/>
<input type="button" value="Browse & Convert" style="margin-left: 5em" onclick="window.location='TranslateAndSynthesizeTesting5.jsp'" >




<%
	String obj3frm5 = SpeechToSpeechMain.filenamewithpath1();
%>

<%
	out.println(obj3frm5);
session.setAttribute("sessSampleFile",obj3frm5);
%>
<br/>
<br/>
<label style="margin-left: 5em"></label>
<%
	out.println((obj1frm5)+" >> ");
out.println(SpeechToSpeechMain.SpeechToTextFinal(obj3frm5, obj1frm5));

String obj5frm5 = SpeechToSpeechMain.SpeechToTextFinal(obj3frm5, obj1frm5);
session.setAttribute("sessSampleText", obj5frm5);
%>
<br/>
<br/>
<br/>


<% 
//out.println(session.getAttribute("sessSrclang"));
//out.println(session.getAttribute("sessTarlang"));
%>

<label style="margin-left: 3em"><b>Step3: Click on Translate button - to translate text</b></label>
<br/>
<br/>


<input type="button" value="Translate" style="margin-left: 5em" onclick="window.location='TextToText.jsp'" >
<br/>
<br/>

</body>
</html>