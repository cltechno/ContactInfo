<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dto.ApplicationDTO" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function getiddetails()
{
	document.forms[0].action="/JavaApplication/view";
	document.forms[0].method="post";
	document.forms[0].submit();
	
	}

function update()
{
	document.forms[0].action="/JavaApplication/pty";
	document.forms[0].method="post";
	document.forms[0].submit();
	
	}

</script>
</head>
<body>
<form action="/JavaApplication" method="post">

<%
ApplicationDTO dto=null;
if(request.getAttribute("dto")!=null)
{
dto=(ApplicationDTO) request.getAttribute("dto");

%>
ID Number:<input type="text" name="idnumber" value="<%=dto.getIdnumber() %>"/>
ID Type:<select name="idtype" >
    <option  <%= (dto.getIdtype().equals("FIN")?"selected='selected'":"") %>>FIN</option>
    <option  <%= (dto.getIdtype().equals("XIN")?"selected='selected'":"") %>>XIN</option>
    <option  <%= (dto.getIdtype().equals("UIN")?"selected='selected'":"") %>>UIN</option>


</select><br><br>
Name:<input type="text" name="name"  value="<%=dto.getName()%>"/><br><br>


TeleHome:<input type="text" name="telehome" value="<%=dto.getTelehome()%>"/><br><br>
TeleOff:<input type="text" name="teleoff" value="<%=dto.getTeleoff()%>"/><br><br>
Hand:<input type="text" name="hand"  value="<%=dto.getHand()%>"/><br><br>

Fax:<input type="text" name="fax" value="<%=dto.getFax()%>"/><br><br>
Email:<input type="text" name="email"  value="<%=dto.getEmail()%>"/><br><br>

Gender:<select name="gender">
<option <%=dto.getGender().equals("Female")?"selected='selected'":"" %>>Female</option>
<option <%=dto.getGender().equals("Male")?"selected='selected'":"" %>>Male</option>
</select><br><br>
DOB:<input type="text" name="dob"  value="<%=dto.getDob() %>"><br><br>
status:<select name="status">
<option <%=dto.getStatus().equals("marries")?"selected='selected'":""%>>marries</option>
<option <%=dto.getStatus().equals("un-marry")?"selected='selected'":""%>>un-marry</option>
<option <%=dto.getStatus().equals("divorse")?"selected='selected'":""%>>Divorse</option>
</select><br><br>
National:<select name="nationality">
<option <%=dto.getNationality().equals("citizen")?"selected='selected'":""%>>citizen</option>
<option <%=dto.getNationality().equals("non-citizen")?"selected='selected'":""%>>non-citizen</option>
<option <%=dto.getNationality().equals("india")?"selected='selected'":"" %>>india</option>
<option <%=dto.getNationality().equals("malasiya")?"selected='selected'":""%>>malasiya</option>
</select><br><br>
Citizenship:<select name="citizen">
<option <%=dto.getCitizen().equals("citizen")?"selected='selected'":""%>>citizen</option>
<option <%=dto.getCitizen().equals("non-citizen")?"selected='selected'":""%>>non-citizen</option>
<option <%=dto.getCitizen().equals("india")?"selected='selected'":""%>>india</option>
<option <%=dto.getCitizen().equals("malasiya")?"selected='selected'":""%>>malasiya</option>
</select><br><br>
Race:<select name="race">
<option <%=dto.getRace().equals("citizenuuu")?"selected='selected'":""%>>citizenuuu</option>
<option <%=dto.getRace().equals("hai")?"selected='selected'":"" %>>hai</option>
<option <%=dto.getRace().equals("india")?"selected='selected'":""%>>india</option>
<option <%=dto.getRace().equals("permanant")?"selected='selected'":"" %>>permanant</option>
</select><br><br>
Relation:<select name="relation">
<option value="hus/wife">hus/wife</option>
<option value="son/doughter">son/doughter</option>


</select><br><br>
Card:<select name="card">
<option value="number">NUMBER</option>
<option value="mobile">mobile</option>
</select><br><br>
Issue:<select name="issue" >
<option value="start">start</option>
<option value="end">end</option> 
</select><br><br>
Expiry:<select name="expiry">

<option value="end">end</option>
<option value="finish">finish</option>
</select><br><br>

<div>
<input type="submit" value="save" onclick="update();" class="btn" />
</div>



<%
}
else {
	%>

<input type="text" name="idnumber1" />
<select name="idtype1">
<option>Select</option>
<option value="FIN">FIN</option>
<option value="XIN">XIN</option>
<option value="UIN">UIN</option>
</select>
<input type="Submit" value="Retrieve Personal Data" onclick="getiddetails();"/>
	
<%

}
%>
</form>
</body>
</html>