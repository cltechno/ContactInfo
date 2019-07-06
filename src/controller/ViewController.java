package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ApplicationDAO;
import dto.ApplicationDTO;

@WebServlet("/view")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ViewController() {
        super();
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String id=request.getParameter("idnumber1");
String idtype=request.getParameter("idtype1");
ApplicationDAO dao=new ApplicationDAO();
ApplicationDTO dto=dao.showdetails(id,idtype);
request.setAttribute("dto", dto);
try 
{
	getServletContext().getRequestDispatcher("/view.jsp").forward(request, response);

}
catch (Exception u) {
System.out.println(u);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
