package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ApplicationDTO;


@WebServlet("/application")
public class ApplicationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ApplicationController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String id=request.getParameter("idnumber");
String idtype=request.getParameter("idtype");
String name=request.getParameter("name");
String tele1=request.getParameter("telehome");
String tele2=request.getParameter("teleoff");
String hand=request.getParameter("hand");
String fax=request.getParameter("fax");
String email=request.getParameter("email");

ApplicationDTO dto=new ApplicationDTO(id,idtype,name,tele1,tele2,hand,fax,email);
request.setAttribute("dto", dto);
getServletContext().getRequestDispatcher("/occupierinfo.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
