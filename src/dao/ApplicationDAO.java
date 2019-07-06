package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.ApplicationDTO;
import utility.DBConnection;
public class ApplicationDAO {
public boolean valid(ApplicationDTO dto)
{
	Connection con=DBConnection.getConnection();
	PreparedStatement ps=null;
	try
	{
ps=con.prepareStatement("insert into pages(idnumber,idtype,name,telehome,teleoff,hand,fax,email,gender,dob,status,nationality,citizen,race) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");	
ps.setString(1, dto.getIdnumber());
ps.setString(2, dto.getIdtype());
ps.setString(3, dto.getName());
ps.setString(4, dto.getTelehome());
ps.setString(5, dto.getTeleoff());
ps.setString(6, dto.getHand());
ps.setString(7, dto.getFax());
ps.setString(8, dto.getEmail());
ps.setString(9, dto.getGender());
ps.setString(10, dto.getDob());
ps.setString(11, dto.getStatus());
ps.setString(12, dto.getNationality());
ps.setString(13, dto.getCitizen());
ps.setString(14, dto.getRace());
System.out.println("ps value="+ps);
int rs=ps.executeUpdate();
System.out.println("rs value="+rs);
if(rs>0)
{
	return true;
}
else
{
	return false;
}
	}
	catch (Exception e) {
	}
	return false;
}
public  ApplicationDTO showdetails(String id,String idtype)
{
	Connection con=DBConnection.getConnection();
	PreparedStatement ps=null;
	ApplicationDTO dto=new ApplicationDTO();
  try
	{
		ps=con.prepareStatement("select * from pages where idnumber=? and idtype=?");
		ps.setString(1, id);
		ps.setString(2, idtype);
		ResultSet rs=ps.executeQuery();
		 if(rs.next());
		{
			dto.setIdnumber(rs.getString("idnumber"));
			dto.setIdtype(rs.getString("idtype"));
            dto.setName(rs.getString("name"));
			dto.setTelehome(rs.getString("telehome"));
			dto.setTeleoff(rs.getString("teleoff"));
			dto.setHand(rs.getString("hand"));
			dto.setFax(rs.getString("fax"));
			dto.setEmail(rs.getString("email"));
			dto.setGender(rs.getString("gender"));
			dto.setDob(rs.getString("dob"));
			dto.setStatus(rs.getString("status"));
			dto.setNationality(rs.getString("nationality"));
			dto.setCitizen(rs.getString("citizen"));
			dto.setRace(rs.getString("race"));
			return dto;
		}		
			}
	
	catch (Exception e) {
		System.out.println(e);
	}
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return dto;
}

public boolean update(ApplicationDTO dto)
{
	Connection con=DBConnection.getConnection();
	PreparedStatement ps=null;
	try
	{
ps=con.prepareStatement("update pages set name=?,telehome=?,teleoff=?,hand=?,fax=?,email=?,gender=?,dob=?,status=?,nationality=?,citizen=?,race=?,relation=?,card=?,issue=?,expiry=? where idnumber=? and idtype=?");
ps.setString(1, dto.getName());
ps.setString(2, dto.getTelehome());
ps.setString(3, dto.getTeleoff());
ps.setString(4, dto.getHand());
ps.setString(5, dto.getFax());
ps.setString(6, dto.getEmail());
ps.setString(7, dto.getGender());
ps.setString(8, dto.getDob());
ps.setString(9, dto.getStatus());
ps.setString(10, dto.getNationality());
ps.setString(11, dto.getCitizen());
ps.setString(12, dto.getRace());
ps.setString(13, dto.getRelation());
ps.setString(14, dto.getCard());
ps.setString(15, dto.getIssue());
ps.setString(16, dto.getExpiry());
ps.setString(17, dto.getIdnumber());
ps.setString(18, dto.getIdtype());
System.out.println("ps value="+ps);
int rd=ps.executeUpdate();
if(rd>0)
{
	return true;
}
else
{
	return false;
}
	}
	catch (Exception e) {
		System.out.println("e value="+e);
	}
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
	}
}