<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dto.ApplicationDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validate()
{
if(document.form.status.selectedIndex=="")
	{
	alert("Please select status!");
	return false;
	}
	if(document.form.nationality.selectedIndex=="")
		{
		alert("Please select nationality!");
		return false;
		}
		if(document.form.citizen.selectedIndex=="")
			{
			alert("Please select citizen!");
			return false;
			}
			if(document.form.race.selectedIndex=="")

{
alert ( "Please select race!");
return false;
}
}

</script>

</head>
<style>

.btn {
  width: 98.6%;
  border: none;
  margin-top: 5px;
  color: white;
  background-color: #3b5998;
  border-radius: 5px;
  padding: 12px;
}


</style>
<body>
<form name="form" action="/JavaApplication/contact" method="post" onsubmit="return validate()">
<%
ApplicationDTO dto=null;
if(request.getAttribute("dto")!=null)
{
dto=(ApplicationDTO) request.getAttribute("dto");	
%>

ID Number:<input type="text" name="idnumber" readonly="1" value="<%=dto.getIdnumber() %>"/>
<select name="idtype" id="idtype" readonly="1">
 <option required class="textinput">Select</option>
    <option  <%= (dto.getIdtype().equals("FIN")?"selected='selected'":"") %>>FIN</option>
    <option  <%= (dto.getIdtype().equals("XIN")?"selected='selected'":"") %>>XIN</option>
    <option  <%= (dto.getIdtype().equals("UIN")?"selected='selected'":"") %>>UIN</option>
</select><br><br>
Name:<input type="text" name="name" readonly="true" value="<%=dto.getName()%>"/><br><br>
TeleHome:<input type="text" name="telehome" readonly="1" value="<%=dto.getTelehome()%>"/><br><br>
TeleOff:<input type="text" name="teleoff" readonly="1" value="<%=dto.getTeleoff()%>"/><br><br>
Hand:<input type="text" name="hand" readonly="1" value="<%=dto.getHand()%>"/><br><br>
Fax:<input type="text" name="fax" readonly="true" value="<%=dto.getFax()%>"/><br><br>
Email:<input type="text" name="email" readonly="true" value="<%=dto.getEmail()%>"/><br><br>
Gender:<select name="gender" id="gender" required>
<option class="textinput">Select one</option> 
<option value="Female">Female</option>
<option value="Male">Male</option>
</select><br><br>
DOB:<input type="text" name="dob" class="textinput" required /><br><br>
status:<select name="status" id="status" required>
<option class="textinput">Select</option>
<option value="marries">marries</option>
<option value="un-marry">un-marry</option>
<option value="divorse">divorse</option>
</select><Br><br>
National:<select name="nationality" id="nationality" required>
<option class="textinput">Select</option>
<option value="citizen">citizen</option>
<option value="non-citizen">non-citizen</option>
<option value="india">india</option>
<option value="malasiya">malasiya</option>
</select><br><br>
Citizenship:<select name="citizen" id="citizen" required>
<option class="textinput">Select</option>
<option value="gfgfg">gfgfg</option>
<option value="ntizen">ntizen</option>
<option value="india">india</option>
<option value="phghermanant">malasiya</option>
</select><br><br>
Race:<select name="race" id="citizen" required>
<option class="textinput">Select</option>
<option value="citizenuuu">citizenuuu</option>
<option value="non-cyygyitizen">non-cyygyitizen</option>
<option value="india">india</option>
<option value="permanant">malasiya</option>
</select><br><br>
<div>
<input type="submit" value="next" class="btn"/>
</div>
<%
}
%>
</form>
</body>
</html>