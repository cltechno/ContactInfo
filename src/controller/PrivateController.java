package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ApplicationDAO;
import dto.ApplicationDTO;

/**
 * Servlet implementation class Private
 */
@WebServlet("/pty")
public class PrivateController extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrivateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("idnumber");
		System.out.println("id val="+id);


		String idtype=request.getParameter("idtype");
		System.out.println("type val="+idtype);

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
		String relation=request.getParameter("relation");
		String card=request.getParameter("card");
		String issue=request.getParameter("issue");
		String expiry=request.getParameter("expiry");
		ApplicationDAO dao=new ApplicationDAO();
		ApplicationDTO dto=new ApplicationDTO(id,idtype,name,tele1,tele2,hand,fax,email,gender,dob,status,nationality,citizen,race,relation,card,issue,expiry);
		boolean result=dao.update(dto);
		if(result)
		{
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);

		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
