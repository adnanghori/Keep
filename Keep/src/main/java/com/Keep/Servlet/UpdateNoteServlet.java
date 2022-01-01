package com.Keep.Servlet;

import java.io.IOException;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Keep.Entities.Notes;
import com.Keep.Helper.FactoryProvider;

/**
 * Servlet implementation class UpdateNoteServlet
 */
public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoteServlet() {
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
		try {
			int updateNoteId = Integer.parseInt(request.getParameter("updateNoteid").trim());
			String updateNoteTitle = request.getParameter("UpdateNoteTitle");
			String updateNoteMessage = request.getParameter("UpdateNoteMessage");
			Session session = FactoryProvider.getFactory().openSession();
			Transaction transaction  = session.beginTransaction();
			Notes note = session.get(Notes.class, updateNoteId);
			note.setNoteTitle(updateNoteTitle);
			note.setNoteMessage(updateNoteMessage);
			note.setDate(new Timestamp(new Date().getTime()));
			transaction.commit();
			response.sendRedirect("../Keep/html/profile.jsp");
		}catch(Exception exception) {
			exception.printStackTrace();
		}
	}

}
