<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="dto.ApplicationDTO" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<style>

.textInput {
  border: none;
  height: 28px;
  margin: 2px;
  border: 1px solid #6B7363;
  font-size: 1.2em;
  padding: 5px;
  width: 95%;
}
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
<form name="form" action="/JavaApplication/occupier" method="post">
<%
ApplicationDTO dto=null;
if(request.getAttribute("dto")!=null)
{
dto=(ApplicationDTO) request.getAttribute("dto");	


%>

ID Number:<input type="text" name="idnumber" readonly="1" value="<%=dto.getIdnumber() %>"/>
ID Type:<select name="idtype" readonly="true" >
    <option  <%= (dto.getIdtype().equals("FIN")?"selected='selected'":"") %>>FIN</option>
    <option  <%= (dto.getIdtype().equals("XIN")?"selected='selected'":"") %>>XIN</option>
    <option  <%= (dto.getIdtype().equals("UIN")?"selected='selected'":"") %>>UIN</option>


</select><br><br>
Name:<input type="text" name="name" readonly="true"  value="<%=dto.getName()%>"/><br><br>


TeleHome:<input type="text" name="telehome" readonly="1" value="<%=dto.getTelehome()%>"/><br><br>
TeleOff:<input type="text" name="teleoff" readonly="1" value="<%=dto.getTeleoff()%>"/><br><br>
Hand:<input type="text" name="hand" readonly="1" value="<%=dto.getHand()%>"/><br><br>

Fax:<input type="text" name="fax" readonly="1" value="<%=dto.getFax()%>"/><br><br>
Email:<input type="text" name="email" readonly="1" value="<%=dto.getEmail()%>"/><br><br>

Gender:<select name="gender" readonly="1">
<option <%=dto.getGender().equals("Female")?"selected='selected'":"" %>>Female</option>
<option <%=dto.getGender().equals("Male")?"selected='selected'":"" %>>Male</option>
</select><br><br>
DOB:<input type="text" name="dob" readonly="1" value="<%=dto.getDob() %>"><br><br>
status:<select name="status" readonly="1">
<option <%=dto.getStatus().equals("marries")?"selected='selected'":""%>>marries</option>
<option <%=dto.getStatus().equals("un-marry")?"selected='selected'":""%>>un-marry</option>
<option <%=dto.getStatus().equals("divorse")?"selected='selected'":""%>>Divorse</option>
</select><br><br>
National:<select name="nationality" readonly="1">
<option <%=dto.getNationality().equals("citizen")?"selected='selected'":""%>>citizen</option>
<option <%=dto.getNationality().equals("non-citizen")?"selected='selected'":""%>>non-citizen</option>
<option <%=dto.getNationality().equals("india")?"selected='selected'":"" %>>india</option>
<option <%=dto.getNationality().equals("malasiya")?"selected='selected'":""%>>malasiya</option>
</select><br><br>
Citizenship:<select name="citizen" readonly="1">
<option <%=dto.getCitizen().equals("citizen")?"selected='selected'":""%>>citizen</option>
<option <%=dto.getCitizen().equals("non-citizen")?"selected='selected'":""%>>non-citizen</option>
<option <%=dto.getCitizen().equals("india")?"selected='selected'":""%>>india</option>
<option <%=dto.getCitizen().equals("malasiya")?"selected='selected'":""%>>malasiya</option>
</select><br><br>
Race:<select name="race" readonly="1">
<option <%=dto.getRace().equals("citizenuuu")?"selected='selected'":""%>>citizenuuu</option>
<option <%=dto.getRace().equals("hai")?"selected='selected'":"" %>>hai</option>
<option <%=dto.getRace().equals("india")?"selected='selected'":""%>>india</option>
<option <%=dto.getRace().equals("permanant")?"selected='selected'":"" %>>permanant</option>
</select><br><br>

<div>
<input type="submit" value="save" class="btn" />
</div>
<%
}
%>


</form>

</body>
</html>