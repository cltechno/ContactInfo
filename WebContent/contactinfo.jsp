<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validate()
{
if(document.form.idtype.selectedIndex=="")
{
alert ( "Please select type!");
return false;
}
}
</script>

</head>
<style>



#wrapper {
  width: 30%;
  margin: 50px auto;
  padding: 50px;
  background: #D7FBFF;
}
form {
  margin: 30px auto;
}
.textInput {
  border: none;
  height: 28px;
  margin: 2px;
  border: 1px solid #6B7363;
  font-size: 1.2em;
  padding: 5px;
  width: 95%;
}
.textInput:focus {
  outline: none;
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
<form name="form" action="/JavaApplication/application" method="post" onsubmit="return validate()">
ID Number:<input type="text" name="idnumber" disable="1" class="textinput" required/>
<select name="idtype" id="idtype" required disable="true">
       
<option class="textinput" required >Select</option>
<option value="FIN">FIN</option>
<option value="XIN">XIN</option>
<option value="UIN">UIN</option>
</select>

<div>
Name:<input type="text" name="name" pattern ="[A-Za-z]{8}" disable="true" class="textinput" required/><br><br>
</div>

<div>
TeleHome:<input type="text" name="telehome"  class="textinput" required/><br><br>
</div>
<div>
TeleOff:<input type="text" name="teleoff" pattern="\d{2}-\d{3}-\d{6}$" class="textinput" required/><br><br>
</div>
<div>
Phone Number(format: xxxx-xxx-xxxx):<input type="tel" name="hand" pattern="^\d{4}-\d{3}-\d{4}$" class="textinput" required/><br><br>
</div>
<div>
Fax:<input type="text" name="fax" class="textinput" required/><br><br>
</div>
<div>
Email:<input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="textinput" required/><br><br>
</div>
<div>
<input type="submit" value="next" class="btn" />
</div>
</form>


</body>
</html>