package com.Keep.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Keep.Entities.Notes;
import com.Keep.Entities.User;
import com.Keep.Helper.FactoryProvider;

/**
 * Servlet implementation class NoteServlet
 */
public class NoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		HttpSession httpsession = request.getSession();
		String title = request.getParameter("NoteTitle");
		String message = request.getParameter("NoteMessage");
		 User user= (User)httpsession.getAttribute("current");
		Notes note = new Notes(title,message,user.getId());
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(note);
		transaction.commit();
		response.sendRedirect("../Keep/html/profile.jsp");
	}

}
