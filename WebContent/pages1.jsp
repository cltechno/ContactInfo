<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

	function validateDOB()
	{

	       var dob = document.forms["form"]["date1"].value;
	       var pattern =/^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/;
	       var unit=document.form.unit.value;  

	     

	  if (dob == null || dob == "" || !pattern.test(dob)) 
	    {
   alert("PLEASE enter Date");
   return false;
	    }
	  if (unit==null || unit=="")
	  {  
	  	unit.text("Please provide us with the unit no. of your private property.");  

	    return false;  
	  }


	  
	  if(document.form.manner.selectedIndex=="")
{
alert("Please select manner!");
return false;
	}
	


	}

</script>
</head>
<body>
<form action ="/JavaApplication/page" method="post" name="form" onsubmit="return validateDOB()">
House/BLK NO:<input type="text" name="house" required/><br />&nbsp;<br />
Unit No:<input type="text" name="unit"/><br />&nbsp;<br />
Postal code:<input type="text" name="postal" pattern ="\d{6}$" required/><br />&nbsp;<br />
Street:<input type="text" name="street" required/><br />&nbsp;<br />
Building/Estate:<input type="text" name="building" required /><br />&nbsp;<br />
Manner of Acquistion:<select name="manner" required>
<option value="select">Select</option>
<option value="Inheritance">Inheritance</option>

<option value="Purchase">Purchase</option>
<option value="Gift">Gift</option>
<option value="Others">Others</option>
 </select><br />&nbsp;<br />
Lot/Mukim No:<input type="text" name="lot" required/><br />&nbsp;<br />
Purchase Price:<input type="text" name="price" required/><br />&nbsp;<br />
Type of Property:<select name="property" required>
<option value="Bungalow">Bungalow</option>
<option value="Semi-Detached">Semi-Detached</option>
<option value=" Terrace"> Terrace</option>
<option value="Condominium">Condominium</option>
<option value="Others">Others</option>
</select><br />&nbsp;<br />
Date Option exercised:<input type="date" name="date1" required/><br />&nbsp;<br />
Date of sales&purchase agreement:<input type="date" name="date2" required/><br />&nbsp;<br />
Title of property<input type="radio" name="types" value="freehold" required><br>
<input type="radio" name="types" value="leasehold"><br />&nbsp;<br />
<input type="submit" value="GO" />
</form>
</body>
</html>