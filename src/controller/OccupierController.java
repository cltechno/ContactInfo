package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ApplicationDAO;
import dto.ApplicationDTO;


@WebServlet("/occupier")
public class OccupierController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OccupierController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String id=request.getParameter("idnumber");
        String idtype=request.getParameter("idtype");
		String name=request.getParameter("name");
		String tele1=request.getParameter("telehome");
		String tele2=request.getParameter("teleoff");
		String hand=request.getParameter("hand");
		String fax=request.getParameter("fax");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String status=request.getParameter("status");
        String nationality=request.getParameter("nationality");
		String citizen=request.getParameter("citizen");
        String race=request.getParameter("race");
		ApplicationDAO dao=new ApplicationDAO();
		ApplicationDTO dto=new ApplicationDTO(id,idtype,name,tele1,tele2,hand,fax,email,gender,dob,status,nationality,citizen,race);
		boolean result=dao.valid(dto);
		if(result)
		{
		getServletContext().getRequestDispatcher("/view.jsp").forward(request, response);
		}
		else
		{
			getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
