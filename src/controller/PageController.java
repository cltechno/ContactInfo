package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ApplicationDAO;
import dto.PagesDTO;

@WebServlet("/page")
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public PageController() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String blk=request.getParameter("house");
String unit=request.getParameter("unit");
String postal=request.getParameter("postal");
String street=request.getParameter("street");
String building=request.getParameter("building");
String manner=request.getParameter("manner");
String lot=request.getParameter("lot");
String purchase=request.getParameter("purchase");
String property=request.getParameter("property");
String date1=request.getParameter("date1");
String date2=request.getParameter("date2");
String types=request.getParameter("types");
PagesDTO dto=new PagesDTO(blk,unit,postal,street,building,manner,lot,purchase,property,date1,date2,types);
ApplicationDAO dao=new ApplicationDAO();
//boolean result=dao.page(dto);


	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
